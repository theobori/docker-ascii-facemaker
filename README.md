# 🧑 ASCII Facemaker Docker image

Based on [linuxserver/nginx](https://github.com/linuxserver/docker-nginx), it is a Docker image that expose [ASCII Facemaker](https://gitlab.com/adelfaure/ascii-facemaker) throught NGINX.

This image has been built then pushed to the Docker Hub, you can get it with the following command.

```bash
docker pull theobori/ascii-facemaker:latest
```

It supports the following architectures:
- linux/amd64
- linux/arm64

It has the following build arguments:

| Name | Description | Default value |
| -- | -- | -- |
| `ASCII_FACEMAKER_RELEASE` | The ASCII Facemaker release version | `"master"`


## 🤝 Contribute

If you want to help the project, you can follow the guidelines in [CONTRIBUTING.md](./CONTRIBUTING.md).
