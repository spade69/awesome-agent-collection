# cline

**仓库**：[cline/cline](https://github.com/cline/cline)
**分类**：编码 Agent
**Stars**：64.7k+
**Forks**：6,800+
**协议**：Apache-2.0
**语言**：TypeScript
**出品方**：Cline

> **一句话**：既能装进 VS Code 又能跑在终端的开源编码 Agent，"计划 → 执行" 双模式每一步改动都需人工确认，安全透明，是 Cursor / Copilot 的开源直接竞品。

## 是什么

Cline 是一个自主编码 Agent，同时以 **SDK、IDE 插件、CLI 助手** 三种形态提供。它能读写文件、执行命令、操作浏览器，完成从写代码到跑测试再到修 Bug 的全流程，但每一个动作都在人工可见、可批准的循环里进行。

## 核心特性

| 特性 | 说明 |
|------|------|
| **Plan / Act 双模式** | 先出方案再动手，改动逐步确认，杜绝"AI 偷偷改一大片" |
| **多形态** | VS Code / JetBrains 插件、终端 CLI、可编程 SDK 三合一 |
| **Kanban 并行** | 配套 Kanban 看板并行跑多个 Agent，每张卡独立 worktree + 自动提交 |
| **模型无关** | 接入 Anthropic、OpenAI、Gemini、本地模型等任意 LLM |
| **MCP 支持** | 原生接入 MCP Server 扩展工具能力 |

## 与竞品对比

| 维度 | cline | opencode | kilocode |
|------|-------|----------|----------|
| 主形态 | IDE 插件 + CLI | 终端 CLI | IDE 插件 + CLI |
| 卖点 | 人工确认每步 + 透明 | Go 单二进制极速 | 500+ 模型零加价 |
| 语言 | TypeScript | Go | TypeScript |

## 适合场景

- 想要一个"看得见、拦得住"的编码 Agent，而不是黑盒自动改代码
- 团队 CI/CD 里用无头模式跑批量代码任务
- 需要在 VS Code 内保留完整审查权的谨慎型开发者

## 注意事项

- 逐步确认模式安全但会牺牲一部分速度，适合重要项目而非快速原型
- 大量调用商业 LLM 时注意 API 成本
