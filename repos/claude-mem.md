# claude-mem

**仓库**：[thedotmack/claude-mem](https://github.com/thedotmack/claude-mem)
**分类**：Agent 基础设施
**Stars**：103.2k+
**Forks**：9,100+
**协议**：Apache-2.0
**语言**：TypeScript
**出品方**：Alex Newman（@thedotmack）

> **一句话**：为 Claude Code 等 Agent 打造的跨会话持久记忆系统——自动捕获工具调用观察、用 AI 压缩摘要，并在新会话中注入相关上下文。

## 是什么

claude-mem 是一个 **持久记忆压缩系统**，最初为 Claude Code 构建。它通过生命周期 hook 自动记录 Agent 会话中的工具使用观察，生成语义摘要，并在之后的会话中按需提供，让 Agent 在会话结束或重连后仍能保持对项目的知识连续性。

除 Claude Code 外，仓库描述与安装说明还覆盖 OpenClaw、Codex、Gemini、Hermes、Copilot、OpenCode、T3 Code、Antigravity CLI、OMP、Pi、DeepSeek Harness、Grok Bot 等。推荐通过 `npx claude-mem install` 或 Claude Code 插件市场安装。

## 核心特性

- **生命周期 hook**：SessionStart、UserPromptSubmit、PreToolUse、PostToolUse、Stop、SessionEnd 全程捕获
- **本地 Worker 服务**：由 Bun 管理的本地 HTTP API，附带 Web viewer 与搜索端点
- **存储与检索**：SQLite（含 FTS5）存会话、观察与摘要，Chroma 向量库提供语义 + 关键词混合搜索
- **3 层检索工作流（MCP）**：`search` 拿紧凑索引 → `timeline` 看前后上下文 → `get_observations` 按 ID 取详情，README 称可节省约 10 倍 token
- **渐进式披露**：分层检索并显示 token 成本
- **隐私控制**：用 `<private>` 标签排除敏感内容
- **多模式多语言**：`CLAUDE_MEM_MODE` 支持 `code`、`code--zh`（内置简体中文）、`code--ja` 等
- **团队能力**：可选的 TeamBrain 共享工作区，以及 My Work 本地进度与审阅队列

## 适合场景

- 长期在同一项目上使用 Claude Code / Codex 等，希望 Agent 记住过往决策与修复
- 需要跨多种 Agent harness 共享项目记忆
- 想用自然语言回溯项目历史（如“上次那个认证 bug 怎么修的”）

## 注意事项

- `npm install -g claude-mem` 只安装 SDK/库，不会注册 hook 和 worker，必须用 `npx claude-mem install` 或 `/plugin` 安装
- 安装器默认引导浏览器登录以开通托管观察者（30 天试用）；可用 `--provider` 或 `CLAUDE_MEM_ONLINE_OPTIN=false` 跳过
- 依赖 Node.js 20+，Bun 与 uv 缺失时会自动安装
- 配置位于 `~/.claude-mem/settings.json`，修改模式后需重启 Claude Code
