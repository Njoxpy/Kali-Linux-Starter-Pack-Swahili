#!/bin/bash

# naviagate into home directory
cd ~

# get into /c where all project should be stored then project directory
cd /c

cd projects

# after navigating into project folder then allow user to choose on which language does his project comes from

# allow user to enter project name
read -p "Enter project name: " projectName

# create project directory
mkdir "$projectName"
cd "$projectName"

# create folders for CSS and JS
mkdir css js

# create HTML, CSS and JS Files
touch index.html css/styles.css js/script.js README.md images/me.jpg

# display success message and location in which folder has been created
echo "Project '$projectName' created successfully at this location: "

# open editor
# code .
firefox index.html

# Write a script to see if the folder exist or not