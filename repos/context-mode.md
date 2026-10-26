# Context Mode

**仓库**：[mksglu/context-mode](https://github.com/mksglu/context-mode)
**分类**：Agent 基础设施
**Stars**：32.3k+
**Forks**：2,200+
**协议**：Elastic License 2.0（source-available）
**语言**：TypeScript
**出品方**：mksglu

> **一句话**：编码 Agent 的上下文窗口优化 MCP——沙箱执行让原始数据不进上下文，SQLite 记录会话事件，压缩后仍能延续。

## 是什么

Context Mode 是一个 **MCP 服务 + hook 组合**，针对“每次 MCP 工具调用都把原始数据倒进上下文”的问题：README 举例一次 Playwright 快照 56 KB、20 个 GitHub issue 59 KB，30 分钟后上下文已耗掉 40%。

它的思路是把原始数据留在沙箱子进程里，只让 stdout 或检索片段进入上下文；同时把文件编辑、git 操作、任务、错误和用户决策记入 SQLite，在对话压缩后按需检索恢复。README 称支持 17 个平台，在 Claude Code 上可通过插件市场全自动安装。

## 核心特性

- **沙箱执行**：`ctx_execute` 支持 12 种语言（JS/TS/Python/Shell/Go/Rust 等），只有 stdout 进入上下文；`gh`、`aws`、`kubectl` 等 CLI 凭据透传
- **Think in Code**：让 LLM 写脚本统计分析，而不是把 50 个文件读进上下文
- **知识库**：`ctx_index` 按标题切分 markdown 存入 SQLite FTS5，`ctx_search` 用 Porter 词干 + Trigram 子串双路检索并以 RRF 融合，含邻近重排与 Levenshtein 纠错
- **URL 抓取缓存**：`ctx_fetch_and_index` 抓取并索引网页，默认 24h TTL，14 天自动清理
- **会话连续性**：PreCompact / SessionStart 等 hook 在压缩后只检索相关事件，而非整段回灌
- **路由强制**：支持 hook 的平台会自动引导模型优先用沙箱工具代替原生 Bash/Read/WebFetch
- **权限沿用**：复用 Claude Code 的 deny/allow 规则，并将其扩展到沙箱内，链式命令逐段检查
- **统计工具**：`ctx_stats`、`ctx_doctor`，可选状态栏实时显示节省量

## 适合场景

- 大量使用 Playwright、GitHub、日志等高输出 MCP 工具的长会话
- 频繁遇到上下文压缩后 Agent “失忆”的情况
- 同时在 Claude Code、Gemini CLI、Cursor、Codex、OpenCode 等多平台工作

## 注意事项

- 协议为 Elastic License 2.0：可使用、fork、修改和分发，但不得作为托管服务提供或移除许可声明（GitHub API 显示为 NOASSERTION）
- 各平台 hook 能力差异大，非 hook 平台需手动复制路由文件；Codex CLI 需开启 `[features].hooks = true`
- 仅 MCP 安装（`claude mcp add`）没有自动路由
- README 声明无遥测、无云同步、无需账号；但 `ctx-insight` 会打开托管的 Insight 面板
- 第 9 次起的连续检索调用会被节流并引导改用 `ctx_batch_execute`
