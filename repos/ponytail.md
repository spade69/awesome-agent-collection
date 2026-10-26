# ponytail

**仓库**：[DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail)
**分类**：最佳实践 / 学习资源
**Stars**：176.5k+
**Forks**：9,600+
**协议**：MIT
**语言**：JavaScript
**出品方**：Dietrich Gebert

> **一句话**：让 AI Agent 像最"懒"的资深工程师一样思考——只写任务真正需要的代码，优先复用已有实现，但绝不砍掉校验、错误处理、安全与可访问性。

## 是什么

Ponytail 本质是 **一个提示词**（`skills/ponytail/SKILL.md`，另有给规则文件类 Agent 用的精简版 `AGENTS.md`），仓库其余部分负责把它加载到不同的 Agent 中。形象来自公司里那个扎马尾、戴椭圆眼镜、看完你五十行代码后一言不发换成一行的老员工。

README 强调规则 **从来不是"最少 token"**，而是只写任务所需的代码；代码变少是因为必要，而非刻意压缩。工作方式是先读懂改动涉及的代码、追踪真实流程，再选择最省事的方案；含分支、循环、解析、金额或安全的逻辑会留下一个小测试，每次回复末尾说明跳过了什么、有何风险。

## 核心特性

- **基准数据**：README 称在 Claude Code 上用 Opus 5.5 跑 39 个任务（含真实 FastAPI + React 仓库）、每个 5 次；Ponytail 5 相对无 skill 基线代码 -53%、时间 -41%、成本 -26%、token -45%，98% 的风险逻辑附带测试（基线 68%）
- **安全任务不打折**：六个安全类任务（SQL 注入、路径穿越、伪造 token、限流等）30 次运行全部通过
- **三档强度**：`/ponytail lite | full | ultra | off`
- **`/ponytail-review`**：像要背 on-call 的资深工程师一样审查 diff，覆盖 bug、安全、真实负载、缺失测试、性能与可删代码，并会读取 diff 之外受影响的代码
- **`/ponytail-audit`**：对整个仓库先梳理入口与数据流，再按优先级排序问题
- **`/ponytail-debt`**：收集代码中的 `shortcut:` 注释形成技术债台账；`/ponytail-gain` 展示基准影响记分板
- **Band（5.3 新增）**：Claude Code 中提示框上方显示当前任务成本、token、Agent 耗时、复用率与测试状态，并提供本地 Board 页面汇总历史会话
- **多 Agent 支持**：Claude Code、Codex 插件安装；Copilot、Cursor、OpenCode、Gemini 等可复制 `AGENTS.md` 或按 INSTALL.md 安装

## 适合场景

- 受困于 Agent 过度工程化、重复造轮子、引入不必要依赖的项目
- 希望在减少代码量的同时保留关键测试与安全措施的团队
- 需要"资深视角"代码审查或全仓审计排序的场景

## 注意事项

- 命令需要支持 skill 的宿主；Cursor 规则文件、Windsurf、Cline、Copilot、Kiro 等仅加载常驻规则，不含命令
- Band 需 Claude Code 2.1.290+，不在 VS Code 聊天面板、云端会话或 `claude -p` 中显示；数据默认保存在本机 `~/.config/ponytail/band/`
- Codex 安装后需在 `/hooks` 中信任两个生命周期 hook 并新开线程
- 作者提示只从 GitHub `DietrichGebert/ponytail` 或 npm `@dietrichgebert/ponytail` 安装，官方从不分发 `.exe` / `.dll`
- 基准数据由项目自行测得，方法与局限见仓库 `benchmarks/results/` 下的报告
