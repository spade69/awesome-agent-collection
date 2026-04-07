# everything-claude-code

**仓库**：[affaan-m/everything-claude-code](https://github.com/affaan-m/everything-claude-code)
**分类**：工具配置 / Claude Code 生态
**Stars**：140,000+
**Forks**：21,000+
**贡献者**：170+
**协议**：MIT

> **一句话**：把 10 个月真实产品开发经验打包成可即装即用的 Claude Code 配置，跨会话记忆 + 自动安全审计开箱即得。

## 是什么

由 Anthropic 黑客松获胜者开源的 **Claude Code 完整配置集合**，本质是 10 个月真实产品开发中积累的最佳实践的系统化整理，可安装即用。

兼容：Claude Code、Codex、Cursor、OpenCode、Gemini 及其他 AI 编程工具。

## 主要模块

| 模块 | 规模 | 内容 |
|------|------|------|
| `agents/` | 36 个子代理 | planner、architect、code-reviewer、security-reviewer 等全场景覆盖 |
| `skills/` | 60+ 技能 | 编程规范、TDD、LLM 工程、架构设计、商业应用 |
| `commands/` | 79 个斜杠命令 | /plan、/tdd、/multi-execute 多智能体编排 |
| `hooks/` | 自动化触发器 | 会话开始/结束自动保存恢复上下文状态 |
| `rules/` | 强制规范层 | 语言规范、Git 工作流、安全检查 |
| `mcp-configs/` | MCP 配置 | GitHub、Supabase、Vercel、Railway 等预配置接入 |

## 三大核心亮点

**1. 跨会话记忆持久化**
通过 hooks 机制在会话断开/重连时自动加载/保存状态，解决 Claude Code 上下文丢失的核心痛点。

**2. 本能学习系统（Instinct-based Learning v2）**
`/skill-create` 分析 Git 历史自动生成项目专属技能；`/evolve` 将积累的本能聚类成可复用技能，支持跨团队共享，越用越强。

**3. AgentShield 安全审计**
- 1282 项测试、98% 覆盖率、102 条静态分析规则
- 扫描 CLAUDE.md、settings.json、MCP 配置、hooks 中的注入风险
- 支持红队/蓝队对抗模式（3 个 Opus 智能体组成攻击 + 防御 + 审计管道）
- 支持 CI/CD 集成，发现严重问题返回退出码 2

## 注意事项

> 不要同时启用超过 10 个 MCP，否则有效上下文从 200k 压缩到 70k。
