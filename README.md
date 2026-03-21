# join-ci
[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/joinframework/join-ci/blob/main/LICENSE)

Docker image for join framework continuous integration.

This is an Ubuntu based docker image, with all the mandatory tools for the join framework project continuous integration (building and testing).

## Creating image

To create the docker image do this:
```bash
docker buildx build --platform linux/amd64,linux/arm64 -t joinframework/join-ci .
```

To create and test locally for a single platform do this:
```bash
docker buildx build --platform linux/amd64 --load -t joinframework/join-ci .
```

## Testing image

To run and test the docker image do this:
```bash
docker run -it --privileged --rm joinframework/join-ci
```

## Pushing image to docker hub

To deploy the docker image to docker hub do this:
```bash
docker push joinframework/join-ci:latest
```

## Creating a local image

To create a local image tarball do this:
```bash
docker save -o join-ci.tar joinframework/join-ci:latest
```

## License

[![Status](https://github.com/joinframework/join-ci/actions/workflows/cd.yml/badge.svg?branch=main)](https://github.com/joinframework/join-ci/actions?query=workflow%3Acd+branch%3Amain)
[![GitHub Releases](https://img.shields.io/github/release/joinframework/join-ci.svg)](https://github.com/joinframework/join-ci/releases/latest)
[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/joinframework/join-ci/blob/main/LICENSE)
