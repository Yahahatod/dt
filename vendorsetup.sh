#!/bin/bash

# mt6768 autopatcher by ToxicLord 202103040948 GMT+7

ROOTDIR=$(realpath .)

pfwb() {

    cd frameworks/base && wget https://github.com/PixysOS/frameworks_base/commit/43c906643ca30e1d433c9f1a5f292a0eeee30267.patch && git apply 43c906643ca30e1d433c9f1a5f292a0eeee30267.patch

}

pims() {

    cd frameworks/opt/net/ims && wget https://github.com/PixysOS/frameworks_opt_net_ims/commit/30c271beb9974d59b43d76d618c5ec8249e2004b.patch && git apply 30c271beb9974d59b43d76d618c5ec8249e2004b.patch

}

pwifi() {

    cd frameworks/opt/net/wifi && wget https://github.com/PixysOS/frameworks_opt_net_wifi/commit/187a233b64296083c5c8e7031bc730e0ab00beac.patch && git apply 187a233b64296083c5c8e7031bc730e0ab00beac.patch

}

mtkr() {

    git clone --depth=1 --single-branch https://github.com/PixelExperience/device_mediatek_sepolicy device/mediatek/sepolicy 

    git clone --depth=1 --single-branch https://github.com/PixelExperience/vendor_mediatek_interfaces vendor/mediatek/interfaces 

    git clone --depth=1 --single-branch https://github.com/Redmi-MT6768/vendor_mediatek-opensource vendor/mediatek/opensource

    git clone --depth=1 --single-branch https://github.com/Redmi-MT6768/android_vendor_mediatek_ims vendor/mediatek/ims 

}

cd $ROOTDIR 

pfwb

cd $ROOTDIR 

pims 

cd $ROOTDIR 

pwifi 

cd $ROOTDIR 

mtkr 

cd $ROOTDIR

echo "patch done !"
