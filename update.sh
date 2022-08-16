#!/bin/bash
MAC=DD:5E:B7:6F:AC:C7
while true; do drgdfu -vvv upload ble-gatt --device ${MAC} cloud --http https://http.sandbox.drogue.cloud --application ossummit22 --device microbit --password 1234; done
