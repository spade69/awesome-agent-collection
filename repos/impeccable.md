# impeccable

**仓库**：[pbakaus/impeccable](https://github.com/pbakaus/impeccable)
**分类**：最佳实践 / 学习资源
**Stars**：88.3k+
**Forks**：5,200+
**协议**：Apache-2.0
**语言**：Rust
**出品方**：Paul Bakaus

> **一句话**：让 AI 编码 Agent 更会做设计的设计语言——1 个 skill、24 条命令、浏览器实时迭代，外加 62 条确定性规则检测 AI 生成前端的"套路感"。

## 是什么

Impeccable 是面向 AI 编码 Agent 的 **前端设计指导 skill + 检测 CLI**。README 称它起步于 Anthropic 的 frontend-design skill，针对模型都在同一批 SaaS 模板上训练、产出千篇一律的问题：全站 Inter 字体、紫到蓝渐变、卡片套卡片、彩色背景上的灰字、每个标题上方的圆角图标方块等。

使用方式是先 `npx impeccable install` 安装到各类 Agent 工具，再在工具内运行 `/impeccable init`，它会检查项目并把受众、目的、约束、语气等"持久产品事实"写入 `PRODUCT.md`，后续命令据此工作；已有或新建的视觉系统单独记录在 `DESIGN.md`。

## 核心特性

- **24 条命令**：`craft`、`shape`、`critique`、`audit`、`polish`、`bolder`、`quieter`、`distill`、`harden`、`animate`、`typeset`、`layout`、`live`、`generate` 等，统一走 `/impeccable <command> <target>`，可用 `pin` 生成独立快捷命令
- **反模式指导**：明确避免滥用字体、彩底灰字、纯黑/纯灰、卡片嵌套、弹跳缓动等
- **62 条确定性检测规则**：`npx impeccable detect` 可扫目录、HTML 文件或 URL，无需 LLM 和 API Key；支持 `--json` 与 `--github` 注解输出，适合 CI
- **设计 hook**：在 Claude Code、GitHub Copilot、Codex、Cursor、Grok Build 上安装原生 hook，UI 文件被编辑后自动运行检测并把结果回传给 Agent
- **Live 模式**：在本地开发服务器的浏览器中对元素做视觉变体迭代
- **comp-first / code-first 两种构建路径**：先出高保真稿再实现，或直接写代码，记录在 `.impeccable/config.json`
- **广泛工具支持**：Cursor、Claude Code、Copilot、Gemini CLI、Codex CLI、OpenCode、Trae、Qoder、Kiro、Hermes Agent 等十余种
- **自包含引擎**：skill 附带启动脚本调用独立二进制，hook 与 skill 本身不需要 Node

## 适合场景

- 用 AI Agent 写前端、希望摆脱"AI 味"模板化设计的个人与团队
- 在 CI 中对前端代码或线上页面做设计质量与可访问性的确定性检查
- 需要与 Agent 建立共享设计词汇（打磨、审查、精简、加动效等）的产品开发流程

## 注意事项

- 默认有遥测：开始新设计时会向 impeccable.style 的 roll API 请求视觉方案并匿名记录选择结果；可用 `npx impeccable telemetry off` 或 `DO_NOT_TRACK=1` 关闭，README 称不发送项目名、文件、代码
- Claude Code 中的 hook 独立于模型工具审批运行，首次编辑或 Stop 时可能下载并缓存引擎，无人值守运行前应审查已安装的 hook
- Live 模式仅用于本地可信项目，不支持注入线上生产站点；应用文案修改时会执行 `package.json` 中的可选校验脚本
- 运行过程会在 `.impeccable/` 下生成大量临时文件，README 给出了需加入 `.gitignore` 的条目
- Codex 安装后需在 `/hooks` 中手动批准项目 hook；README 提示检测通过只是证据，不能替代人工查看渲染效果
