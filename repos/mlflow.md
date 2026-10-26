# mlflow

**仓库**：[mlflow/mlflow](https://github.com/mlflow/mlflow)
**分类**：AgentOps / 可观测与评测
**Stars**：28.5k+
**Forks**：6,400+
**协议**：Apache-2.0
**语言**：Python
**出品方**：MLflow 社区（Linux Foundation 项目）

> **一句话**：老牌 ML 平台扩展到 Agent 时代——一个开源 AI 工程平台，覆盖 Agent 与 LLM 的追踪、评测、提示词优化和 AI Gateway。

## 是什么

MLflow 自称是最大的 **开源 AI 工程平台**，面向 Agent、LLM 和传统 ML 模型，帮助团队调试、评测、监控和优化生产级 AI 应用，同时管控成本和模型访问权限。README 称月下载量超过 6000 万。

## 核心特性

- **可观测**：基于 OpenTelemetry 采集 LLM 应用与 Agent 的完整追踪，支持任意 LLM 提供商和 Agent 框架
- **评测**：50+ 内置指标与 LLM 评审，可自定义，跟踪质量变化并发现回归
- **提示词管理与优化**：Prompt Registry 与 Prompt Optimization
- **AI Gateway**：统一管理成本与模型访问
- **多语言**：支持 Python、TypeScript/JavaScript、Java 等，原生集成 OpenTelemetry 与 MCP
- **快速上手**：`uvx mlflow server` 启动，配合 `mlflow.openai.autolog()` 等自动记录

## 适合场景

- 已在使用 MLflow 做传统 ML 实验管理，希望统一 LLM / Agent 与 ML 的平台
- 需要成熟、被广泛采用的开源可观测与评测底座
- 要对模型访问和成本做集中治理的团队

## 注意事项

- 平台体量大，功能覆盖 ML 与 GenAI 两条线，只用 Agent 追踪时可能偏重
- 部分能力在 Databricks 托管环境中体验更完整
- 新功能迭代快，注意核对所用版本的文档
