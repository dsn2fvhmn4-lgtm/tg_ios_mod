#!/bin/bash
# Helper script to initialize git and push to GitHub

if [ -z "$1" ]; then
    echo "Usage: ./setup_github.sh <your_github_repo_url>"
    echo "Example: ./setup_github.sh https://github.com/username/Telegram-iOS-Custom.git"
    exit 1
fi

REPO_URL=$1

git init
git add .
git commit -m "Initial commit with custom gifts local spoofing and GitHub Actions"
git branch -M master
git remote add origin $REPO_URL
git push -u origin master --force

echo "Done! Now go to your GitHub repository -> Actions -> Build Telegram iOS -> Run workflow."
