#!/usr/bin/with-contenv bash

# install app 
[[ ! -d "/opt/plexpy/.git" ]] && \
	git clone https://github.com/nosmokingbandit/watcher.git /watcher

# permissions
chown -R abc:abc \
	/watcher
