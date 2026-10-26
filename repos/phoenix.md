# phoenix

**仓库**：[Arize-ai/phoenix](https://github.com/Arize-ai/phoenix)
**分类**：AgentOps / 可观测与评测
**Stars**：12k+
**Forks**：1,200+
**协议**：Elastic License 2.0（ELv2）
**语言**：Python
**出品方**：Arize AI

> **一句话**：基于 OpenTelemetry 的 AI 可观测与评测平台——追踪、评测、数据集、实验和 Playground 一应俱全，本地一条命令即可启动。

## 是什么

Arize Phoenix 是 Arize 的 **开源 AI 可观测平台**，面向实验、评测和排障；需要托管的生产工作流则有 Arize AX，两者可共用同一套 OpenTelemetry / OpenInference 埋点。Phoenix 与厂商和语言无关，可在本地、容器或云上运行。

## 核心特性

- **追踪**：基于 OpenTelemetry 的 LLM 应用运行时追踪
- **评测**：用 LLM 对响应与检索做基准评估
- **数据集与实验**：版本化数据集，跟踪提示词、模型、检索的变化
- **Playground 与提示词管理**：比较模型、调参、重放已追踪的调用，版本与标签管理
- **PXI**：内置的 AI 工程 Agent，用于调试追踪、迭代提示词
- **远程 MCP Server**：让 Claude Code、Cursor 等直连 Phoenix 查询追踪、数据集和实验
- 启动简单：`pip install arize-phoenix` 后 `phoenix serve`，或 `uvx arize-phoenix serve`

## 适合场景

- 想在本地快速起一个可观测与评测环境做实验排障
- 已使用 OpenTelemetry / OpenInference 的团队
- 希望让编码 Agent 通过 MCP 直接查询追踪数据

## 注意事项

- 协议为 Elastic License 2.0，非 OSI 意义的开源，商用托管等场景需留意限制
- 偏实验与排障；托管生产能力由 Arize AX 提供
- 自托管可选 Docker、Helm 等多种方式，按需选择
