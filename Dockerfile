FROM linuxserver/plex

RUN \
 apt-get update && \
 apt-get install -y \
	ffmpeg \
        mediainfo && \
# cleanup
 apt-get clean && \
 rm -rf \
	/etc/default/plexmediaserver \
	/tmp/* \
	/var/lib/apt/lists/* \
	/var/tmp/*
