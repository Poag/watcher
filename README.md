# uirel/watcher

[![](https://images.microbadger.com/badges/image/uirel/watcher.svg)](https://microbadger.com/images/uirel/watcher "Get your own image badge on microbadger.com")

[Watcher](https://github.com/nosmokingbandit/watcher) Is a Python-based Film finder, that is currently in active development.


## Usage

```
docker create \ 
  --name=watcher \
  -v <path to data>:/config \
  -v <path to downloads folder>:/downloads \
  -v <path to movies>:/movies \
  -e PGID=<gid> -e PUID=<uid>  \
  -p 9090:9090 \
  uirel/watcher
```

## Parameters

`The parameters are split into two halves, separated by a colon, the left hand side representing the host and the right the container side. 
For example with a port -p external:internal - what this shows is the port mapping from internal to external of the container.
So -p 8080:80 would expose port 80 from inside the container to be accessible from the host's IP on port 8080
http://192.168.x.x:8080 would show you what's running INSIDE the container on port 80.`


* `-p 9090` - Port for webui
* `-v /config` Containes plexpy config and database
* `-e PGID` for GroupID - see below for explanation
* `-e PUID` for UserID - see below for explanation

### User / Group Identifiers

Sometimes when using data volumes (`-v` flags) permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

In this instance `PUID=1001` and `PGID=1001`. To find yours use `id user` as below:

```
  $ id <dockeruser>
    uid=1001(dockeruser) gid=1001(dockergroup) groups=1001(dockergroup)
```

## Setting up the application
Access the webui at `<your-ip>:9090`, for more information check out [Watcher](https://github.com/nosmokingbandit/watcher)..

## Info

* To monitor the logs of the container in realtime `docker logs -f watcher`.

## Versions

+ **29.12.16:** Inital Release.

## Credits
+Linuxserver.io for dockerfile form, base image, readme outline
+NoSmokingBandit for Watcher itself
