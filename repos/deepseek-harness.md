# deepseek-harness

**仓库**：[deepseek-ai/deepseek-harness](https://github.com/deepseek-ai/deepseek-harness)
**分类**：编码 Agent
**Stars**：249.5k+
**Forks**：30,000+
**协议**：MIT
**语言**：TypeScript
**出品方**：DeepSeek AI

> **一句话**：DeepSeek 官方开源的 Agent Harness（`dsh`）——"一切皆插件"架构，基于 Cordis 构建，一条 npx 命令即可拉起 Web UI。

## 是什么

DeepSeek Harness（命令 `dsh`）是 DeepSeek AI 开源的 **Agent Harness**，核心理念是 **everything-is-a-plugin**（一切皆插件），底层由 [Cordis](https://github.com/cordiverse/cordis) 驱动，其设计思想见论文《A Programming Paradigm for Spatiotemporal Composability》。

项目目前处于 **developer preview** 阶段，迭代很快，README 明确警告会有不兼容变更，并要求运行前阅读安全声明（SAFETY.md）。

## 核心特性

- **一切皆插件**：功能以插件形式组织，基于 Cordis 插件体系
- **一键启动**：`npx @deepseek-ai/dsh web` 启动 Web UI（默认 `http://127.0.0.1:3080`），SSH 场景只打印地址，可用 `--no-open` 不自动开浏览器
- **Web / Desktop 两种形态**：开发指南提供 Web 与 Desktop 对应的构建命令
- **插件生态**：给插件仓库打上 `dsh-plugin` topic 即可被发现
- **文档与社区**：独立文档站、GitHub Discussions、Discord
- **TypeScript + pnpm**：可从源码 `pnpm install && pnpm run build && pnpm dsh web` 运行

## 适合场景

- 想使用或研究 DeepSeek 官方 Agent Harness 的开发者
- 希望以插件方式扩展 Agent 能力、自建插件生态
- 想了解"插件化 Agent 架构"设计思路的人

## 注意事项

- 处于 developer preview，**会有破坏性变更**，不建议直接用于生产
- 运行前须阅读 SAFETY.md 安全声明
- README 未展开具体能力清单，细节需查阅官方文档站
- 依赖 Node.js 环境；第三方依赖许可见 THIRD_PARTY_NOTICES.md
