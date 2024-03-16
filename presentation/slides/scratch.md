# Starting from a clean slate

Using `FROM scratch`

Note:
You don have to start from a base image. If you start from the special keyword `scratch` you will get an image with only
the files you add to it, no operating system or anything. That's only useful if you don't need them but can give really
tiny images.

#--#

```Dockerfile
FROM foo AS build
WORKDIR build
COPY . .
RUN buid_static_executable

FROM scratch
COPY --from=build /build/output/static_executable \
  /bin/static_executable
ENTRYPOINT ["/bin/static_executable"]
```

#--#

Build our tiny image
```bash
$ cd examples/scratch/
$ docker build -t tiny
$ docker run --rm tiny
Hello, world!
```

#--#

Let's pull down some common base images and compare the sizes
```bash
$ docker pull ubuntu
$ docker pul alpine
$ docker image ls --filter=reference=ubuntu --filter=reference=alpine --filter=reference=tiny
```
