SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

$SCRIPT_DIR/settings/watermark/cleanWatermark_MAC-LINUX.sh
$SCRIPT_DIR/document/cleanDocument_MAC-LINUX.sh
$SCRIPT_DIR/settings/config/cleanConfig_MAC-LINUX.sh