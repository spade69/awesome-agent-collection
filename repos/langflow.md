# langflow

**仓库**：[langflow-ai/langflow](https://github.com/langflow-ai/langflow)
**分类**：Agent 编排 / 可视化低代码平台
**Stars**：151.9k+
**Forks**：16,000+
**协议**：MIT
**语言**：Python + TypeScript
**出品方**：Langflow AI（DataStax 旗下）

> **一句话**：拖拽式可视化构建 AI Agent 和工作流的低代码平台，基于 LangChain 生态，从原型到生产一站式完成，是目前 Stars 最高的 Agent 可视化工具。

## 是什么

Langflow 是基于 LangChain 的**可视化 AI 工作流构建平台**，让开发者和技术团队可以通过拖拽组件、连线的方式快速构建 RAG 管道、Agent 工作流、多模型应用，无需手写大量模板代码。

2024 年被 DataStax 收购后进入企业级市场，同时保持开源。是目前生态最完善的 Agent 可视化平台之一。

## 核心功能

| 功能 | 说明 |
|------|------|
| **可视化画布** | 拖拽组件构建复杂工作流，实时预览 |
| **组件库** | 100+ 内置组件（LLM、工具、向量库、数据源等） |
| **API 一键导出** | 工作流自动生成 REST API，直接集成到应用 |
| **多模型支持** | OpenAI、Anthropic、Gemini、本地模型均可 |
| **RAG 构建** | 内置文档解析、向量化、检索完整链路 |
| **版本管理** | 工作流版本历史，支持回滚 |

## 与 Dify 对比

| 维度 | Langflow | Dify |
|------|---------|------|
| 定位 | 开发者/技术团队 | 开发者 + 非技术用户 |
| 底层生态 | LangChain 深度集成 | 框架无关 |
| 部署灵活性 | 高，自托管友好 | 高，有云服务 |
| 企业功能 | DataStax 云版付费 | 企业版付费 |

## 适合场景

- 快速原型验证 RAG 或 Agent 方案
- 技术团队可视化调试复杂的 LangChain 工作流
- 需要将 AI 工作流以 API 形式暴露给其他系统

## 注意事项

- 重度依赖 LangChain，LangChain 的复杂性和版本问题会传导过来
- 视觉画布在工作流极复杂时容易变得难以维护
- DataStax 云服务付费，自托管需维护 Python 后端
