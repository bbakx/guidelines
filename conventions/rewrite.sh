#!/usr/bin/env bash
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
#
set -euo pipefail

# ---------------------------------------------------------------------------
# Pinned plugin version and active configuration. Bump deliberately.
# Recipes and styles themselves are defined in conventions/rewrite.yml.
# ---------------------------------------------------------------------------
REWRITE_GAV="org.openrewrite.maven:rewrite-maven-plugin:6.49.0"
ACTIVE_RECIPES="org.holodeckb2b.R24Indentation"
ACTIVE_STYLES="org.holodeckb2b.GuidelineStyle"

MVN="mvn -B -ntp"

CONV_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "${CONV_DIR}")"

MODE="${1:-dryRun}"
case "${MODE}" in
  dryRun) GOAL="dryRun"; FAIL_ON_CHANGES="false" ;;
  check)  GOAL="dryRun"; FAIL_ON_CHANGES="true"  ;;
  apply)  GOAL="run";    FAIL_ON_CHANGES="false" ;;
  *)
    echo "usage: $0 [dryRun|check|apply]" >&2
    exit 2
    ;;
esac

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
