#!/bin/sh
MAC=DD:5E:B7:6F:AC:C7
ble-gateway -vvv -d ${MAC} --report-interval 10sec | while read -r line; do curl -X POST -H "Content-Type: application/json" -d "$line" -u 'microbit@ossummit22:1234' https://http.sandbox.drogue.cloud/v1/foo; done
