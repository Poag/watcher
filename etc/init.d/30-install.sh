#!/usr/bin/with-contenv bash

# install app 
[[ ! -d "/opt/plexpy/.git" ]] && \
	git clone https://github.com/nosmokingbandit/watcher.git /root/watcher

# permissions
chown -R abc:abc \
	/root/watcher
