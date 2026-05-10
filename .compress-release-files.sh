#!/bin/bash
# For my convenience in preparing compressed archives for release.

VERSION="1-0-0"

tar czvf DAIS_"$VERSION".tar.gz --exclude={'*/.*','./sounds','*.tar.gz','*.zip'} . 
zip -r DAIS_"$VERSION".zip . -x ".*" "*/.*" "sounds/" "*.tar.gz" "*.zip"

# No high-DPI versions
tar czvf DAIS_"$VERSION"_no-high-DPI.tar.gz --exclude={'*@2x*','*/.*','./sounds','*.tar.gz','*.zip'} . 
zip -r DAIS_"$VERSION"_no-high-DPI.zip . -x "*@2x*" ".*" "*/.*" "sounds/" "*.tar.gz" "*.zip"
