#!/bin/bash
if [ $# == 1 ]
then
git config --global user.email ilmarsbulis@gmail.com
git add .
#git commit -m "20171011_9_50"
git commit -m $1
git push origin master
fi

