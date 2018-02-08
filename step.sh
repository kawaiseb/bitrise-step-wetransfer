#!/bin/bash
set -ex

ls -l
pwd
which node

npm install
npm install wetransfert --save
FDJSKLFJS=$(upload.js "${WTU_DEBUG}" "${WTU_MAILSENDER}" "${WTU_MAILRECEIVER}" "${WTU_FILEPATH}" "${WTU_MESSAGE}" "${WTU_LANGUAGE}")

