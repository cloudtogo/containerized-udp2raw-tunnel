.PHONY:all
all:
	docker buildx build --platform=linux/amd64 -t docker.io/cloudtogo4edge/udp2raw-tunnel:20200818.0-amd64 --push amd64
	docker buildx build --platform=linux/arm64 -t docker.io/cloudtogo4edge/udp2raw-tunnel:20200818.0-arm64v8 --push arm64v8
	docker buildx build --platform=linux/arm/v7 -t docker.io/cloudtogo4edge/udp2raw-tunnel:20200818.0-arm32v7 --push arm32v7