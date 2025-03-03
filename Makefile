VERSION=7.0

image:
	docker build buildenv -t insideo/ffmpeg:latest
	docker tag insideo/ffmpeg:latest insideo/ffmpeg:7.0

push:
	docker push insideo/ffmpeg:latest
	docker push insideo/ffmpeg:7.0
