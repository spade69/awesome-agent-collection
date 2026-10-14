# langfuse

**仓库**：[langfuse/langfuse](https://github.com/langfuse/langfuse)
**分类**：AgentOps / 可观测与评测
**Stars**：35.8k+
**Forks**：3,900+
**协议**：MIT（ee/ 目录下企业功能另有授权）
**语言**：TypeScript
**出品方**：Langfuse（现属 ClickHouse）

> **一句话**：开源 LLM 工程平台——把追踪、评测、提示词管理、数据集和 Playground 放进一个可自托管的平台，团队协作开发、监控和调试 AI 应用。

## 是什么

Langfuse 是一个 **开源 LLM 工程平台**，帮助团队协作地开发、监控、评测和调试 AI 应用。可用 Docker Compose 几分钟自托管，也提供托管的 Langfuse Cloud。底层基于 ClickHouse 构建，2026 年 1 月起成为 ClickHouse 的一部分。

## 核心特性

- **应用可观测**：接入后采集 LLM 调用及检索、嵌入、Agent 动作等逻辑，用于排查复杂日志与用户会话
- **提示词管理**：集中管理、版本控制、协作迭代，服务端与客户端缓存避免增加延迟
- **评测**：支持 LLM-as-a-judge、代码评估器、用户反馈、人工标注和基于 API/SDK 的自定义评测流水线
- **数据集**：构建测试集与基准，用于上线前测试和结构化实验
- **LLM Playground**：从追踪里的坏结果直接跳转调试提示词与模型配置
- **完整 API**：提供 OpenAPI 规范、Postman 集合，以及 Python、JS/TS 类型化 SDK

## 适合场景

- 需要自托管、数据不出内网的 LLM / Agent 可观测平台
- 希望在一个平台里同时做追踪、提示词版本管理和评测
- 想基于开放 API 搭建定制化 LLMOps 流程的团队

## 注意事项

- README 标注 MIT，但 `ee/` 目录下的企业功能使用单独协议，集成前需核对
- 生产环境推荐用 Helm 部署在 Kubernetes，自托管有 ClickHouse 等组件的运维成本
- 也提供托管 Cloud 版本，按需选择
