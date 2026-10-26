# Grok Build

**仓库**：[xai-org/grok-build](https://github.com/xai-org/grok-build)
**分类**：编码 Agent
**Stars**：27.5k+
**Forks**：5,100+
**协议**：Apache-2.0
**语言**：Rust
**出品方**：SpaceXAI（xAI）

> **一句话**：SpaceXAI 官方终端编码 Agent `grok`——全屏可鼠标交互的 Rust TUI，支持交互、无头脚本/CI 与 ACP 编辑器嵌入。

## 是什么

Grok Build（命令 `grok`）是 SpaceXAI 的 **终端 AI 编码 Agent**。它以全屏 TUI 运行，能理解代码库、编辑文件、执行 shell 命令、搜索网页并管理长时间运行的任务，可交互使用，也可无头运行用于脚本/CI，或通过 Agent Client Protocol（ACP）嵌入编辑器。

本仓库是 `grok` CLI/TUI 及其 Agent 运行时的 Rust 源码，定期从 SpaceXAI monorepo 同步，根目录 `SOURCE_REV` 文件记录对应的 monorepo commit SHA。

## 核心特性

- **全屏 TUI**：支持鼠标交互、可扩展，包含滚动回看、输入框、弹窗与渲染层
- **三种运行方式**：交互式、headless（脚本/CI）、ACP 嵌入编辑器
- **完整工具集**：终端、文件编辑、搜索等工具实现位于 `xai-grok-tools`
- **工作区能力**：宿主文件系统、VCS、执行与 checkpoint 管理
- **可扩展生态**：用户指南涵盖 slash 命令、主题、MCP 服务器、skills、插件、hooks、沙箱等
- **跨平台预编译**：提供 macOS、Linux、Windows 安装脚本

## 适合场景

- 想在终端里使用 Grok 模型完成日常编码、改文件、跑命令的开发者
- 需要在 CI 或脚本里无头调用编码 Agent
- 研究生产级 Rust 编码 Agent 的 TUI 与运行时架构

## 注意事项

- 首次启动会打开浏览器进行认证
- 不接受外部贡献（见 CONTRIBUTING.md）
- 源码构建需 Rust（由 `rust-toolchain.toml` 固定）与 DotSlash（用于 `bin/protoc` 等工具）；Windows 构建为 best-effort 且未测试
- 根目录 `Cargo.toml` 为生成文件，应视为只读
- 部分工具实现移植自 openai/codex 与 sst/opencode，第三方代码保留原协议
