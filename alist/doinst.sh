#!/bin/sh
cd /var/lib/alist
if [ ! -f config.json ]; then
    ln -sf /etc/alist/config.json config.json
fi

