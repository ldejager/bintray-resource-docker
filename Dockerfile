FROM busybox

ADD https://get.docker.io/builds/Linux/x86_64/docker-latest /usr/local/bin/docker
RUN chmod +x /usr/local/bin/docker

ADD check /opt/resource/check
ADD in /opt/resource/in
ADD out /opt/resource/out