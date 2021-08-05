#!/bin/bash

editor="code"
projects_dir=$HOME/projects/
projects_list=$(ls $projects_dir -1)
get_project=$(ls $projects_dir -1 | dmenu -i -l 10 -p "Projects : ")
full_path=$projects_dir$get_project/

if [["$projects_list" = *"$get_project"*]]; then 
	echo $full_path
	$editor $full_path
else
	mkdir $full_path
	$editor $full_path
fi
