#!/bin/bash
# Installs Refim on macOS - into ~/Applications, no admin rights needed.
#
#   curl -fsSL https://raw.githubusercontent.com/refim-org/releases/main/install.sh | bash
#
# Afterwards Refim keeps itself up to date.
set -euo pipefail

manifest="$(curl -fsSL "https://raw.githubusercontent.com/refim-org/releases/main/latest.json")"
field() { plutil -extract "refim.macos.$1" raw -o - - <<<"$manifest"; }
version="$(field version)" || { echo "No Refim build for macOS yet." >&2; exit 1; }
url="$(field url)"
sha="$(field sha256)"

if pgrep -xq Refim; then
  echo "Refim is running. Quit it first (menu bar icon: Quit), then run this again." >&2
  exit 1
fi

echo "Downloading Refim $version ..."
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
curl -fsSL "$url" -o "$tmp/refim.zip"
actual="$(shasum -a 256 "$tmp/refim.zip" | cut -d' ' -f1)"
[ "$actual" = "$sha" ] || { echo "Checksum does not match - download aborted." >&2; exit 1; }

ditto -x -k "$tmp/refim.zip" "$tmp/unpacked"
mkdir -p "$HOME/Applications"
rm -rf "$HOME/Applications/Refim.app"
mv "$tmp/unpacked/Refim.app" "$HOME/Applications/Refim.app"

echo "Refim $version installed in ~/Applications - starting."
open "$HOME/Applications/Refim.app"
