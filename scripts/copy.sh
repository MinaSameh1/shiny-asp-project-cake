#!/bin/sh

set -x

XPDIR="/home/mina/Documents/stuff/college/y4/asp.net/project/mount/Documents?and?Settings/admin/Desktop/project/"

baseDir="/home/mina/Documents/stuff/college/y4/asp.net/project/."

Mount="mount/"

[ $1 -eq 1 ] && rsync --protect-args -aruzv $XPDIR $baseDir
[ $1 -eq 2 ] && rsync --exclude $Mount --protect-args -aruzv $baseDir $XPDIR 
