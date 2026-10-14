# agentops

**仓库**：[AgentOps-AI/agentops](https://github.com/AgentOps-AI/agentops)
**分类**：AgentOps / 可观测与评测
**Stars**：5.9k+
**Forks**：600+
**协议**：MIT
**语言**：Python
**出品方**：AgentOps

> **一句话**：面向 AI Agent 的可观测与开发者工具——两行代码接入，获得会话回放、成本追踪和主流 Agent 框架的原生集成。

## 是什么

AgentOps 是面向 AI Agent 的 **可观测与开发者工具平台**，帮助开发者从原型到生产构建、评测和监控 Agent。README 称 AgentOps 应用本身以 MIT 协议开源（见仓库 app 目录），也支持自托管 Dashboard 与 API 后端。

## 核心特性

- **回放分析与调试**：逐步展示 Agent 执行图
- **LLM 成本管理**：追踪各模型提供商的花费
- **框架集成**：原生支持 CrewAI、AG2（AutoGen）、Agno、LangGraph、OpenAI Agents SDK、LangChain 等
- **自托管**：可在自己的云上运行完整应用（Dashboard + API）
- **接入简单**：`pip install agentops`，`agentops.init(...)` 即可自动记录 LLM 调用

## 适合场景

- 使用 CrewAI、AG2、Agno 等多 Agent 框架，想要快速接入的会话回放
- 需要按会话查看 Agent 执行过程与 LLM 花费
- 想要轻量 SDK 加 Dashboard 的方案

## 注意事项

- 默认使用其托管 Dashboard 需要 API Key，自托管需另行部署 app
- 评测能力相比 DeepEval、Langfuse 等偏弱，更侧重监控与回放
- README 中部分集成文档指向 v1 版本，接入前核对当前版本文档
