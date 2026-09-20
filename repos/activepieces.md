# activepieces

**仓库**：[activepieces/activepieces](https://github.com/activepieces/activepieces)
**分类**：编排框架 / 低代码平台
**Stars**：24.6k+
**Forks**：4,200+
**协议**：MIT（EE 目录另有商业授权）
**语言**：TypeScript
**出品方**：Activepieces

> **一句话**：开源的 AI 工作流自动化平台——拖拽编排 Agent 与工具调用，内置约 400 个 MCP 服务器，是 Zapier 的 AI 原生开源替代品。

## 是什么

Activepieces 是一个 **开源工作流自动化平台**，对标 Zapier / Make，但从设计上就为 AI Agent 和 MCP 而生。用户通过可视化拖拽把触发器、工具、AI 步骤串成自动化流程，无需写代码即可让 Agent 调用外部服务完成任务。

它的差异化在于 **MCP 原生 + 生态开放**：内置约 400 个 MCP 服务器/连接器，Agent 可以直接调用海量第三方能力；同时以 TypeScript 编写连接器（pieces），社区可自由扩展。

## 核心特性

- **可视化编排**：拖拽式搭建自动化流程，低代码/无代码
- **~400 MCP 服务器**：为 Agent 提供大量开箱即用的工具连接
- **AI 步骤**：把 LLM 调用、Agent 决策嵌入工作流节点
- **可扩展 pieces**：用 TypeScript 编写自定义连接器
- **可自托管**：开源，支持私有部署掌控数据

## 适合场景

- 想用无代码方式给 Agent 接入大量第三方工具
- 需要一个可自托管、AI 原生的 Zapier 替代品
- 把 LLM/Agent 能力嵌入企业自动化流程

## 注意事项

- 企业版（packages/ee/）目录另有商业授权，非纯 MIT
- 复杂流程的调试与可观测仍需投入
- 自托管涉及运维与连接器凭证管理成本
