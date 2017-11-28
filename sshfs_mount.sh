#!/bin/bash

RTN_DIR=$(dirname "$(readlink -f "$0")")/rescueteam.be
REMOTE_URL=rescueteam.be@sftp.rescueteam.be:/customers/b/e/b/rescueteam.be

if [ ! -d "$RTN_DIR" ]; then
    mkdir -p "$RTN_DIR"
fi

sshfs "$REMOTE_URL" "$RTN_DIR"
