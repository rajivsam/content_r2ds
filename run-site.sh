#!/usr/bin/env bash
set -euo pipefail

SITE_TARGET="/home/rajiv/programming/r2ds"
PORT="${PORT:-8000}"

if [ ! -d "${SITE_TARGET}" ]; then
  echo "Error: output directory missing: ${SITE_TARGET}"
  exit 1
fi

ruby -run -ehttpd "${SITE_TARGET}" -p "${PORT}"
