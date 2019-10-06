# TiddlyServer Docker image

Simple image to create a docker container for [Tiddly Server](https://github.com/Arlen22/TiddlyServer)

Note: on build, it always uses the latest version from the default branch of Tiddly Server. It also uses the latest version of
node available on docker hub.

## Pulling the image:

```
docker pull xyder/tiddly-server
```

## Building the image:

```
# clone the repo
git clone https://github.com/xyder/docker-tiddly-server.git

cd docker-tiddly-server

# build the image
docker build -t xyder/tiddly-server .
```

## Running the container:

Interactive, with auto-remove, volume and host port exposed:

```
docker run --rm -it \
    -v "/path/on/host:/var/lib/tiddly-server" \
    -p 8080:8080 \
    -e TWS_SETTINGS_FILE=/var/lib/tiddly-server/your-settings.json \
    xyder/tiddly-server
```

## Environment variables:
- `TWS_SETTINGS_FILE` - path to the settings file, defaults to `/var/lib/tiddly-server/settings.json`
- `TWS_PORT` - server port, defaults to `8080`
