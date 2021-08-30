# tmux-docker

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

