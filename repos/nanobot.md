# nanobot

**仓库**：[HKUDS/nanobot](https://github.com/HKUDS/nanobot)
**分类**：Agent 运行时 / 个人 AI 助手
**Stars**：40,100+
**Forks**：7,000+
**协议**：MIT
**语言**：Python 3.11+
**pip**：`nanobot-ai`
**出品方**：香港大学数据科学实验室（HKUDS）

> **一句话**：在 OpenClaw / Claude Code / Codex 精神下打造的极简个人 AI Agent——核心循环小到可阅读，同时支持多渠道、记忆、MCP，每天发版，活跃度极高。

## 是什么

nanobot 是一个开源的**超轻量个人 AI Agent**，核心设计理念是"保持 agent 循环小且可读"，同时不牺牲实用性。从本地启动到长期运行的个人助手，overhead 极低。

2026 年 2 月发布后持续高速迭代，截至 4 月已迭代超过 60 个版本，平均每天多次更新。

## 核心功能

| 功能 | 说明 |
|------|------|
| **多渠道支持** | Telegram、Slack、Feishu（飞书）、微信、WeCom、QQ、Discord、Matrix、DingTalk、WhatsApp、WebSocket |
| **Dream 两阶段记忆** | 长期记忆自动提取与压缩，越用越聪明 |
| **MCP 原生支持** | 多 MCP Server 并行，资源和 Prompt 自动暴露为工具 |
| **多模型路由** | Anthropic、OpenAI、Gemini、VolcEngine、Kimi、DeepSeek、Mistral、Ollama、Azure OpenAI 等 |
| **自适应思维模式** | Anthropic adaptive thinking，推理可见 |
| **沙箱执行** | 生产级 shell 沙箱，代码安全运行 |
| **Cron 调度** | 内置定时任务，支持人类可读时间描述 |
| **Skills 系统** | Dream 自动发现并学习新 Skill |
| **Langfuse / LangSmith** | 内置 Observability 追踪 |

## 近期重要更新（2026-04）

- **v0.1.5.post1**：Dream skill 自动发现、mid-turn follow-up 注入、WebSocket 渠道
- **v0.1.5**：更稳健的长期任务、Dream 两阶段记忆、生产沙箱、Agent SDK
- **上下文 compact**：会话过长时自动压缩，不中断任务

## 与 hermes-agent 的对比

| 维度 | nanobot | hermes-agent |
|------|---------|--------------|
| 定位 | 极简个人 Agent 运行时 | 自积累 Skill 的通用 Agent |
| 渠道集成 | 10+ IM 渠道 | 无内置渠道 |
| 迭代速度 | 每天多次更新 | 相对稳定 |
| 代码可读性 | 核心设计目标 | 功能优先 |

## 适合场景

- 需要跨多个 IM 渠道统一 AI 助手的个人或团队
- 希望 Agent 长期运行、自动积累记忆的用户
- 想自己读懂并修改 Agent 核心循环的开发者

## 注意事项

- 迭代极快，API 可能频繁变动，建议锁定版本后再部署生产
- 多渠道配置各有不同，初次设置需要一定时间
- Dream 记忆功能需要配置存储后端
