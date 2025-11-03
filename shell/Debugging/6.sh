#!/bin/bash -x

debug() {
  echo "Executing: $@"
  $@
}
debug ls
debug uptime
