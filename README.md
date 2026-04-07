# Awesome AI Agent Collection

精选 AI Agent 相关 GitHub 仓库分析，持续更新。

## 目录

| 项目 | 分类 | Stars | 简介 |
|------|------|-------|------|
| [system_prompts_leaks](#system_prompts_leaks) | 资源收集 | 37.7k+ | 主流 AI 产品系统提示词泄露合集 |
| [everything-claude-code](#everything-claude-code) | 工具配置 | 140k+ | Claude Code 完整配置与最佳实践集合 |
| [hermes-agent](#hermes-agent) | Agent 框架 | 28.8k+ | 自我进化型 AI Agent，跨平台、模型无关 |
| [oh-my-claudecode](#oh-my-claudecode) | 编排框架 | 25.3k+ | Claude Code 多智能体编排系统，零学习曲线 |

---

## system_prompts_leaks

**仓库**：[asgeirtj/system_prompts_leaks](https://github.com/asgeirtj/system_prompts_leaks)
**分类**：资源收集 / AI 透明度
**Stars**：37,700+
**协议**：-

> **一句话**：想知道 Claude/GPT/Gemini 背后在偷偷说什么？这里全有。

### 是什么

收集和整理各大 AI 聊天机器人及编程助手**系统提示词（System Prompts）泄露内容**的开源仓库。

### 覆盖范围

- **Anthropic**：Claude Opus 4.6、Sonnet 4.6、Claude Code
- **OpenAI**：ChatGPT GPT-5.4、GPT-5.3、Codex
- **Google**：Gemini 3.1 Pro、3 Flash、Gemini CLI
- **xAI**：Grok 4.2、Grok 4
- **其他**：Perplexity 等

每个模型对应一个 `.md` 文件，按公司分目录组织，随新模型发布持续更新，接受社区 PR。

### 价值

- 了解各家 AI 产品的内部系统指令和行为规范
- 研究 System Prompt 工程设计模式
- 横向对比不同厂商的 AI 安全约束策略

---

## everything-claude-code

**仓库**：[affaan-m/everything-claude-code](https://github.com/affaan-m/everything-claude-code)
**分类**：工具配置 / Claude Code 生态
**Stars**：140,000+
**Forks**：21,000+
**贡献者**：170+
**协议**：MIT

> **一句话**：把 10 个月真实产品开发经验打包成可即装即用的 Claude Code 配置，跨会话记忆 + 自动安全审计开箱即得。

### 是什么

由 Anthropic 黑客松获胜者开源的 **Claude Code 完整配置集合**，本质是 10 个月真实产品开发中积累的最佳实践的系统化整理，可安装即用。

兼容：Claude Code、Codex、Cursor、OpenCode、Gemini 及其他 AI 编程工具。

### 主要模块

| 模块 | 规模 | 内容 |
|------|------|------|
| `agents/` | 36 个子代理 | planner、architect、code-reviewer、security-reviewer 等全场景覆盖 |
| `skills/` | 60+ 技能 | 编程规范、TDD、LLM 工程、架构设计、商业应用 |
| `commands/` | 79 个斜杠命令 | /plan、/tdd、/multi-execute 多智能体编排 |
| `hooks/` | 自动化触发器 | 会话开始/结束自动保存恢复上下文状态 |
| `rules/` | 强制规范层 | 语言规范、Git 工作流、安全检查 |
| `mcp-configs/` | MCP 配置 | GitHub、Supabase、Vercel、Railway 等预配置接入 |

### 三大核心亮点

**1. 跨会话记忆持久化**
通过 hooks 机制在会话断开/重连时自动加载/保存状态，解决 Claude Code 上下文丢失的核心痛点。

**2. 本能学习系统（Instinct-based Learning v2）**
`/skill-create` 分析 Git 历史自动生成项目专属技能；`/evolve` 将积累的本能聚类成可复用技能，支持跨团队共享，越用越强。

**3. AgentShield 安全审计**
- 1282 项测试、98% 覆盖率、102 条静态分析规则
- 扫描 CLAUDE.md、settings.json、MCP 配置、hooks 中的注入风险
- 支持红队/蓝队对抗模式（3 个 Opus 智能体组成攻击 + 防御 + 审计管道）
- 支持 CI/CD 集成，发现严重问题返回退出码 2

### 注意事项

> 不要同时启用超过 10 个 MCP，否则有效上下文从 200k 压缩到 70k。

---

## hermes-agent

**仓库**：[NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent)
**分类**：Agent 框架 / 自我进化
**Stars**：28,800+
**Forks**：3,800+
**贡献者**：302+
**协议**：MIT
**主语言**：Python（93.3%）
**版本**：v0.7（2026 年 4 月，约 2 个月从 0 到 28k Stars）

> **一句话**：完成任务后自动把经验写成可复用 Skill，越用越聪明，且不绑定任何模型。

### 是什么

NousResearch 构建的**自我进化型 AI Agent**。

> "The agent that grows with you" —— 不是静态工具集，而是能从经验中学习、自主创建技能、跨会话持续进化的 Agent 系统。

### 技术架构

**自我进化 Skills 闭环**（最大差异化）
完成复杂任务后自动提炼经验写成可复用 Skill 文件，后续使用中持续改进，兼容 `agentskills.io` 开放标准，可社区共享。

**6 种执行后端**
本地 / Docker / SSH / Daytona / Singularity / Modal，其中 Modal/Daytona 支持 Serverless，闲置近零成本。

**多平台统一入口**
Telegram、Discord、Slack、WhatsApp、Signal 通过同一 `hermes gateway` 进程管理，跨平台会话连续。

**多层记忆体系**
- FTS5 全文检索历史会话 + LLM 摘要
- Honcho 辩证式用户画像建模
- 周期性推送提醒自身持久化知识

**AI 研究工具链**
内置 Atropos RL 训练环境 + 批量轨迹生成/压缩，可直接生成模型训练数据。

**其他能力**：40+ 内置工具、内置 Cron 调度器（自然语言定义定时任务）、MCP 集成、子 Agent 并行。

### 横向对比

| 维度 | Hermes Agent | Claude Code | LangChain/AutoGPT |
|------|-------------|-------------|-------------------|
| 自学习能力 | 闭环自我进化，自主创建/改进 Skill | 无 | 无 |
| 模型绑定 | 不绑定（OpenRouter 200+ 模型） | 绑定 Anthropic | 部分绑定 |
| 运行环境 | 6 种后端，含 Serverless | 本地为主 | 本地为主 |
| 跨平台通信 | 5 大 IM 统一入口 | CLI 为主 | 无 |
| 记忆体系 | 多层次（短期+长期+用户建模+跨会话搜索） | 基础上下文 | 简单向量存储 |
| RL 研究支持 | 内置 Atropos 环境 | 无 | 无 |

### 适合场景

- **个人开发者**：$5 VPS + Telegram 远控，构建无人值守的云端自动化 Agent
- **成本敏感用户**：不锁定模型，随时切换开源模型
- **AI 研究者**：内置 RL 环境，直接生成模型训练数据

### 注意事项

- 不支持 Windows 原生（需 WSL2）
- 项目较新（v0.7），API 可能变化较快
- Issues 716 个，社区活跃但仍有待解决问题

---

## oh-my-claudecode

**仓库**：[Yeachan-Heo/oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode)
**分类**：编排框架 / Claude Code 生态
**Stars**：25,300+
**Forks**：2,300+
**协议**：MIT
**npm**：`oh-my-claude-sisyphus`
**多语言**：11 种语言（含中文）

> **一句话**：把 Claude Code 从单智能体变成多智能体平台——一句话自然语言启动 32 个专业 Agent 协作完成任务。

### 是什么

专为 Claude Code 打造的**多智能体编排系统**，核心理念是零学习曲线。

> "Don't learn Claude Code. Just use OMC." —— 用自然语言描述需求，OMC 自动调度多个专业 AI 智能体协作完成任务。

本质是在 Claude Code 之上构建的一层自动化编排层，让 Claude Code 从单智能体工具变成多智能体协作平台。

### 执行模式

| 模式 | 适用场景 |
|------|---------|
| **Team**（默认） | 阶段化流水线：plan → prd → exec → verify → fix，多智能体协作 |
| **Autopilot** | 自主端到端执行，最小干预的功能开发 |
| **Ultrawork (ulw)** | 最大并行化，适合并行修复/重构 |
| **Ralph** | 持久模式，任务必须完整完成，不允许中途放弃 |
| **ccg** | 三模型并行：Codex（架构分析）+ Gemini（UI设计）+ Claude（综合） |
| **Pipeline** | 严格顺序的多阶段处理 |

### 核心功能

- **32 个专业智能体**：覆盖架构、研究、设计、测试、数据科学等领域
- **智能模型路由**：简单任务用 Haiku 节省 token，复杂推理用 Opus，声称节省 30-50% 费用
- **deep-interview**：苏格拉底式需求澄清，写代码前先明确需求，避免返工
- **Skills 系统**：自动从会话中提取可复用模式，支持项目级和用户级两种作用域，匹配场景自动注入
- **通知集成**：Telegram / Discord / Slack，支持 @ 标签配置
- **OpenClaw 集成**：将会话事件转发到自动化网关，支持 6 种钩子事件

### 与 everything-claude-code 的区别

| 维度 | everything-claude-code | oh-my-claudecode |
|------|------------------------|-----------------|
| 定位 | 资源集合/提示词库 | 可安装运行的编排系统 |
| 使用方式 | 手动参考学习 | 自然语言直接驱动 |
| 多智能体 | 有限支持 | 核心特性，32 个专业智能体 |
| 跨 AI 编排 | 不支持 | 支持 Codex + Gemini + Claude 并行 |
| 学习成本 | 需阅读理解各种技巧 | 零学习曲线 |

核心差异：把"知识"变成了"工具"——不是告诉你怎么用 Claude Code，而是直接替你操作。

### 适合场景

- **复杂功能开发**：一句话启动多智能体自动规划、执行、验证
- **需求模糊时**：`/deep-interview` 先澄清需求再动手
- **并行重构**：`ulw` 模式最大化并行，比单智能体快数倍
- **成本优化**：智能路由自动选择合适模型
- **长期项目**：Skills 积累越多，后续会话越省力

### 注意事项

- 适合重度 Claude Code 用户，对简单任务原生 Claude Code 已足够
- 依赖 tmux 实现多进程编排

---

## 贡献

欢迎提交 PR 补充新的 AI Agent 相关仓库分析。格式参考已有条目，包含：仓库基本信息、定位、核心特性、价值和注意事项。
