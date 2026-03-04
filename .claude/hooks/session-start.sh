#!/bin/bash
set -euo pipefail

# Only run in remote (Claude Code on the web) environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# This is a static HTML/CSS/JS GitHub Pages site with no build dependencies.
# Nothing to install — environment is ready immediately.
echo "VendorShield static site: no dependencies to install. Environment ready."
