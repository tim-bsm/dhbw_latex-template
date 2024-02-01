#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

$SCRIPT_DIR/settings/watermark/sh_cleanWatermark.sh
$SCRIPT_DIR/document/sh_cleanDocument.sh
$SCRIPT_DIR/settings/config/sh_cleanConfig.sh