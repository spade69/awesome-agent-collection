# Context7

**仓库**：[upstash/context7](https://github.com/upstash/context7)
**分类**：Agent 基础设施
**Stars**：63.7k+
**Forks**：3,100+
**协议**：MIT
**语言**：TypeScript
**出品方**：Upstash

> **一句话**：给编码 Agent 实时拉取最新、按版本匹配的库文档与代码示例，避免过时 API 和幻觉接口。

## 是什么

Context7 是 Upstash 出品的 **文档上下文平台**。LLM 依赖的训练数据常常过时，容易写出旧版本代码或编造不存在的 API；Context7 直接从源头拉取最新、特定版本的文档与示例，注入编码 Agent 的上下文。

使用时在提示词里加一句 `use context7` 即可。它支持两种模式：**CLI + Skills**（安装技能，引导 Agent 调用 `ctx7` 命令，无需 MCP）和 **MCP**（注册远程 MCP 服务 `https://mcp.context7.com/mcp`）。

## 核心特性

- **一键安装**：`npx ctx7 setup` 完成 OAuth 认证、生成 API key 并安装技能，可用 `--cursor`、`--claude`、`--opencode` 指定目标
- **指定库 ID**：提示词中写 `/supabase/supabase` 这类斜杠 ID 可跳过库匹配步骤
- **版本匹配**：在提示中提及版本（如 Next.js 16）即自动匹配对应文档
- **CLI 命令**：`ctx7 library <name> <query>` 搜索库，`ctx7 docs <libraryId> <query>` 取文档
- **MCP 工具**：`resolve-library-id` 把库名解析为 Context7 ID，`query-docs` 按 ID 取文档并可按语言排序示例
- **多形态分发**：MCP 服务、`ctx7` CLI、TypeScript SDK、Vercel AI SDK 工具、pi.dev 扩展
- **广泛客户端支持**：文档提供 30+ MCP 客户端的手动安装说明

## 适合场景

- 使用快速迭代的框架/库（Next.js、Supabase、Cloudflare Workers 等）时让 Agent 写出符合当前版本的代码
- 想减少 Agent 编造 API、反复切换浏览器查文档的情况
- 可配合 `CLAUDE.md` 或 Cursor Rules 设置“遇到库/API 问题自动使用 Context7”

## 注意事项

- 推荐申请免费 API key 以获得更高速率限制
- `ctx7` CLI 需要 Node.js 22.13+
- 收录的项目文档由社区贡献，官方不保证其准确性、完整性或安全性
- 本仓库只包含 MCP 服务端源码，API 后端、解析引擎、爬取引擎均为私有
