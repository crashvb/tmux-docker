FROM crashvb/base:20.04-202201080422@sha256:57745c66439ee82fda88c422b4753a736c1f59d64d2eaf908e9a4ea1999225ab
ARG org_opencontainers_image_created=undefined
ARG org_opencontainers_image_revision=undefined
LABEL \
	org.opencontainers.image.authors="Richard Davis <crashvb@gmail.com>" \
	org.opencontainers.image.base.digest="sha256:57745c66439ee82fda88c422b4753a736c1f59d64d2eaf908e9a4ea1999225ab" \
	org.opencontainers.image.base.name="crashvb/base:20.04-202201080422" \
	org.opencontainers.image.created="${org_opencontainers_image_created}" \
	org.opencontainers.image.description="Image containing tmux." \
	org.opencontainers.image.licenses="Apache-2.0" \
	org.opencontainers.image.source="https://github.com/crashvb/tmux-docker" \
	org.opencontainers.image.revision="${org_opencontainers_image_revision}" \
	org.opencontainers.image.title="crashvb/tmux" \
	org.opencontainers.image.url="https://github.com/crashvb/tmux-docker"

# Install packages, download files ...
RUN docker-apt git openssh-client python3 python3-pip tmux && \
	python3 -m pip install --upgrade pip && \
	python3 -m pip install tmuxp && \
	mkdir --parents /root/.tmux /root/.tmuxp && \
	git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm

# Configure python
RUN ln --symbolic /usr/bin/python3.8 /usr/bin/python

CMD ["/usr/bin/tmux", "new-session", "-s", "default"]
