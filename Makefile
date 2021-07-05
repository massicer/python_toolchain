IMAGE_NAME=python_toolchain
TAG ?= local

local_image = ${IMAGE_NAME}:${TAG} 
registry_image = ${REGISTRY}/${IMAGE_NAME}:${TAG}

.PHONY: build 
build: # build the docker image. Provide the TAG value to customize the  tag. Example: `make build TAG="mytag"`
	docker build . -t $(local_image)

.PHONY: push
push: # publish the image on docker hub. Provide the tag value to customize the push and the registry.
	docker image tag $(local_image) $(registry_image)
	docker push $(registry_image)

.PHONY: start
start: # Starts the container image intialzing a basg session.
	docker run -ti --entrypoint /bin/bash $(local_image)

.PHONY: publish
publish: build push