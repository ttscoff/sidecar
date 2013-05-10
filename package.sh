#!/bin/bash
# Prepare jacket for Simplify 2.5
ver=$(cat com.brettterpstra.sidecar.jacket/index.html | grep "jacket.version" | sed -E 's/^.*"([0-9\.]+)".*/\1/')
zip -r sidecar.zip com.brettterpstra.sidecar.jacket -x .DS_Store
mv sidecar.zip ~/Desktop/Sidecar.jacket
cd ~/Desktop
zip -r sidecar${ver}.zip Sidecar.jacket
rm ~/Desktop/Sidecar.jacket
