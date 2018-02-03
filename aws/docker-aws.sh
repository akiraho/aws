#!/bin/bash
docker run --rm -it -v `pwd`/.private/aws:/root/.aws awstests_aws bash
