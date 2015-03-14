# hpmor-dl

This is a script to download all chapters from fanfic Harry Potter and the
Methods of Rationality from site http://hpmor.com

## Why?

You can read fanfic in html version at http://hpmor.com or you can download
.pdf or .mobi & .epub, but there was no just pure plain version. I wanted
to play with the text so I created this script.

## How to use it

The simplest way is to use this script with Docker.

 1. [Install Docker](https://docs.docker.com/installation/)
 2. Build image `docker build --tag hpmor-dl .`
 3. Download all the chapters to your harddrive with the command like:

    docker run \
        --volume /Users/bessarabov/Dropbox/git/hpmor:/data \
        hpmor-dl

As a result you will get all the chapters in text format at the path you
have scpecifed.
