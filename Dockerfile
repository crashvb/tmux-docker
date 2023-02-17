FROM crashvb/base:22.04-202302172016@sha256:aa45348250be126f4b4e3d4f3de6d8314159426d517fb1e0a7ecdf32905fdf26
ARG org_opencontainers_image_created=undefined
ARG org_opencontainers_image_revision=undefined
LABEL \
	org.opencontainers.image.authors="Richard Davis <crashvb@gmail.com>" \
	org.opencontainers.image.base.digest="sha256:aa45348250be126f4b4e3d4f3de6d8314159426d517fb1e0a7ecdf32905fdf26" \
	org.opencontainers.image.base.name="crashvb/base:22.04-202302172016" \
	org.opencontainers.image.created="${org_opencontainers_image_created}" \
	org.opencontainers.image.description="Image containing tmux." \
	org.opencontainers.image.licenses="Apache-2.0" \
	org.opencontainers.image.source="https://github.com/crashvb/tmux-docker" \
	org.opencontainers.image.revision="${org_opencontainers_image_revision}" \
	org.opencontainers.image.title="crashvb/tmux" \
	org.opencontainers.image.url="https://github.com/crashvb/tmux-docker"

# Install packages, download files ...
# hadolint ignore=DL3013
RUN docker-apt git openssh-client python3 python3-pip tmux && \
	python3 -m pip install --no-cache-dir --upgrade pip setuptools && \
	python3 -m pip install --no-cache-dir tmuxp && \
	mkdir --parents /root/.tmux /root/.tmuxp && \
	git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm

# Configure python
RUN ln --symbolic /usr/bin/python3.8 /usr/bin/python

CMD ["/usr/bin/tmux", "new-session", "-s", "default"]
