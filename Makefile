.PHONY:all
all:
	docker buildx build --platform=linux/amd64,linux/arm64,linux/arm/v7 -f alpine-3.12.dockerfile -t docker.io/cloudtogo4edge/udp2raw-tunnel:v20200818.0-alpine3.12 --push .
	docker buildx build --platform=linux/amd64,linux/arm64,linux/arm/v7 -f alpine-3.13.dockerfile -t docker.io/cloudtogo4edge/udp2raw-tunnel:v20200818.0-alpine3.13 --push .
	docker buildx build --platform=linux/amd64,linux/arm64,linux/arm/v7 -f alpine-3.13.dockerfile -t docker.io/cloudtogo4edge/udp2raw-tunnel:v20200818.0 --push .