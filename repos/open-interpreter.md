# open-interpreter

**仓库**：[openinterpreter/openinterpreter](https://github.com/openinterpreter/openinterpreter)
**分类**：编码 Agent
**Stars**：67.7k+
**Forks**：5,800+
**协议**：Apache 2.0
**语言**：Rust（Kimi K3 harness）+ Python

> **一句话**：老牌"终端 ChatGPT 解释器"重生——用 Rust 重写核心 Harness，专为低成本/开放权重模型（Kimi K3 等）优化，让终端里跑本地大模型也能有 Codex 级体验。

## 是什么

Open Interpreter 最早以"让 GPT-4 直接在你电脑上运行代码"闯出名声，是编码 Agent 品类的先驱项目之一。当前版本聚焦于**为开放权重/低成本模型专门优化的终端编码 Agent**：针对 Kimi K3 重新实现了官方推荐的 Kimi Code Harness（Rust 实现），追求与闭源模型 Harness（如 Codex）相当的交互体验，但成本大幅降低。

## 核心特性

- **低成本模型优先**：专门为开放权重模型调优交互和 Prompt 策略，而非依赖顶级闭源模型
- **Rust 核心 Harness**：重写关键执行链路以提升性能和稳定性
- **一行安装**：`curl -fsSL https://www.openinterpreter.com/install | sh` 即可用
- **多语言文档**：英/西/中文完整覆盖

## 适合场景

- 想用开放权重模型（Kimi、DeepSeek 等）获得接近顶级闭源 Agent 的终端编码体验
- 对 API 成本敏感，希望用更便宜的模型跑日常编码任务
- 需要老牌项目的稳定生态和活跃社区支持

## 注意事项

- 当前版本重心已转向 Kimi K3 等开放模型优化，若追求顶级模型效果仍建议对比 Claude Code / Codex 等原生 Harness
