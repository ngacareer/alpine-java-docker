# Developer: TriuHv <ms@ngacareer.com>
#
# GitHub:   https://github.com/ngacareer
# Twitter:  https://twitter.com/ngacareer
# Docker:   https://hub.docker.com/ngacareer
# Facebook: https://facebook.com/ngacareer 
# Linkedin: https://www.linkedin.com/in/ngacareer/
# website:  https://ngacareer.com

FROM ngacareer/alpine-java-ssl:1.8

RUN apk add --no-cache curl

ENV DOCKER_VERSION ${DOCKER_VERSION:-20.10.3}

RUN curl -o docker.tgz -L \
    https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz

RUN set -eux; \
	tar --extract \
		--file docker.tgz \
		--strip-components 1 \
		--directory /usr/local/bin/ \
	; \
	rm docker.tgz; \
	\
	dockerd --version; \
	docker --version

COPY modprobe.sh /usr/local/bin/modprobe 
COPY docker-entrypoint.sh /usr/local/bin/ 
ENTRYPOINT ["docker-entrypoint.sh", "entrypoint.sh"]
CMD ["sh"]
