#!/usr/bin/with-contenv bash

# install app 
git clone https://github.com/nosmokingbandit/watcher.git /watcher

# link sqlite to config
cp -n /watcher/watcher.sqlite /config/watcher.sqlite
rm /watcher/watcher.sqlite
ln -s /config/watcher.sqlite /watcher/watcher.sqlite

# permissions
chown -R abc:abc \
	/watcher
