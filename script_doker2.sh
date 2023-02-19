#!/bin/bash
set -x
set -e

yum clean all
yum install -y\
git\
make\
gcc-c++\
vim\
ssh\

