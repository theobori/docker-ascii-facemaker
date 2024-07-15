FROM linuxserver/nginx:1.26.1

ARG ASCII_FACEMAKER_RELEASE

LABEL maintainer="theobori"

RUN \
  echo "install ascii-facemaker" && \
  ASCII_FACEMAKER_RELEASE=${ASCII_FACEMAKER_RELEASE:-"master"} && \
  curl \
    -o /tmp/ascii-facemaker.tar.gz \
    -L https://gitlab.com/adelfaure/ascii-facemaker/-/archive/${ASCII_FACEMAKER_RELEASE}/ascii-facemaker-master.tar.gz && \
  mkdir -p /config/www/ && \
  tar xf \
    /tmp/ascii-facemaker.tar.gz -C \
    /config/www/ --strip-components=1 && \
  echo "cleanup" && \
  rm -rf \
    /tmp/*
