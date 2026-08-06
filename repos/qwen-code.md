# qwen-code

**仓库**：[QwenLM/qwen-code](https://github.com/QwenLM/qwen-code)
**分类**：编码 Agent
**Stars**：26.8k+
**Forks**：2,800+
**协议**：Apache 2.0
**语言**：TypeScript
**出品方**：阿里巴巴 Qwen 团队
**npm**：`@qwen-code/qwen-code`

> **一句话**：阿里 Qwen 官方终端编码 Agent，框架与模型同源演进、永不锁厂商——原生打通 OpenAI/Anthropic/Gemini/Qwen 及本地模型，运行时随意切换。

## 是什么

Qwen Code 是阿里巴巴 Qwen 团队官方出品的终端 AI 编码 Agent，定位类似 Google 的 Gemini CLI 或 Anthropic 的 Claude Code，但完全开源且不绑定单一模型厂商。项目强调"框架和模型一起开源、一起演进"，避免闭源 Harness 与模型强绑定带来的锁定问题。

## 核心特性

| 特性 | 说明 |
|------|------|
| **开箱即 Agentic** | 内置 Auto-Memory、Auto-Skills、SubAgents、Agent Teams，零配置即用 |
| **多协议支持** | OpenAI / Anthropic / Gemini / Qwen API 任选，也支持 Ollama/vLLM 本地模型 |
| **运行时切换模型** | 任务中途可换模型，不重启会话 |
| **多形态覆盖** | 终端 CLI + IDE 插件 + 桌面应用 + Daemon 模式 + SDK + IM 机器人 |

## 适合场景

- 需要在多个模型厂商间自由切换、不想被单一 API 锁定的团队
- 已用 Qwen 系模型做业务的场景，官方 Harness 通常适配最深
- 想要 SubAgent/Agent Teams 之类多智能体协作能力但仍偏好终端工作流

## 注意事项

- 作为模型厂商官方 CLI，默认体验对 Qwen 系模型优化最深，其他模型效果需自行验证
