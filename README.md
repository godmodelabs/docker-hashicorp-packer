# docker-hashicorp-packer
A busybox:glibc based Docker container running HashiCorp's packer.


Usage examples
```
docker run -it -v $HOME:/workdir godmodelabs/hashicorp-packer validate /workdir/example.json
```
