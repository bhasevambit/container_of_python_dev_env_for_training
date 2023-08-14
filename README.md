# Container of Python Development Environment for Training

This repository is Container of Python Development Environment for Training.

## Usage

### Docker container build

`docker build -t container_of_python_dev_env_for_training:latest .`

### Docker container create

`docker container create -it --name container_of_python_dev_env_for_training container_of_python_dev_env_for_training:latest /bin/bash`

### Docker container start

`docker container start -ai container_of_python_dev_env_for_training`

### Docker container remove

`docker container remove container_of_python_dev_env_for_training`

### Docker image remove

`docker image rm container_of_python_dev_env_for_training`
