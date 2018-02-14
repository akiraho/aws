#!/bin/bash
docker run --rm -it -v `pwd`/../.private/aws:/root/.aws -v `pwd`:/app -w /app awstests_aws bash
