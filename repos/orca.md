# orca

**仓库**：[stablyai/orca](https://github.com/stablyai/orca)
**分类**：编码 Agent
**Stars**：106.4k+
**Forks**：5,800+
**协议**：MIT
**语言**：TypeScript
**出品方**：Stably AI

> **一句话**：面向并行 Agent 的 ADE——Codex、Claude Code、OpenCode、Pi 并排运行，各占独立 git worktree，桌面+手机统一追踪。

## 是什么

Orca 是一个跨平台（macOS / Windows / Linux）桌面应用，定位为 **面向多 Agent 并行协作的开发环境（ADE）**。你可以用自己的订阅运行任意编码 Agent，让它们各自在独立的 git worktree 里工作，并在同一处追踪进度、评审结果、合并胜出方案。另有移动端伴侣应用和远程运行时。

## 核心特性

- **并行 Worktrees**：一个提示词分发给多个 Agent，各在隔离 worktree 中执行，对比后合并最优
- **多 Agent 并排**：Codex、Claude Code、OpenCode、Pi 等
- **移动端伴侣**：手机上监控 Agent、完成时通知、发送后续指令（iOS / Android）
- **终端分屏**：WebGL 渲染、无限分屏、重启后保留滚动历史
- **Design Mode**：在内置 Chromium 中点选 UI 元素，将 HTML、CSS 和裁剪截图送入 Agent 提示词
- **GitHub & Linear 原生集成**：应用内浏览 PR、Issue、看板，从任务直接开 worktree
- **SSH Worktrees**：在远程机器上运行 Agent，含文件编辑、git、终端、自动重连与端口转发
- **Annotate AI Diffs**：在 diff 行上批注并回传给 Agent

## 适合场景

- 习惯同时跑多个编码 Agent、需要隔离与对比结果的开发者
- 想用自有订阅（BYO subscription）而不被单一厂商绑定
- 需要在手机或远程服务器上继续监控/驱动 Agent

## 注意事项

- 是桌面应用/ADE，不是 Agent 框架，需配合各 Agent 自己的订阅与 CLI
- 多 Worktree 并行会增加磁盘、算力与订阅用量消耗
- 移动端、SSH 等能力依赖对应客户端与网络配置
