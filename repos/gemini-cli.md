# gemini-cli

**仓库**：[google-gemini/gemini-cli](https://github.com/google-gemini/gemini-cli)
**分类**：编码 Agent / 终端 AI 助手
**Stars**：105.8k+
**Forks**：10,000+
**协议**：Apache-2.0
**语言**：TypeScript
**出品方**：Google

> **一句话**：Google 官方出品的终端 AI Agent，把 Gemini 的超长上下文（100万 token）和多模态能力带入命令行，是 Claude Code 的直接竞品，个人免费使用。

## 是什么

Gemini CLI 是 Google 官方发布的开源终端 AI Agent，定位与 Claude Code、OpenAI Codex CLI 直接竞争。它把 Gemini 2.5 Pro 的强大能力带入终端：读写文件、执行命令、搜索网络、理解图片，全部通过自然语言驱动。

2025 年 6 月发布后迅速登顶 GitHub Trending，一周内突破 10 万 Star，成为开源 Coding Agent 领域增速最快的项目之一。

## 核心特性

| 特性 | 说明 |
|------|------|
| **100 万 token 上下文** | Gemini 2.5 Pro 的超长窗口，可一次读入整个大型项目 |
| **多模态输入** | 支持图片、截图直接作为输入上下文 |
| **免费额度** | 个人使用 Gemini API 免费层，每分钟 60 次请求 |
| **Google 工具集成** | 原生集成 Google 搜索、Google Drive 等服务 |
| **MCP 支持** | 可接入任意 MCP Server 扩展能力 |
| **开源可扩展** | 完整 TypeScript 代码库，可自行修改和扩展 |

## 与 Claude Code 对比

| 维度 | Gemini CLI | Claude Code |
|------|-----------|-------------|
| 背后模型 | Gemini 2.5 Pro | Claude Opus/Sonnet |
| 上下文窗口 | 100 万 token | 20 万 token |
| 免费使用 | 个人免费 | 需订阅 |
| 开源程度 | 完全开源 | 闭源 |
| 多模态 | 原生支持 | 支持 |
| 生态成熟度 | 新兴 | 较成熟 |

## 典型用法

```bash
# 安装
npm install -g @google/gemini-cli

# 启动
gemini

# 直接提问
gemini "Explain this codebase and suggest improvements"

# 带上下文
gemini --context . "Fix all TypeScript errors"
```

## 适合场景

- 想免费使用 AI Coding Agent 的个人开发者
- 需要超长上下文处理大型代码库的场景
- 已有 Google 生态（Drive、Workspace）的团队
- 希望完全掌控 Agent 行为的开发者（开源可改）

## 注意事项

- 免费额度有速率限制，大型项目可能需要付费 API
- 相比 Claude Code 生态（插件、Skill 系统）还不够完善
- 发布较新，部分功能仍在快速迭代
