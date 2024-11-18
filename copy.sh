#!/bin/bash

set -ex

grep -v "^#" images.txt | grep -v "^$" | while IFS='|' read -r src dest; do
  echo "Copying $src to $dest"
  skopeo copy --all "docker://$src" "docker://$dest"
  echo "Copied $src to $dest"
done