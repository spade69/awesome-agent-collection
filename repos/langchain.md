# langchain

**仓库**：[langchain-ai/langchain](https://github.com/langchain-ai/langchain)
**分类**：Agent 框架
**Stars**：141.9k+
**Forks**：23,500+
**协议**：MIT
**语言**：Python
**出品方**：LangChain Inc.

> **一句话**：LLM 应用开发的事实标准框架，把模型、工具、记忆、检索拼装成 Agent 的"乐高底座"，生态覆盖最广、集成最全。

## 是什么

LangChain 是最早也是最流行的 **LLM 应用编排框架**。它把大模型调用抽象成可组合的模块（Model / Tool / Retriever / Memory），让开发者用统一接口对接上百家模型和数据源，快速构建从 Chatbot 到复杂 Agent 的各类应用。官方已将定位从"LLM 框架"升级为 **the agent engineering platform**（Agent 工程平台）。

## 核心能力

| 模块 | 作用 |
|------|------|
| **Models** | 统一接口对接 OpenAI / Anthropic / Google 等上百家模型 |
| **Tools / Toolkits** | 海量现成工具集成，Agent 即插即用 |
| **Retrievers** | RAG 检索抽象，对接各类向量库与文档源 |
| **Memory** | 会话记忆管理 |
| **LCEL** | LangChain Expression Language，声明式拼装 Chain/Agent |
| **生态** | 配套 LangGraph（有向图编排）、LangSmith（可观测/评测） |

## 生态位

- **LangChain**：应用层组件与集成（本仓库）
- **LangGraph**：状态机 / 有向图驱动的生产级 Agent 运行时
- **LangSmith**：Tracing、评测、Prompt 管理的商业化平台

## 适合场景

- **快速原型**：想接一个模型 + 工具 + 检索，几行代码起步
- **多模型切换**：需要在不同 LLM 供应商之间无缝迁移
- **RAG 应用**：文档问答、知识库检索
- **教学入门**：文档与社区资料最丰富，学习 Agent 概念的首选

## 注意事项

- 抽象层多、版本迭代快，历史上有过较大 breaking change（`langchain` → `langchain-core` / `langchain-community` 拆分）
- 复杂有状态 Agent 建议直接用 LangGraph，而非纯 LangChain Chain
- 抽象带来便利也带来"黑盒"，深度定制时需理解底层实现
