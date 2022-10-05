#!/bin/bash
pwd=$(pwd)
echo "REACT_SCRIPTED_HOME=\"$pwd\"" >>~/.bashrc
echo "alias REACT-SETUP=\"sh $REACT_SCRIPTED_HOME/create-react-app-script.sh $1\"" >>~/.bashrc
source ~/.bashrc
