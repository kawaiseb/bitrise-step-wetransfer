#!/bin/bash
set -ex

npm install
npm install wetransfert --save
./upload.js "${WTU_DEBUG}" "${WTU_MAILSENDER}" "${WTU_MAILRECEIVER}" "${WTU_FILEPATH}" "${WTU_MESSAGE}" "${WTU_LANGUAGE}"

