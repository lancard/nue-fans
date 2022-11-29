#!/bin/bash

ORIGINAL_PWD=$PWD

# clean
rm -rf html/fans.zip
rm -rf html/fans/tiles

# build date
BUILD_DATE=`date "+%Y-%m-%d %H:%M:%S"`
echo $BUILD_DATE > html/fans/version.txt

# get tiles
cd html/fans/ && git clone --depth=1 --branch main https://github.com/lancard/korea-openstreetmap-tiles.git tiles
cd $ORIGINAL_PWD
rm -rf html/fans/tiles/.git html/fans/tiles/.gitignore html/fans/tiles/clear.sh html/fans/tiles/index.js html/fans/tiles/README.md
rm -rf html/fans/tiles/13
rm -rf html/fans/tiles/12

# regenerate zip
cd html/fans && zip -r ../fans.zip *
