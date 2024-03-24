IMAGE_NAME=android-ndk
TAG=latest

build:
	export DOCKER_BUILDKIT=1
	export BUILDKIT_PROGRESS=tty

	docker build \
		-t $(IMAGE_NAME):${TAG} .

