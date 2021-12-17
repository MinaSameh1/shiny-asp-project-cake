#!/bin/sh

XPDIR="/home/mina/Documents/stuff/college/y4/asp.net/project/mount/Documents?and?Settings/admin/Desktop/project/"

baseDir="/home/mina/Documents/stuff/college/y4/asp.net/project/."

rsync --protect-args -aruzv $XPDIR $baseDir
