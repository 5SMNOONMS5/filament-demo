#!/bin/bash

echo "這腳本是為了快速 push, 加速開發使用而已"
cd "../" || exit

git add -A
git commit -m "Update"
