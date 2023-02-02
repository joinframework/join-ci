# join-ci
[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/joinframework/join-ci/blob/main/LICENSE)

Docker image for join framework continuous integration.

This is an Ubuntu based docker image, with all the mandatory tools for the join framework project continuous integration (building and testing).

## Creating image

To create the docker image do this:
```bash
docker build -t joinframework/join-ci .
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

[MIT](https://choosealicense.com/licenses/mit/)
