# graphify

**仓库**：[Graphify-Labs/graphify](https://github.com/Graphify-Labs/graphify)
**分类**：Agent 基础设施
**Stars**：135.6k+
**Forks**：12,900+
**协议**：Apache-2.0
**语言**：Python
**出品方**：Graphify Labs

> **一句话**：把代码库连同文档、PDF、图片、视频变成可查询的知识图谱——tree-sitter 本地确定性解析，每条边可溯源，不用向量库。

## 是什么

graphify 是一个面向 AI 编码助手的 `/graphify` 技能与 CLI。在助手里输入 `/graphify .`，它会把整个项目映射成 **知识图谱**，让 Agent 用图查询代替逐文件 grep。

代码部分用 tree-sitter AST 解析，确定性、无需 LLM、数据不出本机；文档、PDF、图片和视频则借助助手自身模型或配置的 API key 做语义抽取。产物为三个文件：可交互的 `graph.html`、要点报告 `GRAPH_REPORT.md` 和完整图数据 `graph.json`。

## 核心特性

- **边可解释**：每条边标注 `EXTRACTED`（源码中显式存在）或 `INFERRED`（由 graphify 推断）
- **非向量索引**：无 embedding、无向量库，是可遍历的真实图
- **查询命令**：`graphify query` 返回问题相关子图，`graphify path A B` 追踪最短路径，`graphify explain` 解释单个概念
- **图分析**：God nodes（连接度最高的概念）、Leiden 社区划分（无 LLM 标注）
- **跨文件关系**：通过 tree-sitter 在约 40 种语言中解析 calls / imports / inherits / mixes_in
- **理由节点**：`# NOTE:` / `# WHY:` 注释和 ADR/RFC 引用成为与代码相连的一等节点
- **广泛平台支持**：Claude Code、Cursor、Codex、Gemini CLI、GitHub Copilot 等 20+ 助手，`graphify install` 自动检测并注册技能
- **可选扩展**：MCP stdio 服务、`graphify watch` 自动重建、git hook 提交时重建、AWS Bedrock 后端

## 适合场景

- 让编码 Agent 快速理解大型陌生代码库的结构与依赖
- 希望减少 Agent 反复读文件带来的 token 消耗
- 需要把代码与设计文档、ADR、PDF 等资料关联起来查询

## 注意事项

- 官方 PyPI 包名是 `graphifyy`（双 y），其他 `graphify*` 包与项目无关；需 Python 3.10+
- 非代码内容的语义抽取会调用模型后端；README 说明会按已设置的 API key 自动选择提供商（Gemini → Kimi → Claude → OpenAI → …），纯代码可用 `--code-only` 完全离线
- 所有 query / path / explain 调用会记录到 `~/.cache/graphify-queries.log`
- Codex 需在 `~/.codex/config.toml` 开启 `multi_agent = true` 才能并行抽取
- 跨仓、常驻图谱等能力属于商业版 Graphify Cloud
