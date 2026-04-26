#!/bin/bash
python3 - << 'EOF'
import os, json, time

last_file = '/Users/linzhida/Work/zd-projects/awesome-agent-collection/.claude/last_update.txt'
try:
    with open(last_file) as f:
        last = float(f.read().strip())
    days = (time.time() - last) / 86400
    needs_update = days >= 7
except FileNotFoundError:
    needs_update = True
    days = 999

if needs_update:
    with open(last_file, 'w') as f:
        f.write(str(time.time()))
    msg = (
        f'距上次更新 awesome-agent-collection 已过去 {int(days)} 天。'
        '请在本次会话中自动执行一次更新：'
        '用 curl 搜索 GitHub API 查找新的 AI Agent 相关热门仓库（stars 1k+，近期活跃），'
        '对比 repos/ 目录中已有项目，将尚未收录的新项目写入 repos/ 并更新 README.md，最后 git commit。'
    )
    print(json.dumps({
        'hookSpecificOutput': {
            'hookEventName': 'SessionStart',
            'additionalContext': msg
        }
    }))
EOF
