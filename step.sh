#!/bin/bash
set -ex

THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $THIS_SCRIPT_DIR
npm install
npm install wetransfert --save
./upload.js "${wtu_debug_mode}" "${wtu_mailsender}" "${wtu_mailreceiver}" "${wtu_filepath}" "${wtu_message}" "${wtu_language}"

