# hugo-builder

This project generates a [distroless](https://github.com/GoogleContainerTools/distroless) image for building sites with hugo.

## How to build it

Simply execute `./build.bash <version>` where `version` is the tag of the image.

## Usage

In the root folder of your hugo website, execute:

```
docker run -v ${PWD}:/app nauar/hugo-builder
```

It will generate the website in `public` folder.
