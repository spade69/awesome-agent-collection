# agent-browser

**仓库**：[vercel-labs/agent-browser](https://github.com/vercel-labs/agent-browser)
**分类**：Agent 基础设施
**Stars**：43.9k+
**Forks**：2,900+
**协议**：Apache-2.0
**语言**：Rust
**出品方**：Vercel Labs

> **一句话**：为 AI Agent 打造的浏览器自动化 CLI——原生 Rust 实现，用带 ref 的无障碍树快照让 Agent 精准点击与填表，无需 Playwright。

## 是什么

agent-browser 是 Vercel Labs 出品的 **浏览器自动化命令行工具**，面向 AI Agent 设计。核心用法是：`snapshot` 获取页面的无障碍树并为元素生成 `@e2` 之类的 ref，Agent 再用 ref 执行 `click`、`fill`、`get text` 等操作，也支持传统 CSS 选择器和语义查找。

它是原生 Rust 二进制，通过 npm、Homebrew 或 Cargo 安装，浏览器使用 Chrome for Testing，并能自动检测已有的 Chrome、Brave、Playwright、Puppeteer。README 称 daemon 运行不需要 Playwright 或 Node.js。

## 核心特性

- **ref 快照工作流**：`snapshot` 输出带 ref 的无障碍树，适合 LLM 直接引用元素
- **丰富命令集**：open、click、type、fill、press、hover、select、drag、upload、scroll、screenshot、pdf、eval 等
- **截图省 token**：`--annotate` 带编号标注，`--if-changed` 跳过无变化的截图
- **CDP 连接**：`connect <port>` 接入已有浏览器，并可启用 WebSocket 流式输出
- **WebMCP（实验性）**：自动发现页面暴露的工具，仅注入名称与简介，按需再取完整 schema
- **AI chat 模式**：`chat` 用自然语言单次或交互式控制浏览器
- **MCP 与 Skills**：可通过 `agent-browser mcp` 启动 MCP 配置，并有 skills.sh 技能分发
- **点击防遮挡**：目标被弹窗或同意横幅覆盖时提前报错并提示遮挡元素

## 适合场景

- 让编码/通用 Agent 浏览网页、填表、抓取内容、截图
- 对启动速度和资源占用敏感、不想引入 Playwright 依赖的 Agent 工作流
- Web 应用的端到端测试或页面巡检由 Agent 驱动

## 注意事项

- 首次使用需 `agent-browser install` 下载 Chrome；Linux 需额外系统依赖（`--with-deps`）
- WebMCP 为实验性功能，默认开启，可用 `--no-webmcp` 关闭
- 页面提供的工具元数据均为不可信数据，README 明确指出这只是来源提示，不是防 prompt injection 的安全边界；操作需遵循宿主的权限与确认策略
- 从源码构建需要 Node.js 24+、pnpm 11+ 与 Rust
