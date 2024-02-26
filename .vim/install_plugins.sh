#!/bin/bash

PLUGIN_PATH=$HOME/.vim/pack/plugins

mkdir -p $PLUGIN_PATH/start $PLUGIN_PATH/opt
cd $PLUGIN_PATH
git clone https://github.com/sjl/badwolf start/badwolf
git clone https://github.com/ycm-core/YouCompleteMe opt/ycm
git clone https://github.com/tpope/vim-vinegar opt/vinegar
git clone https://github.com/tpope/vim-surround opt/surround
git clone https://github.com/tpope/vim-fugitive opt/fugitive
git clone https://github.com/tpope/vim-dispatch opt/dispatch
git clone https://github.com/tpope/vim-commentary opt/commentary
git clone https://github.com/ctrlpvim/ctrlp.vim opt/ctrlp
git clone https://github.com/szw/vim-maximizer opt/maximizer
git clone https://github.com/rhysd/vim-clang-format opt/clang-format
