# superpowers

**仓库**：[obra/superpowers](https://github.com/obra/superpowers)
**分类**：最佳实践 / 学习资源
**Stars**：305.3k+
**Forks**：26,000+
**协议**：MIT
**语言**：Shell
**出品方**：Jesse Vincent（obra）/ Prime Radiant

> **一句话**：给编码 Agent 装上一整套"软件开发方法论"——由可组合的 Skills 自动触发，从需求澄清、写计划、TDD 到子 Agent 开发与评审，一路按流程推进。

## 是什么

Superpowers 是一套面向编码 Agent 的 **完整软件开发方法论**，以一组可组合的 Skills 加初始指令构成，确保 Agent 在做任何事之前先检查并使用相关技能。Skills 自动触发，用户无需额外操作。

它的核心流程：Agent 发现你要构建东西时不会直接写代码，而是先追问真实意图、分块展示 spec；设计确认后产出足够详细的实施计划，强调 RED/GREEN TDD、YAGNI 与 DRY；随后按任务派发子 Agent 执行并逐步评审，README 称 Agent 常可连续自主工作数小时而不偏离计划。

## 核心特性

- **基础工作流 7 步**：brainstorming → using-git-worktrees → writing-plans → subagent-driven-development / executing-plans → test-driven-development → requesting-code-review → finishing-a-development-branch
- **强制流程而非建议**：Agent 在任务前检查相关 Skill，工作流是必经步骤
- **TDD 强制**：RED-GREEN-REFACTOR，先写测试；README 称会删除先于测试写出的代码
- **子 Agent 驱动开发**：每个任务一个全新子 Agent，两阶段评审（先符合 spec，再看代码质量）
- **调试与验证类 Skills**：systematic-debugging（4 阶段根因流程）、verification-before-completion、diagnosing-superpowers（复盘会话问题）
- **元技能**：writing-skills 指导自建 Skill，using-superpowers 引导技能体系
- **多平台安装**：Claude Code（官方插件市场）、Codex、Cursor、Gemini CLI、GitHub Copilot CLI、OpenCode、Qwen Code 等

## 适合场景

- 想让 Agent 少"上来就写代码"、多按规范流程交付的个人或团队
- 学习如何用 Skills 把工程方法论（TDD、评审、计划）固化给 Agent
- 需要长时间自主执行、同时要保证质量闸门的开发任务

## 注意事项

- 流程较重，小改动也可能触发完整的设计与计划环节，需自行权衡
- 各 Agent 平台安装方式不同，多平台使用需分别安装
- 提供商业支持服务（Prime Radiant），开源部分为 MIT
- 子 Agent 逐任务评审会带来额外 token 消耗（README 提供 executing-plans 作为更省的内联方案）
