#!/bin/bash
# Prepare jacket for Simplify 3.4
ver=$(cat com.brettterpstra.sideshow.jacket/index.html | grep "jacket.version" | sed -E 's/^.*"([0-9\.]+)".*/\1/')
cp -r "com.brettterpstra.sideshow.jacket" ~/Desktop/
cd ~/Desktop
zip -r Sideshow${ver}.zip "com.brettterpstra.sideshow.jacket" -x .DS_Store -x __MACOSX

## Prepare jacket for Simplify 2.5
## Old Sidecar package
# ver=$(cat com.brettterpstra.sidecar.jacket/index.html | grep "jacket.version" | sed -E 's/^.*"([0-9\.]+)".*/\1/')
# zip -r sidecar.zip com.brettterpstra.sidecar.jacket -x .DS_Store
# mv sidecar.zip ~/Desktop/Sidecar.jacket
# cd ~/Desktop
# zip -r sidecar${ver}.zip Sidecar.jacket
# rm ~/Desktop/Sidecar.jacket
