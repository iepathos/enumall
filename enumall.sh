#!/bin/bash

docker run -t -v words:/words --env-file .env enumall $@