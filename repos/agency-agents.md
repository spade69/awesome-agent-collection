# agency-agents

**仓库**：[msitarzewski/agency-agents](https://github.com/msitarzewski/agency-agents)
**分类**：最佳实践 / 学习资源
**Stars**：164.1k+
**Forks**：25,800+
**协议**：MIT
**语言**：Shell
**出品方**：Michael Sitarzewski（msitarzewski，个人）

> **一句话**：一整家"AI 代理公司"——230+ 个带人格、流程与交付物的专业 Agent 角色提示词，覆盖工程、设计、营销、销售、安全等多个部门，可一键装进各类编码工具。

## 是什么

The Agency 起源于一个 Reddit 帖子，是一个持续增长的 **专业化 AI Agent 人格库**。每个 Agent 是一份 Markdown 文件，包含身份与性格、核心使命与工作流、带代码示例的技术交付物、成功指标与沟通风格，而不是泛泛的提示词模板。

README 称仓库已有 **230+ 个 Agent**，按"部门"组织。你可以直接装进 Claude Code 的 `~/.claude/agents/`，也可当参考库复制改造。

## 核心特性

- **按部门划分**：Engineering、Design、Paid Media、Sales、Marketing、Product、Project Management、Testing、Security、Support、Spatial Computing、Finance、Game Development、Academic、GIS、Healthcare、Research 等
- **人格驱动 + 交付导向**：每个 Agent 有独特声音、流程与可衡量成果
- **一键安装脚本**：`scripts/install.sh` 支持 `--tool`、`--division`、`--agent` 选择性安装
- **多工具适配**：Claude Code、Cursor、Codex、Gemini CLI、GitHub Copilot、OpenCode、Aider、Windsurf、Kimi Code、Hermes、DeepSeek Harness 等
- **桌面 App**：提供 macOS / Linux / Windows 原生应用浏览并安装整套角色
- **多 Agent 场景示例**：Startup MVP、营销战役、企业特性开发等 runbook 与 Nexus Spatial Discovery 示例

## 适合场景

- 想快速给 Claude Code 等工具补充大量角色化子 Agent
- 学习如何撰写高质量的 Agent 角色定义与工作流
- 需要按团队/部门组合多 Agent 协作的实验

## 注意事项

- 本质是提示词/角色库，没有运行时编排引擎，协作需自行驱动
- OpenCode 运行时只注册约 119 个 Agent，全量安装会被静默丢弃，建议按 division 安装
- Agent 数量庞大，全部装入会增加上下文与选择负担，建议按需挑选
- 个人维护项目，质量参差，需自行评估再使用
