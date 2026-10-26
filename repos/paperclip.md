# paperclip

**仓库**：[paperclipai/paperclip](https://github.com/paperclipai/paperclip)
**分类**：编排框架 / 低代码平台
**Stars**：107.4k+
**Forks**：17,000+
**协议**：MIT
**语言**：TypeScript
**出品方**：Paperclip AI

> **一句话**：开源的"AI 员工公司"管理平台——像用任务管理器一样给 Agent 团队设组织架构、目标、预算与审批，管理业务目标而非 PR。

## 是什么

Paperclip 是一个 **Node.js 服务 + React UI**，用来编排一支 AI Agent 团队去运营业务。README 的类比是："如果 OpenClaw 是员工，Paperclip 就是公司"。你自带 Agent、分配目标，在一个看板里追踪任务与成本，并为每个 Agent 选择模型与 harness。

它外观像任务管理器，底层是组织架构、预算、治理、目标对齐与 Agent 协调。典型流程：定义目标 → 雇佣团队（CEO、CTO、工程师、设计师等，任意 bot / 供应商）→ 审批并运行。

## 核心特性

- **自带 Agent（BYO）**：适配 OpenClaw、Claude Code、Codex、Cursor、Gemini CLI、OpenCode、Pi、Hermes、Grok Build、Kimi Code 等；"能接收心跳就能被雇佣"
- **心跳（Heartbeats）**：Agent 因分配的工作、后续消息或定时计划被唤醒，任务沿组织架构上下委派
- **组织架构与治理**：层级、角色、汇报线、审批阶段、可暂停/改派/终止
- **目标对齐与任务线程**：任务/项目关联组织目标，对话、计划、文件、运行历史挂在任务上
- **成本控制**：公司/Agent/项目级预算，阈值告警，到限暂停
- **多组织**：一套部署隔离多个组织的任务、权限与历史
- **Skills 与 Skill Studio**：共享技能、保存测试输入、版本历史与回滚
- **应用与连接**：GitHub、Notion、Railway 或自有 MCP Server，动作可设 Allowed / Ask first / Off
- **定时 Routines、Artifacts 反馈、现成团队模板、移动端管理**

## 适合场景

- 同时开着很多 Claude Code 终端、想统一管理与审计的人
- 想搭建 24/7 自主运行、但需要审批和预算兜底的"AI 组织"
- 需要跨 Agent / 跨供应商协同并追踪成本的团队

## 注意事项

- 是一套完整平台（服务 + UI），部署与运维成本高于单个 Agent 工具
- "自主运营业务"类用法风险较高，需严格配置预算、权限与审批
- 部分能力（Agent Chat、聊天/邮件连接器）标注为实验性
- Paperclip Cloud 仍在候补名单阶段，目前以自托管为主
