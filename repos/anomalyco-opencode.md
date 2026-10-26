# OpenCode (anomalyco)

**仓库**：[anomalyco/opencode](https://github.com/anomalyco/opencode)
**分类**：编码 Agent
**Stars**：221.7k+
**Forks**：29,600+
**协议**：MIT
**语言**：TypeScript
**出品方**：anomalyco

> **一句话**：开源 AI 编码 Agent——提供终端 UI 与桌面应用，内置 build / plan 两种可 Tab 切换的 Agent。

## 是什么

OpenCode 自我定位为“开源 AI 编码 Agent”（The open source AI coding agent）。README 展示了其终端 UI 界面，同时提供桌面应用（BETA），覆盖 macOS（Apple Silicon / Intel）、Windows 与 Linux（.deb / .rpm / .AppImage）。

安装方式很多：官方一键脚本（安装到 `$HOME/.opencode/bin`）、npm/bun/pnpm/yarn 全局安装 `@opencode/cli`、Homebrew（官方 tap `anomalyco/tap/opencode-v2` 或官方 formula）、Arch（pacman / AUR）、mise 以及 Nix。

## 核心特性

- **两个内置 Agent**：用 `Tab` 键切换
  - **build**：默认的全权限 Agent，用于日常开发
  - **plan**：只读 Agent，默认拒绝文件编辑，执行 bash 前先请求许可，适合探索陌生代码库或规划改动
- **general 子 Agent**：用于复杂搜索与多步骤任务，内部使用，也可在消息中用 `@general` 调用
- **终端 UI + 桌面应用**：同一套能力既可在终端使用，也可通过桌面版（BETA）使用
- **多渠道安装**：curl 脚本、npm 系包管理器、Homebrew、pacman/AUR、mise、Nix 均有支持
- **多语言文档**：README 提供简体中文、繁体中文、日文、韩文等 20 余种语言版本

## 适合场景

- 想在终端里使用开源编码 Agent，替代闭源 CLI 工具
- 需要先用只读的 plan 模式分析陌生代码库，再切到 build 模式动手修改
- 偏好桌面 GUI 的开发者可使用桌面版

## 注意事项

- README 提示安装前需移除 0.1.x 之前的旧版本
- 桌面应用仍处于 BETA 阶段
- Homebrew 官方 formula 更新较慢，README 推荐使用 `anomalyco/tap/opencode-v2`
- README 内容较精简，Agent 配置等细节需查阅 opencode.ai/v2/docs
- 名称中带 "opencode" 的第三方项目，官方要求在 README 中声明与 OpenCode 团队无关
