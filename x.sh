#!/bin/bash
rm -rf .repo/local_manifests
repo init -u https://github.com/LineageOS/android.git -b lineage-18.1 --git-lfs
git clone https://github.com/coloredmarble/local_manifest .repo/local_manifests
/opt/crave/resync.sh
export BUILD_USERNAME=karabal
export BUILD_HOSTNAME=c0
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
source build/envsetup.sh 
lunch lineage_blossom-userdebug
mka build
