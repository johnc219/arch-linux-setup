#!/bin/bash

dir=$(dirname $(realpath $0))

echo "regenerating installed packages"
yay -Qe > installed_packages.txt

