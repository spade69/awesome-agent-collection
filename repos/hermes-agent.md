# hermes-agent

**仓库**：[NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent)
**分类**：Agent 框架 / 自我进化
**Stars**：28,800+
**Forks**：3,800+
**贡献者**：302+
**协议**：MIT
**主语言**：Python（93.3%）
**版本**：v0.7（2026 年 4 月，约 2 个月从 0 到 28k Stars）

> **一句话**：完成任务后自动把经验写成可复用 Skill，越用越聪明，且不绑定任何模型。

## 是什么

NousResearch 构建的**自我进化型 AI Agent**。

> "The agent that grows with you" —— 不是静态工具集，而是能从经验中学习、自主创建技能、跨会话持续进化的 Agent 系统。

## 技术架构

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

## 横向对比

| 维度 | Hermes Agent | Claude Code | LangChain/AutoGPT |
|------|-------------|-------------|-------------------|
| 自学习能力 | 闭环自我进化，自主创建/改进 Skill | 无 | 无 |
| 模型绑定 | 不绑定（OpenRouter 200+ 模型） | 绑定 Anthropic | 部分绑定 |
| 运行环境 | 6 种后端，含 Serverless | 本地为主 | 本地为主 |
| 跨平台通信 | 5 大 IM 统一入口 | CLI 为主 | 无 |
| 记忆体系 | 多层次（短期+长期+用户建模+跨会话搜索） | 基础上下文 | 简单向量存储 |
| RL 研究支持 | 内置 Atropos 环境 | 无 | 无 |

## 适合场景

- **个人开发者**：$5 VPS + Telegram 远控，构建无人值守的云端自动化 Agent
- **成本敏感用户**：不锁定模型，随时切换开源模型
- **AI 研究者**：内置 RL 环境，直接生成模型训练数据

## 注意事项

- 不支持 Windows 原生（需 WSL2）
- 项目较新（v0.7），API 可能变化较快
- Issues 716 个，社区活跃但仍有待解决问题
