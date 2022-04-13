# tmux-docker

[![version)](https://img.shields.io/docker/v/crashvb/tmux/latest)](https://hub.docker.com/repository/docker/crashvb/tmux)
[![image size](https://img.shields.io/docker/image-size/crashvb/tmux/latest)](https://hub.docker.com/repository/docker/crashvb/tmux)
[![linting](https://img.shields.io/badge/linting-hadolint-yellow)](https://github.com/hadolint/hadolint)
[![license](https://img.shields.io/github/license/crashvb/tmux-docker.svg)](https://github.com/crashvb/tmux-docker/blob/master/LICENSE.md)

## Overview

This docker image contains:
* [git](https://git-scm.com/)
* [openssh-client](https://www.openssh.com/)
* [python3](https://www.python.org/)
* [tmux](https://github.com/tmux/tmux)
* [tmuxp](https://github.com/tmux-python/tmuxp)
* [tpm](https://github.com/tmux-plugins/tpm)

## Entrypoint Scripts

None.

## Healthcheck Scripts

None.

## Standard Configuration

### Container Layout

```
/
└─ usr/
   ├─ bin/
   │  └─ tmux
   └─ local/
      └─ bin/
         └─ tmuxp
```

### Exposed Ports

None.

### Volumes

None.

## Development

[Source Control](https://github.com/crashvb/tmux-docker)

