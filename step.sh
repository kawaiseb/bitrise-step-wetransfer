#!/bin/bash
set -ex

THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

npm install --prefix $THIS_SCRIPT_DIR wetransfert --save

$THIS_SCRIPT_DIR/upload.js "${wtu_debug_mode}" "${wtu_mailsender}" "${wtu_mailreceiver}" "${wtu_filepath}" "${wtu_message}" "${wtu_language}"