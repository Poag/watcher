FROM lsiobase/xenial
MAINTAINER Poag

# install packages
RUN \
 apt-get update && \
 apt-get install -y \
	git \
	python \
	wget && \

# cleanup
 apt-get clean && \
 rm -rf \
	/tmp/* \
	/var/lib/apt/lists/* \
	/var/tmp/*

# add local files
COPY root/ /

# ports and volumes
EXPOSE 9090
VOLUME /watcher /config
