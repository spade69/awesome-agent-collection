# pi

**仓库**：[earendil-works/pi](https://github.com/earendil-works/pi)
**分类**：编码 Agent
**Stars**：84.3k+
**Forks**：10,400+
**协议**：MIT
**语言**：TypeScript
**npm**：`@earendil-works/pi-coding-agent`

> **一句话**：不做"又一个编码 Agent"，而是把 Agent Loop、多模型统一 API 和终端 UI 拆成独立可复用的包，自建 Coding Agent 的人可以直接拿工具箱而不是抄整个应用。

## 是什么

Pi 是一套**分层 Agent 工具箱**（Agent Harness），核心是把编码 Agent 拆成几个独立发布的包：

| 包 | 作用 |
|----|------|
| `pi-ai` | 统一多厂商 LLM API（OpenAI/Anthropic/Google 等），一套调用协议切换任意模型 |
| `pi-agent-core` | Agent 运行时，管理工具调用循环和状态 |
| `pi-tui` | 差异渲染的终端 UI 库 |
| `pi-coding-agent` | 基于以上三者组装出的交互式编码 Agent CLI |
| `pi-telemetry` | 厂商无关的可观测性契约 |

发布频率极高（每 2-3 天一个版本），社区贡献者规模已超 250+ 页分页列表。

## 核心特性

- **可拆解复用**：不想要完整 CLI 的团队可以只用 `pi-ai` 统一多模型调用，或只用 `pi-agent-core` 自建 Agent Loop
- **无内置权限沙箱**：默认以启动进程的用户权限运行，官方文档给出三种隔离方案（Gondolin 微 VM、纯 Docker、OpenShell 策略沙箱）
- **自扩展**：Agent 本身可读文档自我解释，支持 `pi-chat` 扩展 Slack/IM 自动化场景

## 适合场景

- 想自己组装编码 Agent，但不想从零写 Agent Loop 和多模型适配层
- 需要在多个内部工具间共享同一套 LLM 调用/遥测契约
- 已有终端工具链，想复用其差异渲染 TUI 组件

## 注意事项

- 无内置权限系统，生产环境务必按文档做容器化隔离，否则等同于给 Agent 完整用户权限
- 新贡献者的 Issue/PR 默认自动关闭，需按 CONTRIBUTING.md 流程走
