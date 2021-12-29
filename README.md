# hugo-builder

This project generates a [distroless](https://github.com/GoogleContainerTools/distroless) image for building sites with hugo.

## How to build it

Simply execute `./build.bash`. It will build the image with the latest `hugo` version.

## Usage

In the root folder of your hugo website, execute:

```
docker run --rm -v ${PWD}:/app nauar/hugo-builder
```

It will generate the website in `public` folder.

You can also execute any command or parameter:

```
docker run --rm -v ${PWD}:/app nauar/hugo-builder --help
docker run --rm -v ${PWD}:/app nauar/hugo-builder server
```

You can even emulate that you have `hugo` in your system:

```
alias hugo="docker run --rm -p 1313:1313 -v ${PWD}:/app nauar/hugo-builder"
hugo --help
hugo server --bind=0.0.0.0 # in recent versions only binds to 127.0.0.1 and it does not work with docker
```
