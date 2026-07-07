# agent-zero

**仓库**：[agent0ai/agent-zero](https://github.com/agent0ai/agent-zero)
**分类**：SuperAgent / 通用自主 Agent
**Stars**：18.4k+
**Forks**：3,600+
**协议**：自定义（NOASSERTION，见仓库 LICENSE）
**语言**：Python
**出品方**：agent0ai

> **一句话**：给 AI Agent 一整套 Linux 系统——单个 Docker 容器内含完整桌面 + 插件中枢，Agent 可用自然语言即时创建工具、写代码、装软件，把电脑当作可编程的通用能力平台。

## 是什么

Agent Zero 是一个"有机成长"的通用型自主 Agent 框架。它不预设固定工具集，而是把**整台 Linux 机器当作 Agent 的工具**：需要什么能力就现场写代码、装程序、造工具。一个 Docker 容器即打包了完整 Linux 系统、桌面环境和可扩展的 Skill 插件中枢。

## 核心特性

| 特性 | 说明 |
|------|------|
| **计算机即工具** | Agent 直接用终端 / 代码解决问题，而非受限于预置 API |
| **完整 Linux 沙箱** | 单容器含桌面 + shell，隔离执行更安全 |
| **多 Agent 层级** | 上级 Agent 可派生下级 Agent 分担子任务 |
| **可扩展 Skill** | 插件中枢让 Agent 自行积累和复用技能 |
| **A0 Launcher / CLI** | 桌面启动器 + 命令行安装，支持无头脚本化部署 |

## 特色

- **高度动态**：行为不写死在代码里，用自然语言 prompt 即可改造 Agent
- **透明可定制**：一切皆可见、可干预、可扩展
- **A0 CLI Connector**：可把能力延伸到宿主机执行任务

## 适合场景

- 需要"什么都能干"的通用个人助理 / 自动化 Agent
- 想让 Agent 自主编写工具、操作系统完成开放式任务
- 研究自主 Agent 动态能力扩展的开发者

## 注意事项

- 赋予 Agent 完整系统权限，务必在隔离容器内运行，注意安全边界
- 许可协议为自定义条款，商用前请确认 LICENSE
- 动态执行能力强但也更不可预测，生产使用需加约束
