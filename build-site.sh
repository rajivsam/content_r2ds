#!/usr/bin/env bash
set -euo pipefail

SITE_SOURCE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SITE_TARGET="/home/rajiv/programming/r2ds"
RUBY_HOME="${HOME}/.rubies/ruby-3.2.7"
RUBY_BIN="${RUBY_HOME}/bin"
GEM_HOME="${HOME}/.local/share/gem/ruby/3.2.0"

if [ ! -x "${RUBY_BIN}/ruby" ]; then
  echo "Error: Ruby 3.2.7 is not installed at ${RUBY_BIN}."
  echo "Install it first, or update RUBY_HOME in this script."
  exit 1
fi

export PATH="${RUBY_BIN}:${PATH}"
export GEM_HOME
export GEM_PATH="${GEM_HOME}"

mkdir -p "${GEM_HOME}"

cd "${SITE_SOURCE}"
rm -rf "${SITE_SOURCE}/vendor/bundle" "${SITE_SOURCE}/.bundle"

bundle config set --local path "vendor/bundle"
bundle install
bundle exec jekyll build --destination "${SITE_TARGET}"

echo "Website built successfully at: ${SITE_TARGET}"
