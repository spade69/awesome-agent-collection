# multica

**仓库**：[multica-ai/multica](https://github.com/multica-ai/multica)
**分类**：编排框架
**Stars**：53.8k+
**Forks**：6,800+
**协议**：Source-available（自定义协议，GitHub 未识别）
**语言**：Go
**出品方**：Multica AI

> **一句话**：像给同事派活一样给 AI 编码 Agent 派 issue——把 Claude Code、Codex 等 CLI 变成看板上的队友，可自托管、不锁定厂商。

## 是什么

Multica 是一个 **让人和 AI Agent 在同一工作空间协作的看板**。你把 issue 指派给某个 Agent，它自行领取任务、在你控制的运行时上执行、边做边评论，最后提交 review，由人决定是否合入。

它不自带模型，而是驱动你已安装并登录的 Agent CLI（README 称目前支持 26 种），切换供应商只是下拉框的事。意图、运行过程、决策和 diff 都挂在同一个 issue 上，不必反复重建上下文。

## 核心特性

- **Agent 即队友**：给 Agent 命名、选 provider 和运行时，在看板上和真人一样被指派
- **多 Agent CLI 支持**：Claude Code、Codex、Cursor Agent、Copilot CLI、OpenCode、Kimi、Qwen Code 等
- **Squads 与 Skills**：Agent 与人组成小队由 leader 分派；把解决过的问题沉淀为可复用技能
- **Autopilots**：按 cron 定时跑站会、审计、报告
- **可观测**：完整执行日志、按 Agent/issue 的用量成本、运行中可追加指令（Claude Code、Codex、Grok）、失败重试与超时
- **Review 门禁**：成果进入 review 而非直接进 main
- **自托管**：Docker Compose 或 Helm；支持 GitHub、GitLab、Gitea、Forgejo
- **多端与集成**：Web、桌面、移动；Slack、飞书/Lark、钉钉、企微、Telegram 触发和跟进任务；提供 CLI 与 API

## 适合场景

- 同时使用多个编码 Agent，想统一派活、追踪进度和成本的团队
- 需要代码不出自己机器、可自托管和审计的场景
- 想把重复性工作（站会、审计、报告）交给 Agent 定时执行

## 注意事项

- 本身不提供模型或 Agent，运行机器必须先装好并登录至少一个受支持的 Agent CLI
- 协议为 source-available 而非标准开源协议，商用或二次分发前请阅读 LICENSE
- iOS 应用目前需从源码构建；部分渠道（钉钉、企微、Telegram）为社区维护
