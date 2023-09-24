CONTAINER_NAME := mpy-cross
REGISTRY := sarlos
IMAGE := $(REGISTRY)/$(CONTAINER_NAME)

build:
	docker build -t ${IMAGE} .
push: build
	docker push ${IMAGE}
