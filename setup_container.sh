#!/usr/bin/bash
# Copyright (c) 2023-2024 iiPython


# Check if docker isn't installed
if ! command -v docker &> /dev/null; then
  echo "Docker is not installed" 1>&2
  exit 1
fi

# Run container
DOCKER_BULDKIT=1 docker build --network host -t my-pyinstaller .
