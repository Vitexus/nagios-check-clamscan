#!/bin/bash

VER=`cat version | perl -ne 'chomp; print join(".", splice(@{[split/\./,$_]}, 0, -1), map {++$_} pop @{[split/\./,$_]}), "\n";'`

dch -b -v $VER --package nagios-check-clamscan
echo $VER > version


debuild -i -us -uc -b

cd ..
publish-deb-packages.sh
