# opencode

**仓库**：[opencode-ai/opencode](https://github.com/opencode-ai/opencode)
**分类**：编码 Agent / 终端工具
**Stars**：13.5k+
**Forks**：600+
**协议**：MIT
**语言**：Go
**出品方**：opencode-ai

> **一句话**：用 Go 写的极速终端 Coding Agent，模型无关、启动秒级、资源占用极低，是追求性能和简洁的开发者对 Claude Code 的 Go 语言替代选择。

## 是什么

opencode 是一个**用 Go 语言构建的终端 AI Coding Agent**，核心卖点是轻量、快速、模型无关。Go 的编译型特性让它启动几乎无延迟，二进制单文件分发，无需复杂的 Node.js 或 Python 环境。

它支持所有 OpenAI 兼容的 API，意味着可以接 Claude、GPT-4、Gemini、本地 Ollama 模型等任意后端。

## 核心特性

| 特性 | 说明 |
|------|------|
| **Go 实现** | 单二进制，无依赖，跨平台分发 |
| **模型无关** | 任何 OpenAI 兼容 API 均可接入 |
| **TUI 界面** | 终端原生 UI，键盘驱动，响应极快 |
| **LSP 集成** | 语言服务器协议支持，代码感知更精准 |
| **会话持久化** | 跨终端会话保存对话和上下文 |
| **MCP 支持** | 可接入 MCP Server 扩展工具 |

## 与 Claude Code 对比

| 维度 | opencode | Claude Code |
|------|---------|-------------|
| 实现语言 | Go（极快） | Node.js |
| 模型绑定 | 无绑定，任意 API | 绑定 Anthropic |
| 资源占用 | 极低 | 中等 |
| 生态/插件 | 起步阶段 | 丰富（Skill 系统） |
| 开源程度 | 完全开源 | 闭源 |

## 典型用法

```bash
# 安装（单二进制）
curl -fsSL https://opencode.ai/install | bash

# 启动（自动检测项目）
opencode

# 指定模型
opencode --model anthropic/claude-opus-4-5
opencode --model openai/gpt-4o
opencode --model ollama/qwen2.5-coder
```

## 适合场景

- 追求极致性能和低资源占用的开发者
- 需要在多种 LLM 之间灵活切换的团队
- 服务器环境或 CI/CD 中嵌入 AI 编程能力
- Go 语言开发者（可方便地贡献和定制）

## 注意事项

- 相比 Claude Code 功能更精简，高级工作流支持有限
- 生态尚在建设中，插件/技能体系不够完善
- 性能优势主要体现在启动和响应速度，模型推理速度取决于后端 API
