#!/bin/sh

libtoolize || glibtoolize
aclocal
automake --add-missing
autoupdate
autoconf
