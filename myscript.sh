#!/bin/bash


read -p "Enter the source file location: " source_file

if [ ! -f "$source_file" ]; then
    echo "Source file not found!"
    exit 1
fi

read -p "Enter the destination directory: " destination_dir

mkdir -p "$destination_dir"

timestamp=$(date +"%Y-%m-%d_%H.%M.%S")

backup_file="$destination_dir/backup_${timestamp}.txt"

cp "$source_file" "$backup_file"

if [ $? -eq 0 ]; then
    echo "Backup created successfully: $backup_file"
else
    echo "Backup failed!"
fi
