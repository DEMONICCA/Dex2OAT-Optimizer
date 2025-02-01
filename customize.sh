MODULE_INFO="check info module..."
ID="`grep_prop id $TMPDIR/module.prop`"
NAME_MODULE="`grep_prop name $TMPDIR/module.prop`"
VERSION="`grep_prop version $TMPDIR/module.prop`"
VERSION_CODE="`grep_prop versionCode $TMPDIR/module.prop`"
DESCRIPTION="`grep_prop description $TMPDIR/module.prop`"
DEVICE_INFO="your device specifications..."
BRAND="$(getprop ro.product.brand)"
MODEL="$(getprop ro.product.model)"
CODE_DEVICE="$(getprop ro.product.system.device)"
HARDWARE="$(getprop ro.product.board)"
CHIPSET="$(getprop ro.hardware)"
ANDROID="$(getprop ro.system.build.version.release)"
RAM="$(free | grep Mem | awk '{print $2}')"
BUILD="$(getprop ro.system.build.date)"
KERNEL="$(uname -r)"
SDK="$API"
ABI="$ARCH"
NUMBER="$(getprop ro.system.build.id)"
ROOT="your root method..."
DEBUG=true
SKIPUNZIP=1
echo ""
echo "════════════════════════════"
echo "- $MODULE_INFO"
echo "════════════════════════════"
sleep 1
echo "- id = $ID"
sleep 0.5
echo "- name = $NAME_MODULE"
sleep 0.5
echo "- version = $VERSION"
sleep 0.5
echo "- version code = $VERSION_CODE"
sleep 0.5
echo "- description = $DESCRIPTION"
sleep 1
echo "════════════════════════════"
echo "- $DEVICE_INFO"
echo "════════════════════════════"
sleep 1
echo "- model = $BRAND | $MODEL"
sleep 0.5
echo "- codename devices = $CODE_DEVICE"
sleep 0.5
echo "- processor = $HARDWARE | $CHIPSET"
sleep 0.5
echo "- android = $ANDROID | $SDK | $ABI"
sleep 0.5
echo "- ram = $RAM | byte"
sleep 0.5
echo "- kernel = $KERNEL"
sleep 0.5
echo "- build = $BUILD"
sleep 0.5
echo "- build number = $NUMBER"
sleep 1
echo "════════════════════════════"
echo "- $ROOT "
echo "════════════════════════════"
sleep 1
if [ "$BOOTMODE" ] && [ "$KSU" ]; then
echo "- ksu version = $KSU_VER"
sleep 0.5
echo "- ksu version code = $KSU_VER_CODE"
sleep 0.5
echo "- kernelsu version = $KSU_KERNEL_VER_CODE"
elif [ "$BOOTMODE" ] && [ "$APATCH" ]; then
echo "- apatch version = $APATCH_VER"
sleep 0.5
echo "- kernelpatch version = $APATCH_VER_CODE"
elif [ "$BOOTMODE" ] && [ "$MAGISK_VER_CODE" ]; then
echo "- magisk version = $MAGISK_VER"
sleep 0.5
echo "- magisk version code = $MAGISK_VER_CODE"
fi
sleep 1
echo "════════════════════════════"
echo "- finishing..."
echo "════════════════════════════"
sleep 1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh
echo "- replace file"
sleep 0.5
REPLACE="
"
nohup am start -a android.intent.action.VIEW -d https://trakteer.id/demonica/tip >/dev/null 2>&1 &
su -lp 2000 -c "cmd notification post -S bigtext -t '`grep_prop name $TMPDIR/module.prop`' 'Tag' 'install successfully.'" > /dev/null 2>&1