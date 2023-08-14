# --- Base Image pull from DockerHub ---
FROM ubuntu:latest

# --- variable ---
ARG python_version="3.11"

# --- Shell & ENV Setting ---
SHELL ["/bin/bash", "-c"]
ENV HOME /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/bin:$PATH

# --- OS Package Update ---
RUN apt update

# --- OS Package upgrade ---
RUN apt upgrade -y

# --- OS Timezone Setting ---
RUN apt install -y tzdata
ENV TZ=Asia/Tokyo

# --- OS Basic Package Install ---
RUN apt install -y vim git

# --- pyenv install ---
RUN apt install -y --no-install-recommends \
    make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev \
    wget curl llvm libncurses5-dev xz-utils

RUN git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv

RUN echo 'eval "$(pyenv init -)"' >> ~/.bashrc
RUN eval "$(pyenv init -)"

# --- python install
RUN pyenv install ${python_version}
RUN pyenv global ${python_version}

# --- pip package install ---
RUN pip install -U pip
