#!/bin/bash
# Prepare jacket for Simplify 2.5
ver=$(cat com.brettterpstra.sidecar.jacket/index.html | grep "jacket.version" | sed -E 's/^.*"([0-9\.]+)".*/\1/')
cp -r "com.brettterpstra.sidecar.jacket" ~/Desktop/Sidecar${ver}
zip -r ~/Desktop/Sidecar${ver}.zip ~/Desktop/Sidecar${ver} -x .DS_Store
# mv sidecar.zip ~/Desktop/Sidecar.jacket
# cd ~/Desktop
# zip -r sidecar${ver}.zip Sidecar.jacket
# rm ~/Desktop/Sidecar.jacket
