# andrej-karpathy-skills

**仓库**：[multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills)
**分类**：最佳实践 / 学习资源
**Stars**：224.1k+
**Forks**：22,400+
**协议**：MIT（README 标注，GitHub API 未识别）
**语言**：Markdown（GitHub API 未标注主语言）
**出品方**：Multica（multica-ai）

> **一句话**：一份改善 Claude Code 行为的 CLAUDE.md——把 Karpathy 对 LLM 编码陋习的观察提炼成四条原则：先想后写、简单优先、外科手术式修改、目标驱动执行。

## 是什么

andrej-karpathy-skills 是 **一个单文件 `CLAUDE.md` 行为准则**，来源是 Andrej Karpathy 在 X 上对 LLM 写代码问题的吐槽：模型会默默做错误假设、不澄清困惑、不暴露权衡；喜欢过度复杂化代码和 API、堆抽象、不清理死代码；还会顺手改动或删除自己没理解透的注释与代码。

仓库把这些问题归纳为四条原则写进一个文件，可作为 Claude Code 插件安装，也可直接下载/追加到项目的 `CLAUDE.md`，仓库还附带 Cursor 项目规则。README 提供英文与简体中文版本。

## 核心特性

- **Think Before Coding**：明确陈述假设、存在歧义时列出多种解读、该反驳时反驳、困惑时停下来提问
- **Simplicity First**：只写解决问题所需的最少代码，不加未要求的功能、单次使用的抽象或"可配置性"；自检标准是"资深工程师会不会觉得过度复杂"
- **Surgical Changes**：只动必须动的，不顺手"改进"相邻代码、格式与注释；只清理自己改动造成的孤儿代码，既有死代码只提示不删除
- **Goal-Driven Execution**：把命令式任务转成可验证目标（如"先写复现 bug 的测试再让它通过"），多步任务写出 `步骤 → verify: 检查` 计划
- **多种安装方式**：Claude Code 插件市场安装，或 `curl` 下载 `CLAUDE.md` 到新项目 / 追加到已有项目
- **Cursor 支持**：仓库内含 `.cursor/rules/karpathy-guidelines.mdc` 项目规则，并有 CURSOR.md 说明
- **生效判据**：diff 里无关改动变少、因过度复杂导致的重写变少、澄清问题出现在实现之前、PR 更干净

## 适合场景

- 想快速给 Claude Code / Cursor 加一套通用编码纪律的个人或团队
- 受困于 Agent 擅自假设、过度工程化、顺手重构等问题的项目
- 作为编写自家 `CLAUDE.md` / 规则文件的参考模板，再叠加项目特定规则

## 注意事项

- README 明确说明这些准则偏向 **谨慎而非速度**，简单任务（改错字、显而易见的一行修改）需自行判断，不必全套执行
- 设计为与项目特定指令合并使用，需自行补充如"使用 TypeScript strict mode"之类的项目规则
- README 中的插件市场与 `curl` 安装命令指向 `forrestchang/andrej-karpathy-skills` 路径，与当前仓库地址不同，安装时注意核对
- 本质是一份提示词/规则文件，没有可执行代码，效果依赖模型对指令的遵循程度
