#!/usr/bin/with-contenv bash

# install app 
git clone https://github.com/nosmokingbandit/watcher.git /watcher

# permissions
chown -R abc:abc \
	/watcher
