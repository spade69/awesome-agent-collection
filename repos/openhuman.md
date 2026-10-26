# OpenHuman

**仓库**：[tinyhumansai/openhuman](https://github.com/tinyhumansai/openhuman)
**分类**：SuperAgent / 长周期执行
**Stars**：42.3k+
**Forks**：4,100+
**协议**：GPL-3.0
**语言**：Rust
**出品方**：TinyHumans

> **一句话**：主打快、省、高效的开源 Agent Harness——单进程 Rust 内核，号称 10 美元 VPS 上跑 500+ Agent，兼有桌面应用与可嵌入库。

## 是什么

OpenHuman 是一个 **开源 Agent Harness**：面向普通用户是桌面应用（也有终端与 headless 形态），面向开发者是 Rust 库。README 指出多数 Harness 每个 Agent 一个重进程、每次调用重发大 prompt，而 OpenHuman 以编译后的单进程 Rust 实现，启动约 0.1 秒，可在 10 美元服务器上容纳 500+ Agent。

它提供 Claude Code、Codex、OpenClaw、Hermes 用户熟悉的能力：带工具的 Agent 循环、MCP、skills、BYOK 模型与记忆，并在此基础上扩展消息渠道、工作流与桌面控制。

## 核心特性

- **RLM token 压缩**：基于 Recursive Language Models，大型工具结果先压缩再给模型读，超大结果给可搜索的句柄
- **Jev 工具检索**：小模型从 1,215 个工具中选工具，top 命中率 86.8%（关键词检索为 70.5%）
- **统一 Rust 总线**：搜索、文档、语音等功能按需加载，单个功能卡住不影响其余
- **内置记忆**：每轮按 token 预算挑选相关记忆并附引用，记忆引擎可替换
- **浏览器与桌面控制**：驱动真实 Chrome 与桌面应用，不靠截图，付款前停止
- **集成丰富**：Composio 接入 119 个 OAuth 应用、14 个消息渠道、26 家 BYOK 提供商及本地模型（Ollama、LM Studio、MLX）
- **持久工作流**：cron/事件/手动触发、审批步骤、暂停后恢复
- **安全**：审批门、OS jail 或 Docker 沙箱、本地隐私模式、OS keyring 存密钥

## 适合场景

- 需要大规模 Agent 集群（如每个客户一个 Agent）但不想上集群的产品
- 在 Rust 项目中把 Agent 当普通函数调用，无需 sidecar/daemon
- 个人桌面助手：语音、消息渠道、浏览器与桌面自动化

## 注意事项

- 仍处于 **早期 Beta**，README 提示会有粗糙之处
- GPL-3.0 协议，嵌入商业产品需评估传染性
- 性能数据来自自家公开基准 openhuman-benchmarks（swe-x86-1，10 个 SWE-bench 任务），README 也提醒产品变化快，选型前应自行核实
- 贡献开发需 Node.js 24+、pnpm 10.10.0、Rust 1.99.1、CMake、Ninja 等
