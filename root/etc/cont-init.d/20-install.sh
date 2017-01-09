#!/usr/bin/with-contenv bash

# cleanup old installs
rm -rf /watcher

# install app 
git clone https://github.com/nosmokingbandit/watcher.git /watcher

# link sqlite to config
cp -n /watcher/watcher.sqlite /config/watcher.sqlite
rm /watcher/watcher.sqlite
ln -s /config/watcher.sqlite /watcher/watcher.sqlite

# link images to config folder
cp -rn /watcher/static/images /config/images
rm -rf /watcher/static/images
ln -s /config/images /watcher/static/images

# link scripts to config
cp -rn /watcher/post\ scripts /config/scripts
rm -rf /watcher/post\ scripts
ln -s /config/scripts/ /watcher/post\ scripts

# permissions
chown -R abc:abc \
	/watcher

chown -R abc:abc \
	/config
