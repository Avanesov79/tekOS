# tekOS

# Purpose
A customized [Aurora](https://getaurora.dev/) image with my preferances and bias.
Forked from this [Github repository](https://github.com/ublue-os/image-template)

# How to Use
Rebase to main:
```bash
sudo rpm-ostree rebase ostree-image-signed:docker://ghcr.io/avanesov79/tekos:latest
```
or use
```bash
rpm-ostree rebase ostree-unverified-registry:docker://ghcr.io/avanesov79/tekos:latest
```
first and then rebase to the signed image if it initially fails.

bump 06JAN2025
