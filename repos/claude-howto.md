# claude-howto

**仓库**：[luongnv89/claude-howto](https://github.com/luongnv89/claude-howto)
**分类**：学习资源 / Claude Code 生态
**Stars**：22,400+
**Forks**：2,700+
**协议**：MIT
**版本**：v2.3.0（2026 年 4 月，兼容 Claude Code 2.1+）
**周增 Stars**：10,745

> **一句话**：10 个模块带你从零到精通 Claude Code，每个特性配可直接 copy 用的模板，11-13 小时完成全部学习路径。

## 是什么

一份结构化的、图文并茂的 Claude Code 实战指南。官方文档描述特性，这份指南告诉你怎么把它们组合成真正节省时间的工作流。

## 覆盖的 10 个模块

| 模块 | 内容 | 难度 | 时间 |
|------|------|------|------|
| Slash Commands | 自定义斜杠命令 | 入门 | 30 min |
| Memory | 跨会话持久上下文 | 入门+ | 45 min |
| Checkpoints | 会话快照与回滚 | 中级 | 45 min |
| CLI Basics | 命令行用法 | 入门+ | 30 min |
| Skills | 可复用自动化能力 | 中级 | 1h |
| Hooks | 事件驱动自动化 | 中级 | 1h |
| MCP | 外部工具接入 | 中级+ | 1h |
| Subagents | 专业化子智能体 | 中级+ | 1.5h |
| Advanced Features | Plan Mode、后台任务等 | 高级 | 2-3h |
| Plugins | 功能捆绑包 | 高级 | 2h |

## 特色

- **Mermaid 图解**：每个特性都有内部运作流程图，理解"为什么"而不只是"怎么做"
- **即插即用模板**：slash commands、CLAUDE.md、hook 脚本、MCP 配置全部可直接 cp 到项目
- **自测系统**：`/self-assessment` 和 `/lesson-quiz` 直接在 Claude Code 里跑，找出知识盲区
- **离线 EPUB**：`uv run scripts/build_epub.py` 生成带渲染图的电子书
- **多语言**：中文、越南文、英文均有翻译

## 与 everything-claude-code 的区别

| 维度 | everything-claude-code | claude-howto |
|------|------------------------|-------------|
| 定位 | 配置即装即用 | 学习路径 |
| 目标 | 拿来直接用 | 从头理解再用 |
| 深度 | 实战最佳实践 | 原理 + 图解 + 示例 |
| 适合 | 想快速上手的老手 | 想系统学习的新手/中级用户 |

## 注意事项

- 内容为学习资源，不是可运行的工具
- 需要已安装 Claude Code（v2.1+）
- 模板需手动复制到自己项目
