#!/bin/bash

URL=$1

echo "URL: $URL"

curl -o /dev/null \
     -w "DNS Lookup: %{time_namelookup} \nTCP Established: %{time_connect} \nSSL Handshake: %{time_appconnect} \nConnect: %{time_connect} \nTTFB: %{time_starttransfer} \nTotal time: %{time_total} \n" \
     $URL



