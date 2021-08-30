FROM crashvb/base:20.04-202103211940
LABEL maintainer="Richard Davis <crashvb@gmail.com>"

# Install packages, download files ...
RUN docker-apt git openssh-client python3 python3-pip tmux && \
	python3 -m pip install --upgrade pip && \
	python3 -m pip install tmuxp && \
	mkdir --parents /root/.tmux /root/.tmuxp && \
	git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm

# Configure python
RUN ln --symbolic /usr/bin/python3.8 /usr/bin/python

CMD ["/usr/bin/tmux", "new-session", "-s", "default"]
