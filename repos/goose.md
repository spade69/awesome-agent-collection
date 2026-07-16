# goose

**仓库**：[aaif-goose/goose](https://github.com/aaif-goose/goose)
**分类**：编码 Agent
**Stars**：51.3k+
**Forks**：5,600+
**协议**：Apache-2.0
**语言**：Rust
**出品方**：Goose（源自 Block / Square 团队）

> **一句话**：能真正动手安装依赖、执行命令、编辑代码的可扩展 AI Agent，超越"代码补全"——Rust 实现、模型无关、原生 MCP 扩展。

## 是什么

goose 是一个 **开源可扩展 AI Agent**，主打"不只是给建议，而是替你把活干完"：它能自主安装软件、执行命令、编辑并运行代码，端到端完成工程任务。用 Rust 编写，同时提供 CLI 和桌面应用，模型无关，可对接任意 LLM。

## 核心特性

| 特性 | 说明 |
|------|------|
| **端到端执行** | 从安装依赖到跑命令、改代码全流程自主完成 |
| **模型无关** | 对接 OpenAI / Anthropic / Google 及本地模型 |
| **MCP 原生** | 通过 Model Context Protocol 扩展工具（Extensions） |
| **CLI + 桌面双形态** | 终端脚本化与图形界面两种用法 |
| **Rust 实现** | 单二进制、启动快、跨平台 |
| **可扩展** | 丰富的 Extension 体系接入外部系统 |

## 与其他编码 Agent 对比

| 维度 | goose | cline | opencode |
|------|-------|-------|----------|
| 语言 | Rust | TypeScript | Go |
| 形态 | CLI + 桌面 | VS Code + CLI | CLI |
| 扩展机制 | MCP Extensions | MCP | MCP |
| 出品方 | Block 团队 | Cline | opencode |

## 适合场景

- **本地自动化开发**：让 Agent 直接在本机执行工程任务
- **模型自由**：想用非主流或本地模型驱动编码 Agent
- **MCP 工具集成**：需要接入大量外部工具/服务

## 注意事项

- 具备执行命令、修改文件的高权限能力，建议在受控环境使用
- 复杂任务效果高度依赖所选底层模型能力
- Extension 生态仍在扩张，部分集成成熟度不一
