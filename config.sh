#!/bin/bash
############################
# This script creates symlinks from the home directory to config
# files or dotfiles in this project
############################

dir=$(dirname $(realpath $0))
source_dir=$dir/config
backup_dir=$dir/config_backup

cd $dir/config
leaf_dirs=$(find -type d -links 2 | sed 's/\.\///')
files=$(find -type f | sed 's/\.\///')
cd ..

echo "creating backup directories:"
for leaf_dir in $leaf_dirs; do
	echo "  $backup_dir/$leaf_dir"
	mkdir -p $backup_dir/$leaf_dir
done

# moving any existing files to backup directory
echo "moving existing files to the backup directory:"
for file in $files; do
	if [ -e ~/$file ]
	then
		echo "  ~/$file  ->  $backup_dir/$file"
		mv ~/$file $backup_dir/$file
	fi
done

echo "creating symlinks to $source_dir in home directory:"
for file in $files; do
	echo "  ~/$file  ->  $source_dir/$file" 
	ln -sf $source_dir/$file ~/$file
done

