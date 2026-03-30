# Docker dotnet

[Docker](https://www.docker.com) images for the Microsoft .net framework.

## Directories
- `/workdir` This is the working directory that is set when the container starts

## User ID control

It is possible to control the UID the initial process runs as. This is important if you are mounting a volumes into the container, as the UID of the initial process will likely need to match the permissions of the volume to be able to read and/or write to it.

Note: You should **NOT** try to set the UID using Dockers -u or --user option, as this does not ensure that the user actually exists (entry in `/etc/passwd`, home directory, etc).

## Example usage
```bash
docker run \
  -it \
  -v $(pwd):/workdir \
  -e LOCAL_USER_ID=$(id -u) \
  --rm \
  aserv92/docker-dotnet:sdk dotnet --version
```
