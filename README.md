This folder structure contains the Dockerfiles for building a Pivotal GemFire XD cluster with 1 locator and 2 or more server processes.

Structure:
==========
There are 4 folders.

1. gfxd-base - this is the base Dockerfile which builds on a CentOS image and installs the Gemfire XD binaries on the image
2. gfxd-locator - This builds on the gfxd-base and starts up an instance of GemFire XD locator when container is brought up
3. gfxd-server - This builds on gfxd-base and starts up an instance of GemFire XD server when the container is brought up
4. cluster-fig - This contains a fig definition file(fig.yml) defining how to boot up the entire cluster. Use `fig up -d` to bring up the cluster.


Building the Docker images:
===========================
To build the entire structure yourself, first place a GemFire XD rpm named to gfxd-1.0.rpm, downloadable from https://network.pivotal.io/products/pivotal-hd to the gfxd-base folder and run commands in the following sequence:

in gfxd-base : `docker build -t gfxd-base .`

in gfxd-locator: `docker build -t gfxd-locator .`

in gfxd-server: `docker build -t gfxd-server .`


Running the GemFire XD Cluster:
===============================
Once the images are built, boot up the cluster using the fig.yml configuration provided in cluster-fig folder:
    
    fig up -d

Once the cluster comes up a good way to verify this will be to run the bash on the base image:
    
    docker run -it bijukunjummen/gfxd-base /bin/bash

Then on the bash prompt:
    
    gfxd
    connect client '192.168.58.103:1527';
    
