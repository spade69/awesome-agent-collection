# eigent

**仓库**：[eigent-ai/eigent](https://github.com/eigent-ai/eigent)
**分类**：SuperAgent / 长周期执行
**Stars**：14.8k+
**Forks**：1,700+
**协议**：Apache 2.0
**语言**：TypeScript / Python
**出品方**：CAMEL-AI

> **一句话**：CAMEL-AI 出品的开源 Cowork 桌面应用，本地部署一支"多 Agent 员工团队"并行处理任务，Claude Cowork / Codex 的免费本地替代品。

## 是什么

Eigent 是构建在 CAMEL-AI 多 Agent 研究框架之上的**桌面协作应用**，把"雇佣一队 AI 员工"的概念产品化：用户在本地桌面应用里配置和管理多个 Agent，让它们并行处理复杂工作流的不同部分，而不是排队等一个 Agent 顺序执行。

## 核心特性

| 特性 | 说明 |
|------|------|
| **多 Agent Workforce** | 并行执行任务而非单 Agent 串行，明显提速复杂工作流 |
| **单 Agent Harness 模式** | 简单任务也可只用一个 Meta Agent 专注处理 |
| **本地部署** | 数据不出本机，隐私保护优先 |
| **模型无关** | 任意模型可接入，不绑定厂商 |
| **内置浏览器 + MCP + Skill** | 开箱支持网页操作、MCP 协议扩展和技能库 |

## 适合场景

- 想要 Claude Cowork / OpenAI Codex 式多 Agent 协作体验，但要求本地部署、免订阅
- 复杂任务可拆分为多个并行子任务（调研 + 写代码 + 整理文档同时进行）
- 已在用 CAMEL-AI 框架，想要开箱即用的桌面壳而非自己搭 UI

## 注意事项

- 依赖 CAMEL-AI 底层框架，深度定制需要同时理解上游框架概念
- 多 Agent 并行对本地算力/API 并发额度要求更高，轻量任务用单 Agent 模式更省资源
