FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive
ARG USERNAME=dev

RUN apt-get update && \
    apt-get install -y --no-install-recommends ansible ca-certificates curl git sudo && \
    rm -rf /var/lib/apt/lists/* && \
    (userdel -r ubuntu 2>/dev/null || true) && \
    useradd --create-home --shell /bin/bash --groups sudo "${USERNAME}" && \
    echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" > "/etc/sudoers.d/${USERNAME}" && \
    chmod 0440 "/etc/sudoers.d/${USERNAME}"

USER ${USERNAME}
WORKDIR /home/${USERNAME}/playbook

COPY --chown=${USERNAME}:${USERNAME} . .

CMD ["bash"]
