#!/usr/bin/bash

# 检查是否提供了参数
if [ -z "$1" ]; then
    # 如果没有参数，使用当前日期和时间作为 commit 消息
    commit_message="Auto-commit: $(date '+%Y-%m-%d %H:%M')"
else
    # 如果有参数，使用提供的参数作为 commit 消息
    commit_message="$1"
fi

git add .
git commit -m "$commit_message"
git push

quarto render 

./sync.sh