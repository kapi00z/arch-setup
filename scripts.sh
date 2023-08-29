#!/bin/bash

git clone https://github.com/kapi00z/script.git
cd script

bash to-bin.sh to-bin.sh
bash to-bin.sh gitpush.sh

cd ..
rm -rf script

git clone https://github.com/kapi00z/vimrc.git
cd vimrc
bash run.sh

cd ..
rm -rf vimrc