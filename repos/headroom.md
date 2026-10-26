# Headroom

**仓库**：[headroomlabs-ai/headroom](https://github.com/headroomlabs-ai/headroom)
**分类**：Agent 基础设施
**Stars**：77.9k+
**Forks**：6,000+
**协议**：Apache-2.0
**语言**：Python
**出品方**：Headroom Labs

> **一句话**：在工具输出、日志、文件和 RAG 片段送进 LLM 前先压缩——本地运行，可作库、代理或 MCP 服务，答案不变、token 大减。

## 是什么

Headroom 是一个 **上下文压缩层**：在 Agent 读取的内容（工具输出、日志、RAG 结果、文件、对话历史）到达 LLM 之前进行压缩。压缩在本机运行，README 强调不会把 prompt 或文件内容发往任何地方做压缩。

它提供四种接入方式：Python/TypeScript 库 `compress(messages)`、零改代码的本地代理 `headroom proxy`、一条命令包装编码 Agent 的 `headroom wrap`，以及 MCP 服务。

## 核心特性

- **按内容路由压缩**：ContentRouter 识别类型，JSON 走 SmartCrusher，源码走 CodeCompressor（AST），文本走 Kompress-v2-base（HF 模型）
- **可逆压缩（CCR）**：原文缓存在本地，模型需要时调用 `headroom_retrieve` 取回
- **CacheAligner**：标记会破坏供应商 KV-cache 前缀的易变内容，但不改写 prompt
- **Agent 包装**：`headroom wrap claude|codex|cursor|aider|opencode|cline|goose|…`，`headroom unwrap` 撤销
- **跨 Agent 记忆**：Claude、Codex、Gemini、Grok 共享一个存储并自动去重
- **`headroom learn`**：挖掘失败会话，把纠正写入 `CLAUDE.local.md`、`AGENTS.md` 等
- **输出 token 削减**：可选的 Verbosity steering 等，减少模型回写的冗余内容（默认关闭）
- **可观测**：`headroom doctor`、`headroom dashboard`、`headroom savings` 查看实际节省

## 适合场景

- 每天跑编码 Agent、工具输出量大的长会话，希望不改代码就省 token
- 在多个 Agent 之间需要一份共享记忆
- 需要可逆压缩，必要时能取回原文

## 注意事项

- README 实测四个场景节省 21%–57%；重复 JSON/日志可超 90%，散文和本就紧凑的内容几乎压不动
- 准确性评测中 N=100 时 ±0.03 落在置信区间内，README 明确说不应解读为提升
- `headroom` CLI 只在 PyPI 包中提供；npm 的 `headroom-ai` 仅是 TypeScript SDK
- `headroom wrap` 会安装并注册 Serena（语义代码导航 MCP），可用 `--code-memory none` 跳过
- 需 Python 3.10+；无法运行本地进程的沙箱环境不适用
