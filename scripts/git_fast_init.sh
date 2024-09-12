#!/bin/bash

echo "這腳本是為了快速 push, 加速開發使用而已"
cd ../ || exit

git init
git add -A
git commit -m "First Commit"
git branch -M main
git remote add origin <enter git url>
git push -u origin main
