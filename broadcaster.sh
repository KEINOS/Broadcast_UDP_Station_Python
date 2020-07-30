#!/bin/sh
#
# Broadcasts a UDP message from Python3 to the network.
#

i=0
while :
do
    # Generate message to broadcast
    message=$(/usr/local/bin/python /app/gen_message.py3)
    # Broadcast the message
    echo -e "Count:${i}\t${message}" | socat - UDP4-DATAGRAM:255.255.255.255:$PORT_UDP_BROADCAST,so-broadcast

    let i++
    sleep $TIME_INTERVAL_SEND
done
