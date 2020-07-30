# UDP Broadcast Station in Python3

Sample Docker container to send broadcast messages via UDP in Python3 + Ash shell. (Port=5963 by default)

In this sample, it does not require the program, Python3 in this case, to connect UDP socket. The program just needs to echo/print out the messages to STDOUT and the Ash shell script will pipe them to the socket and broadcast.

## File Description

- `broadcaster.sh` (Entrypoint script. Sends the broadcast message)
- `gen_message.py` (Message generator. Creates the message to broadcast and echoes/print out them to STDOUT)

## What It Does

In this sample container:

- The Ash shell just loops the below
    1. Requests Python the message to broadcast and pipes it's STDOUT to the STDIN of socat command.
    2. The socat command receives the message and broadcast.
    3. Waits/sleeps for a seconds.

## Requirements

The `socat` command is needed to send and receive the messages. This command is a proxy that connects a socket to others. In this case the STDIN to UDP port.

## Sample Usage

- [KEINOS/Broadcast-inside-Docker-network](https://github.com/KEINOS/Broadcast-inside-Docker-network) @ GitHub
