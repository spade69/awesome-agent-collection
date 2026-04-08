# oh-my-codex

**仓库**：[Yeachan-Heo/oh-my-codex](https://github.com/Yeachan-Heo/oh-my-codex)
**分类**：编排框架 / OpenAI Codex 生态
**Stars**：18,300+
**Forks**：1,700+
**协议**：MIT
**主语言**：TypeScript（91.9%）
**版本**：v0.12.1（2026 年 4 月）
**周增 Stars**：14,101

> **一句话**：oh-my-claudecode 的 Codex 版——把 OpenAI Codex CLI 从单智能体变成有工作流、有角色分工、有持久状态的多智能体平台。

## 是什么

同一作者（Yeachan-Heo）为 OpenAI Codex CLI 打造的工作流编排层，与 oh-my-claudecode 理念完全一致，但面向 Codex 用户。

> "OMX is a workflow layer for OpenAI Codex CLI. It keeps Codex as the execution engine."

## 核心工作流

四个规范命令构成完整的任务闭环：

| 命令 | 作用 |
|------|------|
| `$deep-interview` | 需求澄清——明确范围、边界、非目标 |
| `$ralplan` | 方案评审——生成并审批架构和实现计划 |
| `$ralph` | 持久完成——一个 Owner 循环推进直到任务完成 |
| `$team N:role` | 并行执行——N 个 Executor 协同完成大任务 |

## 主要特性

- **团队运行时**：基于 tmux/worktree 的持久多智能体协调（macOS/Linux），Windows 用 psmux
- **角色与技能**：可复用的 role 关键词 + skill 文件，放在 `.omx/` 下持久化
- **原生 Hooks 集成**：`.codex/hooks.json` 注册生命周期钩子（PreToolUse、PostToolUse 等）
- **HUD 监控**：`omx hud --watch` 实时查看 Agent 运行状态
- **探索模式**：`omx explore` 只读仓库分析；`omx sparkshell` 有界 shell 验证

## 与 oh-my-claudecode 的关系

| 维度 | oh-my-claudecode | oh-my-codex |
|------|-----------------|-------------|
| 执行引擎 | Claude Code | OpenAI Codex CLI |
| 目标用户 | Anthropic 用户 | OpenAI 用户 |
| 核心概念 | 完全相同（deep-interview → plan → team/ralph） | 完全相同 |
| 状态存储 | `.claude/` | `.omx/` |

同一套方法论的两个实现——如果你两个工具都用，可以无缝切换。

## 注意事项

- 依赖 tmux（macOS/Linux）或 psmux（Windows）
- Intel Mac 启动时可能触发 syspolicyd/trustd CPU 峰值，可用 `xattr -dr com.apple.quarantine $(which omx)` 缓解
- 项目较新，API 可能变化较快
