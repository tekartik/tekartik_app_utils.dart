#!/usr/bin/env bash

pub build example/appcache
fsdeploy
gswebdeploy build/deploy/example/appcache gs://gs.tk4k.ovh/appcache-dev