#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "${1}")"
diff --strip-trailing-cr "${1}" <("${2}")
