FROM alpine:latest

RUN \
	apk update && \
	apk add bash curl

RUN \
	mkdir -p /download /opt/ffmpeg && \
	cd /download && \
	curl -o ffmpeg-release-amd64-static.tar.xz \
		https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz && \
	curl -o ffmpeg-release-amd64-static.tar.xz.md5 \
		https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz.md5 && \
	md5sum -c ffmpeg-release-amd64-static.tar.xz.md5 && \
	tar x -C /opt/ffmpeg --strip-components 1 -f ffmpeg-release-amd64-static.tar.xz && \
	ln -s /opt/ffmpeg/ffmpeg /usr/local/bin/ffmpeg && \
	ln -s /opt/ffmpeg/ffprobe /usr/local/bin/ffprobe && \
	cd / && \
	rm -rf /download

COPY bin /usr/local/bin
