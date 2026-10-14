# opik

**仓库**：[comet-ml/opik](https://github.com/comet-ml/opik)
**分类**：AgentOps / 可观测与评测
**Stars**：22.6k+
**Forks**：1,800+
**协议**：Apache-2.0
**语言**：Python
**出品方**：Comet

> **一句话**：Comet 出品的开源 LLM 可观测与评测平台——从 Agent 追踪、评测到生产监控与护栏，一套 Apache-2.0 全开源。

## 是什么

Opik 是 Comet 出品的 **开源 LLM 可观测与评测平台**，覆盖从开发期首条追踪到生产监控的完整生命周期。README 强调整个平台（含后端）均为 Apache-2.0，可免费自托管，而不只是客户端 SDK。

## 核心特性

- **Agent 追踪与可观测**：记录 LLM 调用、会话和 Agent 活动，多步 Agent 与工具调用有完整追踪树
- **LLM 评测**：数据集、实验，以及幻觉检测、内容审核、RAG 评估等 LLM-as-a-judge 指标
- **提示词与 Agent 优化**：Opik Agent Optimizer SDK
- **生产监控**：仪表盘与在线评测规则，README 称可承载 40M+ 追踪 / 天
- **Guardrails**：协助落地安全、负责任的 AI 实践
- **CI/CD 评测**：PyTest 集成，每次提交测试 LLM 流水线
- **接入简单**：`pip install opik`，用 `@track` 装饰器记录；可通过 MCP 让编码 Agent 读取追踪

## 适合场景

- 需要完全开源、可自托管的追踪 + 评测 + 监控一体平台
- 想把 LLM 评测纳入 PyTest / CI 的工程团队
- 需要护栏与提示词优化能力的 Agent 项目

## 注意事项

- 自托管包含完整后端服务，部署与运维成本高于纯 SDK 方案
- 与 Comet 商业云产品有关联，功能差异以官方文档为准
- 核心 SDK 为 Python，其他语言支持以文档为准
