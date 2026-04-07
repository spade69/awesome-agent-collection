# oh-my-claudecode

**仓库**：[Yeachan-Heo/oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode)
**分类**：编排框架 / Claude Code 生态
**Stars**：25,300+
**Forks**：2,300+
**协议**：MIT
**npm**：`oh-my-claude-sisyphus`
**多语言**：11 种语言（含中文）

> **一句话**：把 Claude Code 从单智能体变成多智能体平台——一句话自然语言启动 32 个专业 Agent 协作完成任务。

## 是什么

专为 Claude Code 打造的**多智能体编排系统**，核心理念是零学习曲线。

> "Don't learn Claude Code. Just use OMC." —— 用自然语言描述需求，OMC 自动调度多个专业 AI 智能体协作完成任务。

本质是在 Claude Code 之上构建的一层自动化编排层，让 Claude Code 从单智能体工具变成多智能体协作平台。

## 执行模式

| 模式 | 适用场景 |
|------|---------|
| **Team**（默认） | 阶段化流水线：plan → prd → exec → verify → fix，多智能体协作 |
| **Autopilot** | 自主端到端执行，最小干预的功能开发 |
| **Ultrawork (ulw)** | 最大并行化，适合并行修复/重构 |
| **Ralph** | 持久模式，任务必须完整完成，不允许中途放弃 |
| **ccg** | 三模型并行：Codex（架构分析）+ Gemini（UI设计）+ Claude（综合） |
| **Pipeline** | 严格顺序的多阶段处理 |

## 核心功能

- **32 个专业智能体**：覆盖架构、研究、设计、测试、数据科学等领域
- **智能模型路由**：简单任务用 Haiku 节省 token，复杂推理用 Opus，声称节省 30-50% 费用
- **deep-interview**：苏格拉底式需求澄清，写代码前先明确需求，避免返工
- **Skills 系统**：自动从会话中提取可复用模式，支持项目级和用户级两种作用域，匹配场景自动注入
- **通知集成**：Telegram / Discord / Slack，支持 @ 标签配置
- **OpenClaw 集成**：将会话事件转发到自动化网关，支持 6 种钩子事件

## 与 everything-claude-code 的区别

| 维度 | everything-claude-code | oh-my-claudecode |
|------|------------------------|-----------------|
| 定位 | 资源集合/提示词库 | 可安装运行的编排系统 |
| 使用方式 | 手动参考学习 | 自然语言直接驱动 |
| 多智能体 | 有限支持 | 核心特性，32 个专业智能体 |
| 跨 AI 编排 | 不支持 | 支持 Codex + Gemini + Claude 并行 |
| 学习成本 | 需阅读理解各种技巧 | 零学习曲线 |

核心差异：把"知识"变成了"工具"——不是告诉你怎么用 Claude Code，而是直接替你操作。

## 适合场景

- **复杂功能开发**：一句话启动多智能体自动规划、执行、验证
- **需求模糊时**：`/deep-interview` 先澄清需求再动手
- **并行重构**：`ulw` 模式最大化并行，比单智能体快数倍
- **成本优化**：智能路由自动选择合适模型
- **长期项目**：Skills 积累越多，后续会话越省力

## 注意事项

- 适合重度 Claude Code 用户，对简单任务原生 Claude Code 已足够
- 依赖 tmux 实现多进程编排
