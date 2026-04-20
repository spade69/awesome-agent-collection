# Awesome AI Agent Collection

精选 AI Agent 相关 GitHub 仓库分析，持续更新。

## Agent 框架

| 项目 | Stars | 一句话 |
|------|-------|--------|
| [hermes-agent](repos/hermes-agent.md) | 28.8k+ | 完成任务后自动把经验写成可复用 Skill，越用越聪明，且不绑定任何模型 |
| [openai-agents-python](repos/openai-agents-python.md) | 20.7k+ | OpenAI 官方轻量多 Agent SDK，Handoff + Guardrails + Human-in-the-Loop，100+ LLM 可接入 |
| [adk-python](repos/adk-python.md) | 18.9k+ | Google 官方 Agent 开发套件，代码优先 + 模型无关，原生支持 A2A 协议和 Vertex AI 一键部署 |

## SuperAgent / 长周期执行

| 项目 | Stars | 一句话 |
|------|-------|--------|
| [deer-flow](repos/deer-flow.md) | 60.7k+ | 字节跳动出品的超长周期 SuperAgent，子智能体 + 沙箱 + 长期记忆驱动跨小时级别任务，曾登顶 GitHub Trending #1 |
| [nanobot](repos/nanobot.md) | 40.1k+ | 港大出品的极简个人 AI Agent，核心循环小到可阅读，支持 10+ IM 渠道 + Dream 记忆，每天多次迭代 |

## 编排框架

| 项目 | Stars | 一句话 |
|------|-------|--------|
| [oh-my-claudecode](repos/oh-my-claudecode.md) | 25.3k+ | 把 Claude Code 从单智能体变成多智能体平台，一句话自然语言启动 32 个专业 Agent 协作 |
| [oh-my-codex](repos/oh-my-codex.md) | 18.3k+ | oh-my-claudecode 的 Codex 版，同一套方法论（deep-interview → plan → team/ralph）面向 OpenAI 用户 |

## 编码 Agent

| 项目 | Stars | 一句话 |
|------|-------|--------|
| [open-swe](repos/open-swe.md) | 9.6k+ | LangChain 开源的企业内部 Coding Agent——复刻 Stripe/Ramp 内部架构，Slack/Linear 触发 + 云沙箱 + 自动开 PR |

## Agent 基础设施

| 项目 | Stars | 一句话 |
|------|-------|--------|
| [openviking](repos/openviking.md) | 22.6k+ | 字节火山引擎出品的 Agent Context 数据库，文件系统范式统一管理记忆/资源/Skill，RAG 可观测可调试 |
| [memvid](repos/memvid.md) | 15.0k+ | 单文件替代 RAG 管道，Rust 实现，0.025ms 检索延迟，给 Agent 提供无需数据库的可移植长期记忆 |

## 最佳实践 / 学习资源

| 项目 | Stars | 一句话 |
|------|-------|--------|
| [12-factor-agents](repos/12-factor-agents.md) | 19.2k+ | 仿照《12-Factor App》写给 LLM 工程师的十二条军规，教你把 Agent 从 Demo 变成生产级软件 |
| [claude-howto](repos/claude-howto.md) | 22.4k+ | 10 个模块带你从零到精通 Claude Code，每个特性配可直接 copy 用的模板 |
| [everything-claude-code](repos/everything-claude-code.md) | 140k+ | 把 10 个月产品开发经验打包成可即装即用的 Claude Code 配置，跨会话记忆 + 安全审计开箱即得 |
| [system_prompts_leaks](repos/system_prompts_leaks.md) | 37.7k+ | 想知道 Claude/GPT/Gemini 背后在偷偷说什么？这里全有 |

---

## 贡献

欢迎提交 PR 补充新的 AI Agent 相关仓库分析。格式参考 `repos/` 目录下已有文件，包含：仓库基本信息、定位、核心特性、价值和注意事项。
