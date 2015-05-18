#!/bin/bash

P1=$1
P2=$2
[ "$P1" ] || P1="$(../../.mgit/platform.sh -32)"
[ "$P2" ] || P2="$(../../.mgit/platform.sh -64)"
diff posix_$P1.lua posix_$P2.lua > $P1-$P2.diff
