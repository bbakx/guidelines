#!/usr/bin/env bash
# Timestamp: 20261001_125054
#
# conventions/rewrite.sh
#
# Runs the OpenRewrite recipes that enforce the Java Coding Guidelines,
# as defined in conventions/rewrite.yml. All OpenRewrite parameters live
# here, so neither Jenkins nor a developer has to type them, and pom.xml
# stays untouched.
#
#   bash conventions/rewrite.sh          # dryRun: report only, writes target/rewrite/rewrite.patch
#   bash conventions/rewrite.sh check    # dryRun, exits nonzero if anything would change (Jenkins)
#   bash conventions/rewrite.sh apply    # run: rewrites the sources in place
#   bash conventions/rewrite.sh latest   # show the latest plugin release on Maven Central
#
set -euo pipefail

# ---------------------------------------------------------------------------
# Pinned plugin version. Bump deliberately; never let it float.
# Use 'bash conventions/rewrite.sh latest' to see what Maven Central offers,
# then set the version here and commit.
# ---------------------------------------------------------------------------
REWRITE_PLUGIN_VERSION="6.46.1"

# Active configuration. Recipes and styles are defined in conventions/rewrite.yml.
ACTIVE_RECIPES="org.holodeckb2b.R24Indentation"
ACTIVE_STYLES="org.holodeckb2b.GuidelineStyle"

REWRITE_GAV="org.openrewrite.maven:rewrite-maven-plugin:${REWRITE_PLUGIN_VERSION}"
METADATA_URL="https://repo.maven.apache.org/maven2/org/openrewrite/maven/rewrite-maven-plugin/maven-metadata.xml"

MVN="mvn -B -ntp"

CONV_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "${CONV_DIR}")"

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
    echo "usage: $0 [dryRun|check|apply|latest]" >&2
    exit 2
    ;;
esac

if [[ "${REWRITE_PLUGIN_VERSION}" == "6.46.1" ]]; then
  echo "ERROR: REWRITE_PLUGIN_VERSION is not set in ${CONV_DIR}/rewrite.sh" >&2
  echo "       Run 'bash conventions/rewrite.sh latest', set the version, commit." >&2
  exit 1
fi

if [[ ! -f "${CONV_DIR}/rewrite.yml" ]]; then
  echo "ERROR: missing ${CONV_DIR}/rewrite.yml" >&2
  exit 1
fi

cd "${REPO_DIR}"

# 'apply' only on a clean working tree, so the resulting diff contains
# nothing but the recipe's changes and can be committed as one unit.
if [[ "${MODE}" == "apply" ]] && ! git diff --quiet HEAD; then
  echo "ERROR: working tree has uncommitted changes; commit or stash first." >&2
  exit 1
fi

# checkstyleDetectionEnabled=false: prevents OpenRewrite from deriving a
# competing style from a Checkstyle config it may find in the POM.
$MVN "${REWRITE_GAV}:${GOAL}" \
  -pl '!:holodeckb2b-distribution' \
  -Drewrite.configLocation="${CONV_DIR}/rewrite.yml" \
  -Drewrite.activeRecipes="${ACTIVE_RECIPES}" \
  -Drewrite.activeStyles="${ACTIVE_STYLES}" \
  -Drewrite.checkstyleDetectionEnabled=false \
  -DfailOnDryRunResults="${FAIL_ON_CHANGES}"
