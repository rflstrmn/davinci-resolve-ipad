#!/bin/zsh
# Doppelklick startet die Präsentation lokal und öffnet sie im Browser.
cd "$(dirname "$0")"
[ -d node_modules ] || npm install
npx slidev --open --remote
