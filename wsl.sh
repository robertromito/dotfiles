#!/bin/bash
# Setup file for Windows Subsystem for Linux
grep -q "export DOCKER_HOST=tcp://localhost:2375" ~/.bashrc || echo "export DOCKER_HOST=tcp://localhost:2375" >> ~/.bashrc