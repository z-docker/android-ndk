IMAGE_NAME=android-ndk
TAG=latest

build:
	export DOCKER_BUILDKIT=1
	export BUILDKIT_PROGRESS=plain

	docker build \
		-t $(IMAGE_NAME):${TAG} .

