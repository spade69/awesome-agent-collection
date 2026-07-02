# haystack

**仓库**：[deepset-ai/haystack](https://github.com/deepset-ai/haystack)
**分类**：编排框架 / RAG + Agent
**Stars**：25,800+
**Forks**：2,900+
**协议**：Apache-2.0
**语言**：Python
**出品方**：deepset

> **一句话**：为生产环境而生的 AI 编排框架，用模块化 Pipeline 显式掌控"检索 / 路由 / 记忆 / 生成"每一环，把 RAG 和 Agent 工作流做成透明可追溯的工业级系统。

## 是什么

Haystack 是 deepset 出品的开源 AI 编排框架，主打 **Context Engineering（上下文工程）**：让开发者对信息如何被检索、排序、过滤、组合、路由到模型有完全透明的控制。它把 RAG 系统、语义搜索、问答、多模态应用和自主 Agent 都统一到可组合的 Pipeline 架构里。

## 核心特性

| 特性 | 说明 |
|------|------|
| **模块化 Pipeline** | 检索 / 索引 / 工具调用 / 记忆 / 评测组件自由拼装，支持循环与分支 |
| **上下文工程** | 对 context 的检索、路由、组织全程可见可追溯，降低幻觉 |
| **模型/厂商无关** | OpenAI、Anthropic、Mistral、Cohere、HF、Bedrock、本地模型自由切换 |
| **可扩展生态** | 统一组件接口，社区可贡献自定义组件 |
| **Hayhooks** | 一键把 Pipeline / Agent 封装为 REST API 或 MCP Server |

## 与其他框架对比

| 维度 | haystack | langgraph | dify |
|------|----------|-----------|------|
| 定位 | 生产级 RAG + Agent 编排 | 状态图 Agent 编排 | 低代码应用平台 |
| 强项 | 检索精度 + 上下文透明 | 复杂状态机 + 持久化 | 可视化 + 开箱运营 |
| 形态 | Python 代码框架 | Python 代码框架 | Web 平台 |

## 适合场景

- 企业级 RAG 系统，需要对检索链路精细调优和溯源
- 语义搜索、问答、多模态应用的生产化落地
- 想要透明可控 Pipeline 而非黑盒 Agent 的团队

## 注意事项

- 相比可视化平台上手门槛更高，需要 Python 工程能力
- 企业级支持与托管平台（Haystack Enterprise）为付费增值服务
