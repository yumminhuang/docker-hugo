# hugo-docker

[![Docker Pulls](https://img.shields.io/docker/pulls/yumminhuang/hugo-docker.svg)](https://hub.docker.com/r/yumminhuang/hugo-docker/)
[![Docker Automated build](https://img.shields.io/docker/automated/yumminhuang/hugo-docker.svg)](https://github.com/yumminhuang/hugo-docker)
[![Docker Build Status](https://img.shields.io/docker/build/yumminhuang/hugo-docker.svg)](https://hub.docker.com/r/yumminhuang/hugo-docker/builds/)

Docker image for [Hugo](https://gohugo.io/) —  a fast & modern static page generator.

Check out [Hugo repository](https://github.com/spf13/hugo).

# Build

Build the latest version

```shell
docker build -t yumminhuang/hugo:latest .
```

Specify Hugo version in `--build-arg`

```shell
docker build -t yumminhuang/hugo:0.20 --build-arg HUGO_VERSION=0.20
```

# Run

Generate static web pages in `public` directory

```shell
docker run --rm -v $(pwd):/website yumminhuang/hugo:latest
```

Launch [hugo server](https://gohugo.io/commands/hugo_server/), which is very useful to check how the site looks like.

```shell
docker run --rm -p 1313:1313 -v $(pwd):/website yumminhuang/hugo:latest server --bind=0.0.0.0 -w -D
```
