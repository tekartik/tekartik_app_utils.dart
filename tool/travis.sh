#!/bin/bash

# Fast fail the script on failures.
set -e

dartanalyzer --fatal-warnings \
  lib/app_host_target.dart \
  lib/json/json_pack.dart \

pub run test -p vm,firefox,chrome