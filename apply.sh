#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"
cp .vimrc ~/.vimrc
cp .ideavimrc ~/.ideavimrc
cp .vsvimrc ~/.vsvimrc