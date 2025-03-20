#!/bin/bash

echo error
set -e

echo Pulling the latest changes from the main branch
git pull origin main

echo  Add all changes to the staging area
git add .

echo "Enter your commit message:"
read commit_message

echo Commiting with the provided message
git commit -m "$commit_message"

echo Pushing changes to the main branch
git push origin main
