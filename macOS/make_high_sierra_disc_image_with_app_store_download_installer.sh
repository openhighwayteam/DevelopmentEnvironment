#!/bin/bash

hdiutil create -o /tmp/HighSierra -size 5600m -layout SPUD -fs HFS+J -type SPARSE
hdiutil attach /tmp/HighSierra.sparseimage -noverify -mountpoint /Volumes/install_build
sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build
hdiutil detach /Volumes/Install\ macOS\ High\ Sierra/
hdiutil convert /tmp/HighSierra.sparseimage -format UDTO -o /tmp/HighSierra.iso
mv /tmp/HighSierra.iso.cdr ~/Desktop/HighSierra.iso
rm /tmp/HighSierra.sparseimage

echo "High Sierra disc image were placed at ~/Desktop/HighSierra.iso now."
