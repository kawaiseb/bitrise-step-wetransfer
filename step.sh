#!/bin/bash
set -ex

THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo $THIS_SCRIPT_DIR
ls $THIS_SCRIPT_DIR

npm install
npm install wetransfert --save
$THIS_SCRIPT_DIR/upload.js "${WTU_DEBUG}" "${WTU_MAILSENDER}" "${WTU_MAILRECEIVER}" "${WTU_FILEPATH}" "${WTU_MESSAGE}" "${WTU_LANGUAGE}"

