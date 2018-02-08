#!/bin/bash
set -ex

THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $THIS_SCRIPT_DIR
npm install
npm install wetransfert --save
./upload.js "${WTU_DEBUG_MODE}" "${WTU_MAILSENDER}" "${WTU_MAILRECEIVER}" "${WTU_FILEPATH}" "${WTU_MESSAGE}" "${WTU_LANGUAGE}"

