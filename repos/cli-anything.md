# CLI-Anything

**仓库**：[HKUDS/CLI-Anything](https://github.com/HKUDS/CLI-Anything)
**分类**：Agent 基础设施
**Stars**：57.2k+
**Forks**：4,700+
**协议**：Apache-2.0
**语言**：Python
**出品方**：HKUDS（香港大学数据智能实验室）

> **一句话**：让任意软件变成"Agent 原生"——为桌面软件和服务生成带结构化 JSON 输出的 CLI，再通过 CLI-Hub 一条命令安装，让 Claude Code、Cursor、OpenClaw 等 Agent 直接驱动。

## 是什么

CLI-Anything 的出发点是"今天的软件服务于人，明天的用户是 Agent"。它认为 CLI 是人和 Agent 通用的接口：文本命令贴合 LLM 格式、可组合、`--help` 自描述、输出结构化 JSON。

项目提供两条路径：直接使用现成生态（安装 `cli-anything-hub`，从 CLI-Hub 注册表里浏览并安装社区 CLI），或为你的 Agent 安装 CLI-Anything 插件/技能，用 7 阶段 harness 生成流程为新软件构建 Agent 原生 CLI。

## 核心特性

- **CLI-Hub 包管理器**：`pip install cli-anything-hub` 后用 `cli-hub install <name>` 浏览、搜索、安装、更新、卸载 CLI
- **7 阶段 harness 生成器**：为目标软件自动生成 CLI，并附带 AI 可发现的 SKILL.md
- **多源安装**：公共注册表支持 pip、npm、brew 及系统自带工具
- **结构化输出**：JSON + 人类可读双模式，便于 Agent 解析
- **覆盖面广**：社区已贡献 Blender、FreeCAD、Zotero、Obsidian、QGIS、Godot、n8n 等大量软件的 CLI
- **多 Agent 适配**：支持 Claude Code、Cursor、Codex、OpenClaw、Pi、nanobot 等
- **测试完备**：README 标注 2,461 个测试通过，含单元与 E2E

## 适合场景

- 想让 Agent 操作本身没有 API/MCP 的桌面软件（设计、CAD、剪辑、笔记等）
- 希望用 CLI 而非 GUI 自动化来获得确定性和可组合性
- 想把自己的软件或服务包装成 Agent 可用的工具并发布到社区

## 注意事项

- 各 CLI 由社区贡献，质量与维护程度不一，使用前需自行评估
- 部分 CLI 依赖对应软件本体已安装（如 Blender、LibreOffice），且有平台差异（如仅 Windows）
- 近期 README 提到对 XML 解析、路径穿越等做过安全加固，说明第三方 CLI 的安全面需要留意
