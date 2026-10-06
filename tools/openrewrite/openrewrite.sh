#!/usr/bin/env bash
#
# tools/openrewrite/openrewrite.sh
#
# Runs the OpenRewrite recipes that enforce the Java Coding Guidelines,
# as defined in openrewrite.yml next to this script, against a Maven
# project. All OpenRewrite parameters live here, so neither Jenkins nor a
# developer has to type them, and the project's pom.xml stays untouched.
#
# Usage:
#   bash <guidelines>/tools/openrewrite/openrewrite.sh [mode] [project-dir]
#
#   mode         dryRun (default)  report only, writes <project-dir>/target/rewrite/rewrite.patch
#                check             dryRun, exits nonzero if anything would change (Jenkins)
#                apply             run: rewrites the project's sources in place
#                latest            show the latest plugin release on Maven Central
#   project-dir  root of the Maven project (contains pom.xml); default: current directory
#
# Optional environment variable:
#   OPENREWRITE_PROJECTS  passed to 'mvn -pl' to select or exclude modules,
#                         e.g. OPENREWRITE_PROJECTS='!:holodeckb2b-distribution'
#
set -euo pipefail

# ---------------------------------------------------------------------------
# Pinned plugin version. Bump deliberately; never let it float.
# Use 'openrewrite.sh latest' to see what Maven Central offers,
# then set the version here and commit.
# ---------------------------------------------------------------------------
REWRITE_PLUGIN_VERSION="6.46.1"

# Active configuration. Recipes and styles are defined in openrewrite.yml.
ACTIVE_RECIPES="org.holodeckb2b.R24Indentation"
ACTIVE_STYLES="org.holodeckb2b.GuidelineStyle"

REWRITE_GAV="org.openrewrite.maven:rewrite-maven-plugin:${REWRITE_PLUGIN_VERSION}"
METADATA_URL="https://repo.maven.apache.org/maven2/org/openrewrite/maven/rewrite-maven-plugin/maven-metadata.xml"

MVN="mvn -B -ntp"

# Location of this script, wherever the guidelines repository is checked out.
TOOL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_FILE="${TOOL_DIR}/openrewrite.yml"

MODE="${1:-dryRun}"
case "${MODE}" in
  dryRun) GOAL="dryRun"; FAIL_ON_CHANGES="false" ;;
  check)  GOAL="dryRun"; FAIL_ON_CHANGES="true"  ;;
  apply)  GOAL="run";    FAIL_ON_CHANGES="false" ;;
  latest)
    curl -fsS "${METADATA_URL}" | grep -oE '<release>[^<]+</release>' \
      | sed -E 's#</?release>##g'
    exit 0
    ;;
  *)
    echo "usage: $0 [dryRun|check|apply|latest] [project-dir]" >&2
    exit 2
    ;;
esac

if [[ ! "${REWRITE_PLUGIN_VERSION}" =~ ^[0-9]+(\.[0-9]+)+$ ]]; then
  echo "ERROR: REWRITE_PLUGIN_VERSION ('${REWRITE_PLUGIN_VERSION}') is not a valid version in ${TOOL_DIR}/openrewrite.sh" >&2
  echo "       Run 'openrewrite.sh latest', set the version, commit." >&2
  exit 1
fi

if [[ ! -f "${CONFIG_FILE}" ]]; then
  echo "ERROR: missing ${CONFIG_FILE}" >&2
  exit 1
fi

PROJECT_DIR="$(cd "${2:-.}" && pwd)"
if [[ ! -f "${PROJECT_DIR}/pom.xml" ]]; then
  echo "ERROR: no pom.xml in ${PROJECT_DIR}; pass the Maven project root as second argument." >&2
  exit 1
fi

cd "${PROJECT_DIR}"

# 'apply' only on a clean working tree, so the resulting diff contains
# nothing but the recipe's changes and can be committed as one unit.
if [[ "${MODE}" == "apply" ]] && ! git diff --quiet HEAD; then
  echo "ERROR: ${PROJECT_DIR} has uncommitted changes; commit or stash first." >&2
  exit 1
fi

PL_ARGS=()
if [[ -n "${OPENREWRITE_PROJECTS:-}" ]]; then
  PL_ARGS=(-pl "${OPENREWRITE_PROJECTS}")
fi

# checkstyleDetectionEnabled=false: prevents OpenRewrite from deriving a
# competing style from a Checkstyle config it may find in the POM.
$MVN "${REWRITE_GAV}:${GOAL}" \
  ${PL_ARGS[@]+"${PL_ARGS[@]}"} \
  -Drewrite.configLocation="${CONFIG_FILE}" \
  -Drewrite.activeRecipes="${ACTIVE_RECIPES}" \
  -Drewrite.activeStyles="${ACTIVE_STYLES}" \
  -Drewrite.checkstyleDetectionEnabled=false \
  -DfailOnDryRunResults="${FAIL_ON_CHANGES}"
