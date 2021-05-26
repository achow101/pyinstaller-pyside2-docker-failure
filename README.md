Minimal example of a Pyinstaller issue with PySide2 libraries in a Debian Stretch docker container

Build the container:

```
docker build --no-cache -t builder -f Dockerfile .
```

Build the binary

```
docker run -it --name builder -v $PWD:/opt --rm  --workdir /opt builder /bin/bash -c "./build_bin.sh"
```
