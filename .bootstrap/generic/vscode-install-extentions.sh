#!/usr/bin/env bash

# -----------------------------------------------------------------------------
# Install VS Code Extensions (Assumes code is on the path)
# -----------------------------------------------------------------------------
while read F ; do
  echo "=====> Installing ${F}"
  code --install-extension $F
done < ~/.bootstrap/generic/vscode-extensions.txt

