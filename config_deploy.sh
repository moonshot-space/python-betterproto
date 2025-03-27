#!/bin/bash

poetry config repositories.artifactory-memsi-pypi https://moonshot.jfrog.io/artifactory/api/pypi/memsi-pypi

poetry config http-basic.artifactory-memsi-pypi $USER@moonshot.space <your-token>

poetry publish --build -r artifactory-memsi-pypi
