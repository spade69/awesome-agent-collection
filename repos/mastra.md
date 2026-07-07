# mastra

**仓库**：[mastra-ai/mastra](https://github.com/mastra-ai/mastra)
**分类**：Agent 框架 / TypeScript 全栈
**Stars**：25.9k+
**Forks**：1,900+
**协议**：Elastic-2.0
**语言**：TypeScript
**出品方**：Mastra（Gatsby 原班人马）

> **一句话**：Gatsby 团队用打造前端生态的经验做 AI Agent 框架，TypeScript 原生、内置工作流引擎 + RAG + 评测，是 Node.js 生态最完整的 Agent 开发平台。

## 是什么

Mastra 由 Gatsby.js 的创始团队打造，把前端工程化的经验带入 AI Agent 领域。它定位为 **TypeScript 生态的一站式 Agent 开发框架**，覆盖从 Agent 定义、工具集成、工作流编排、RAG 到评测部署的完整链路。

与 Python 阵营的框架相比，Mastra 在 Node.js/TypeScript 项目中有天然优势，无需跨语言调用。

## 核心模块

| 模块 | 说明 |
|------|------|
| **Agent** | 带记忆、工具调用的对话 Agent |
| **Workflow** | 图驱动的工作流，支持分支、循环、并行 |
| **RAG** | 内置向量存储和检索，支持多种 embedding |
| **Tools** | 类型安全的工具定义，Zod schema 校验 |
| **Memory** | 短期对话记忆 + 长期语义记忆 |
| **Evals** | 内置评测框架，衡量 Agent 输出质量 |

## 核心功能

- **TypeScript 原生**：完整类型支持，IDE 补全，编译期错误检查
- **工作流引擎**：比 LangGraph 轻量，比简单链式调用强大，内置人工审批节点
- **多 LLM 支持**：通过 Vercel AI SDK 接入 OpenAI、Anthropic、Google 等
- **本地开发体验**：内置 playground UI，可视化调试 Agent 和工作流
- **向量数据库集成**：支持 Pinecone、Pgvector、Chroma 等

## 与 LangGraph (TypeScript) 的对比

| 维度 | Mastra | LangGraph.js |
|------|--------|-------------|
| 定位 | 全栈 Agent 平台 | 图编排库 |
| 内置功能 | RAG、记忆、评测一体 | 专注编排 |
| 学习曲线 | 中等 | 较高 |
| 生态成熟度 | 新兴但快速成长 | LangChain 背书 |

## 适合场景

- TypeScript/Node.js 技术栈的团队
- 需要工作流 + RAG + Agent 一体化的项目
- 希望有本地可视化调试界面的开发者

## 注意事项

- Elastic-2.0 协议：生产部署免费，但不能基于 Mastra 构建竞品
- 相对较新，部分 API 仍在迭代中
- 社区生态不如 Python 框架丰富
