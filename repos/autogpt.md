# autogpt

**仓库**：[Significant-Gravitas/AutoGPT](https://github.com/Significant-Gravitas/AutoGPT)
**分类**：SuperAgent / 长周期执行
**Stars**：185.8k+
**Forks**：46,000+
**协议**：MIT（核心）+ Polyform Shield（`autogpt_platform` 部分）
**语言**：Python / TypeScript

> **一句话**：2023 年引爆"自主 Agent"概念的元老级项目，如今演进为可视化搭建 + 托管运行的 Agent 平台——描述目标，AutoGPT 自己拆解任务、执行、汇报结果。

## 是什么

AutoGPT 是最早证明"给 LLM 一个目标就能自主循环执行任务"这一范式的项目，长期占据 GitHub 全站 Star 榜前列。项目已从纯 CLI 脚本演进为完整平台：既可用自然语言描述任务自动生成 Agent，也支持在可视化编辑器里逐步搭建工作流，支持按需触发、定时调度和自托管部署。

## 核心特性

| 特性 | 说明 |
|------|------|
| **目标驱动执行** | 一句话描述期望结果，Agent 自动规划步骤并执行到底 |
| **可视化 Builder** | 不想写 Prompt 也能拖拽搭建每一步逻辑 |
| **多触发方式** | 手动运行 / 定时任务 / Webhook 触发 |
| **自托管** | 官方托管平台之外可完全自建部署 |

## 适合场景

- 需要"设定目标后无人值守跑到底"的自主任务（信息收集、批量处理等）
- 想要低代码方式编排 Agent 流程，同时保留代码级自定义能力
- 学习自主 Agent 范式的历史发展脉络（AutoGPT → BabyAGI → 现代 SuperAgent 生态的起点）

## 注意事项

- 平台部分（`autogpt_platform`）采用 Polyform Shield 协议，商用前需确认许可范围，不是纯 MIT
- 项目历经多次架构重写，早期教程和当前版本差异较大，以官方文档为准
