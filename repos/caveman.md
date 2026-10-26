# caveman

**仓库**：[JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman)
**分类**：最佳实践 / 学习资源
**Stars**：115.1k+
**Forks**：6,600+
**协议**：Apache-2.0
**语言**：Go
**出品方**：Julius Brussee

> **一句话**：让编码 Agent 像原始人一样说话以节省 token 的爆款 skill + 本地代理——回答更短、读入更少，代码与命令保持原样。

## 是什么

caveman 最初是 2026 年 4 月的一个玩笑项目，核心是一个让 Agent **用极简"原始人"语气回答** 的 skill：先给结论、一句一个意思、代码/命令/路径/报错原样保留。README 示例中同一个 React 重渲染问题的回答从 63 token 降到 20 token。

4.0 版本起扩展为 **"六块石头"**：除了说得少（voice），还会在模型读取前压缩日志/JSON/CSV/测试输出、自动为每次请求选模型和 effort、复用 Agent 写过的脚本等。通过 `npx @caveman-ai/cli@latest` 一条命令安装，README 称可作用于 Claude Code、Codex、Gemini CLI、OpenCode 等 30+ 种 Agent，使用本机的 key 与 Claude Pro/Max 登录。

## 核心特性

- **Say less**：`/caveman`、`/ultracave`、`/megacave`（文言文）三档；README 实测在"Answer concisely"基线上 `/ultracave` 再省 35% 输出
- **Read less**：在模型读取前压缩 CSV、日志、YAML、测试输出、JSON，README 称整段会话输入 token 减少 33.2%，原文件保留在本地可随时取回
- **Auto**：在模型选择器中新增 Auto，按请求难度选模型和 effort；README 基准称比 Opus 5.5 xhigh 便宜 54%，分数相近（需登录免费账户）
- **Blocks**：代码模式下把 Agent 反复编写的脚本沉淀进仓库复用，内置 `json-peek`、`test-summary`、`first-error` 等 8 个 block
- **小工具**：`caveman learn` 分析 token 去向、保持 prompt cache 预热、`caveman browse` 压缩网页、`/caveman-compress` 压缩 `CLAUDE.md` 等记忆文件
- **配套命令**：`/caveman-commit`、`/caveman-review`、`/caveman-stats`，以及 `cavecrew` 子代理和多个工作模式
- **中间件**：可嵌入 Vercel AI SDK、LangChain、OpenAI、Anthropic 调用
- **外部验证**：README 引用 Adobe Research、Elastic、JetBrains 的测试结果

## 适合场景

- 想降低 Claude Code 等编码 Agent token 消耗与成本的重度用户
- 会话中大量读取日志、JSON、测试输出等冗长内容的工作流
- 构建自有 Agent、希望在 SDK 调用层压缩输入输出的开发者（中间件 / Caveman Cloud）

## 注意事项

- 规则本身约占 1,160 token 输入；按请求计费的平台（如 GitHub Copilot）上更短的回答并不省钱
- CLI 默认发送使用统计（命令、token 数、安装 ID、OS、IP 等），可用 `caveman telemetry off` 或 `DO_NOT_TRACK=1` 关闭
- Auto 登录启用后会把最新请求（含 Agent 附带的 CLAUDE.md、记忆等）发往 Caveman Cloud，免费计划下可能被保留用于改进路由
- README 坦承部分数据未完成或较旧：HTML 尚无压缩器（会话反而更差）、Auto 基准只跑了一半、Blocks 为预发布版本且仅支持 Python、无沙箱
- 安装需 Node.js 22.13+；4.0 之前的旧版本需加 `@latest` 避免旧副本优先；"Caveman"名称与 logo 为作者商标
