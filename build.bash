#!/bin/bash

function log() {
    moment=`date '+%Y-%m-%d %H:%M:%S'` 
    echo "[ $moment ] $1"
}

function getHugo() {
    curl -s https://api.github.com/repos/gohugoio/hugo/releases/latest | \
    grep "browser_download_url.*tar.gz" | \
    grep extended | \
    grep Linux-64bit | \
    cut -d '"' -f 4 | \
    wget -qi -

    tarFile=$(ls -1 | grep hugo | grep '\.tar\.gz')
    tar xfvz $tarFile hugo
    rm $tarFile
}

function buildImage() {
    docker build -t nauar/hugo-builder:$1 .
    rm hugo
}

log 'Getting latest Hugo binary...'
getHugo
log 'Latest Hugo binary acquired!'
log 'Building image...'
buildImage $1
log 'Image built!'
