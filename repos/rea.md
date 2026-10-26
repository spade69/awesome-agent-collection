# REA

**仓库**：[morluto/rea](https://github.com/morluto/rea)
**分类**：Agent 基础设施
**Stars**：387.3k+
**Forks**：96,900+
**协议**：MIT
**语言**：TypeScript
**出品方**：morluto

> **一句话**：让 Agent 逆向分析一切的 MCP——从应用行为到原生二进制，本地分析并给出证据，再帮你实现类似功能。

## 是什么

REA（Reverse Engineer Anything）是一个 **面向逆向工程的 MCP 服务与 CLI**。核心用法是：看到某个应用的功能想做进自己的产品，就让 Agent 用 REA 在没有源码的情况下检查该应用，解释功能原理、展示证据，并为你的项目实现一个版本。

它把 Agent 接入原生二进制、JavaScript/Electron 应用、.NET 程序集和网站等检查工具，同样的工作流也能在终端直接使用。分析在本地运行，结果附带每个结论的证据与局限。安装命令为 `npx rea-agents setup`。

## 核心特性

- **一键接入 Agent**：setup 为 Claude Code、Codex、Cursor、Gemini CLI、Grok Build 等注册 MCP 服务与配套工作流指令，并备份已有配置
- **原生分析**：对接已安装的 Hopper、Ghidra 或 IDA，返回伪代码、汇编、字符串、符号与调用引用；也支持 objdump、Rizin
- **覆盖面极广**：Go/Rust 二进制、PE/ELF、Android APK（JADX）、Flutter、Unity IL2CPP、Godot PCK、WASM、EVM 字节码、固件、pcap、SQLite、GGUF/safetensors 模型文件等
- **JS/Electron 静态分析**：模块、导入、source map、路由、IPC 与原生插件关系，无需原生分析引擎
- **网站与流量**：Chrome 系浏览器观察页面结构与网络，支持 HAR / SAZ 抓包解析
- **构建 RL 环境**：把录制的 Web 会话 API 转为工具，导出可用 AgentEnv 运行的环境，用于强化学习训练或评测
- **紧凑 schema**：MCP 默认用精简输入 schema 降低上下文开销，可切换 `full`

## 适合场景

- 研究某个应用功能的实现原理并在自己项目中复刻
- 让 Agent 辅助做二进制、APK、Electron 应用或固件分析
- 从现有 Web 应用录制数据构建 Agent 训练/评测环境

## 注意事项

- 需 Node.js 22.x（>=22.23.4）、24.x（>=24.22.1）或 26.12.1+；各分析目标另有依赖（如 JADX + JDK、Binwalk、TShark）
- Linux 上部分功能需要 procps 兼容的 `ps`
- 深度原生分析依赖 Hopper / Ghidra / IDA；macOS 首次启动 Hopper 需手动完成授权弹窗
- 运行时捕获会以当前用户权限运行目标程序；分析虽在本地，但结果会交给 Agent 的模型提供商
- README 提醒只从官方仓库、rea.tools 或 `rea-agents` npm 包获取，相似仓库名不代表官方
- 项目迭代快，遇到问题先 `rea update`
