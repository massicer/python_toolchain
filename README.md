# 🧪 Python CI/CD custom image

This project provide a simple docker image whith the aim to
standardize and make repatable the `CI/CD` pipeline steps and the developer environments.

## 🚀 CI

Every time a git push is triggered on the main branch a new `latest` tagged image version is
published on docker-hub. Here you can find the related [url](https://hub.docker.com/repository/docker/massicer/python_toolchain/general).

## 🪚 Build and run the image locally

You can use following commands:

- `make build TAG="your-tag"
- `make publish TAG="your-tag" REGISTRY="docker-hub/my-name"
- `make shell`
