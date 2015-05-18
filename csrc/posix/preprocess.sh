#!/bin/bash

L=../..

P="$1"
F="$2"
[ "$P" ] || P="$($L/.mgit/platform.sh)"
[ "$P" ] || exit 1
[ "$F" ] || F="posix_$P.lua"
echo "$F"

[ $P = osx32 ] && m32=-m32

INCPATH1=
INCPATH2=
[ $P = osx32 -o $P = osx64 ] && {
	INCPATH1="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include"
	INCPATH2="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/6.0/include"
}

cat_headers() {
	cat headers | while read h; do
		echo "#include <$h>"
	done
}

precompile() {
	gcc $m32 -E -dD -D_SVID_SOURCE -D_POSIX_C_SOURCE=200112L -xc - \
	| grep -v '^$' \
	| grep -v '#define _' \
	| grep -v '#undef' \
	| sed "s%$INCPATH1/%%g" \
	| sed "s%$INCPATH2/%%g" \
	| sed 's/__asm\(.*\)//g' \
	| "$L/luajit" precompile.lua > "$F"
}

cat_headers | precompile
