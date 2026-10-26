# Open Code Review

**仓库**：[alibaba/open-code-review](https://github.com/alibaba/open-code-review)
**分类**：编码 Agent
**Stars**：48.3k+
**Forks**：3,500+
**协议**：Apache-2.0
**语言**：Go
**出品方**：阿里巴巴（Alibaba）

> **一句话**：阿里内部 AI 代码评审助手开源版——确定性工程流水线 + LLM Agent 混合架构，输出行级精准的结构化评审意见。

## 是什么

Open Code Review（命令 `ocr`）是一个 **AI 代码评审 CLI 工具**，起源于阿里巴巴集团内部官方 AI 代码评审助手，README 称过去两年服务了数万名开发者、发现数百万代码缺陷，验证后孵化为开源项目，只需配置模型端点即可使用。

它读取 Git diff，通过带工具调用能力的 Agent 把变更文件发给可配置的 LLM，生成行级精度的结构化评审意见。Agent 可读取完整文件、搜索代码库、查看其他变更文件作为上下文；`ocr scan` 还能对整个文件或目录做全量审查，适合审计没有 diff 的陌生代码库。

## 核心特性

- **确定性 × Agent 混合架构**：文件筛选、文件打包、规则匹配、评论定位与反思交给工程逻辑硬约束，动态决策与上下文检索交给 Agent
- **智能文件打包**：相关文件（如多语言 properties）合并为一个评审单元，每个单元作为隔离上下文的子 Agent 并发运行，适应超大变更集
- **细粒度规则匹配**：基于模板引擎按文件特征匹配评审规则，比纯语言引导更稳定可预测
- **多种评审模式**：工作区变更、分支区间（merge-base）、单个 commit、全量 `scan`，支持会话中断后 `--resume` 续审
- **Delegation 模式**：由你的编码 Agent 用自己的 LLM 执行评审，OCR 负责文件选择和规则解析，无需配置 OCR 的 API key
- **广泛集成**：Claude Code、Codex、Cursor、Kimi Code、OpenCode 插件，以及 MCP Server、GitHub Actions / GitLab CI / Gerrit 等 CI/CD 集成
- **会话查看器与可观测**：浏览器回放评审会话、标记已修复/忽略；支持 OpenTelemetry

## 适合场景

- 团队 MR/PR 的自动化 AI 评审，接入 CI 流水线
- 编码 Agent 内部调用专用评审能力，替代用通用 Agent + Skill 做评审
- 对陌生代码库或无 diff 目录做全量代码审计

## 注意事项

- 依赖 Git >= 2.41
- 除非使用 Delegation 模式，否则需先通过 `ocr config provider/model` 配置 LLM
- README 基准称相比 Claude Code 在同模型下 Precision 与 F1 更高、token 约 1/9，但 Recall 更低——这是刻意偏向精确率、减少噪声的取舍
- 基准数据集 AACR-Bench 公开于 Hugging Face（50 个仓库、200 个真实 PR、10 种语言）
