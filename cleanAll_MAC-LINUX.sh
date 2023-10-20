SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

$SCRIPT_DIR/ads/watermark/cleanWatermark_MAC-LINUX.sh
$SCRIPT_DIR/document/cleanDocument_MAC-LINUX.sh
$SCRIPT_DIR/content/cleanContent_MAC-LINUX.sh
$SCRIPT_DIR/settings/header/cleanHeader_MAC-LINUX.sh