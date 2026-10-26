# ruflo

**仓库**：[ruvnet/ruflo](https://github.com/ruvnet/ruflo)
**分类**：编排框架 / 低代码平台
**Stars**：79.4k+
**Forks**：9,300+
**协议**：MIT
**语言**：TypeScript
**出品方**：Reuven Cohen（rUv）

> **一句话**：面向 Claude Code 与 Codex 的 Agent 元 harness（原 Claude Flow）——提供 100+ 专用 Agent、蜂群协作、自学习记忆、跨机器联邦通信与安全护栏。

## 是什么

Ruflo 由 Reuven Cohen（rUv）开发，**前身是 Claude Flow**，首次提交于 2025 年 6 月 2 日。README 的核心观点是"Agent = Model + Harness"：模型负责写，harness 提供工具、记忆、循环、沙箱与控制。Ruflo 定位为包在 Claude Code 和 Codex 外面的执行层。

`npx ruflo init` 后照常使用 Claude Code，hooks 系统会在后台自动路由任务、从成功模式中学习并协调 Agent，无需手动学习 314 个 MCP 工具或 26 个 CLI 命令。概念流程为：用户 → Ruflo（CLI/MCP）→ 路由 → 蜂群 → Agent → 记忆 → LLM 提供方，记忆再反哺路由。

## 核心特性

- **两条安装路径**：Claude Code 插件（轻量，仅斜杠命令与 Agent 定义，不写入工作区文件）；CLI `npx ruflo init`（完整循环：98 个 Agent、60+ 命令、30 个 skill、MCP 服务、hooks、daemon）
- **35 个插件**：涵盖编排（swarm、autopilot、workflows、federation）、记忆（agentdb、rag-memory、knowledge-graph）、学习、测试生成、浏览器测试、安全审计、ADR/DDD/SPARC 方法论、可观测性与成本追踪等
- **蜂群协调**：Queen 主导的层级结构，支持 Raft、Byzantine、Gossip 共识
- **向量记忆与自学习**：HNSW 向量记忆、SONA 自学习、ReasoningBank
- **Agent 联邦**：跨机器/组织协作，mTLS + ed25519 身份验证、14 类 PII 检测、行为信任评分，提供 HIPAA/SOC2/GDPR 审计模式
- **多模型提供方**：Claude、GPT、Gemini、Cohere、Ollama，支持故障转移
- **Console 与 Mods**：`/ruflo` 打开 Agent 驾驶舱，可创建任务、审批操作并随时收回 Claude 控制权；mods 负责提示路由与策略执行
- **MCP 接入**：`npx -y ruflo@latest mcp start` 可接入支持本地 stdio MCP 的客户端；也支持 Grok Build（`npx ruflo init --grok`）

## 适合场景

- 希望在 Claude Code / Codex 上运行多 Agent 蜂群、长期记忆与自动化工作流的开发者
- 需要跨团队或跨机器安全协作、同时控制 PII 外泄的企业场景
- 想按需挑选插件（测试生成、ADR、成本追踪等）扩展 Claude Code 能力的用户

## 注意事项

- Mods 以用户账户权限运行且无沙箱，README 明确建议安装前先审阅代码；需 Claude Code 2.1.287+
- 插件路径与 CLI 路径的 MCP 工具名不同（插件为 `mcp__plugin_ruflo-core_ruflo__*`），完整功能需走 CLI 安装，会在工作区写入 `.claude/`、`.claude-flow/`、`CLAUDE.md` 等文件
- README 注明学习循环为概念示意，效果依赖所配置的记忆、学习组件和反馈质量；控制台演示录像不代表已完成的蜂群工作
- "89% 路由准确率"、相对 LangGraph/AutoGen/CrewAI 的性能对比等数据均出自项目自身文档与基准
- `curl | bash` 一键安装仅适用于 POSIX shell，Windows 原生环境请使用 `npx ruflo@latest init wizard`
