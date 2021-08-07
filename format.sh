#!/bin/bash
set -o xtrace
set -o errexit
set -o nounset

for i in *.hlx; do
  jq --sort-keys . < "${i}" > tmp && mv tmp "${i}"
done
