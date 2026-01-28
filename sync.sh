#!/bin/fish
# 使用你正在用的 fish shell

# 如果提供了参数，则作为 commit message；否则默认为 "update"
set msg $argv[1]
if test -z "$msg"
    set msg "update: "(date "+%Y-%m-%d %H:%M:%S")
end

git add .
git commit -m "$msg"
git push origin main