# Runbook Inventory

This app is a Flask app which is for a static website for a inventory of runbooks used by SRE

## Installation

The app will be installed on a Docker container (for isolation of dependencies) and will be accessible via port 9000 on your `localhost`

As all the dependencies are mentioned in the `Dockerfile`, you need to build and run the container as:

```
$ make up
```

In order to stop and remove the container,

```
$ make stop
```

## Maintainer

Aditya Krishnakumar