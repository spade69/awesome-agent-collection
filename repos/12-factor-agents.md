# 12-factor-agents

**仓库**：[humanlayer/12-factor-agents](https://github.com/humanlayer/12-factor-agents)
**分类**：最佳实践 / 工程指南
**Stars**：19,200+
**Forks**：1,400+
**协议**：Apache 2.0（代码）/ CC BY-SA 4.0（内容）
**语言**：TypeScript
**出品方**：HumanLayer / Dex

> **一句话**：仿照《12-Factor App》写给 LLM 工程师的十二条军规——告诉你怎么把 Agent 从 Demo 变成真正能上生产的软件。

## 是什么

作者 Dex 调研了几乎所有主流 Agent 框架（LangChain、CrewAI、LangGraph、smolagents 等），以及大量 YC 创业公司的实际生产系统后，总结出一个核心发现：

> **真正在生产环境跑的 Agent，大多数是以确定性代码为主体、LLM 点缀在关键节点的软件，而不是"给 LLM 一包工具让它自己循环"。**

12-factor-agents 是这一洞察的系统化总结，在 AI Engineer World's Fair 上进行了演讲。

## 十二条原则

| # | 原则 | 核心思想 |
|---|------|---------|
| 1 | Natural Language to Tool Calls | 让 LLM 做决策翻译，不做执行 |
| 2 | Own your prompts | 不要把 Prompt 托管给框架 |
| 3 | Own your context window | 你要精确控制 context 里有什么 |
| 4 | Tools are just structured outputs | 工具调用本质是结构化输出 |
| 5 | Unify execution state and business state | 执行状态和业务状态应该统一 |
| 6 | Launch/Pause/Resume with simple APIs | 用简单 API 实现 Agent 生命周期管理 |
| 7 | Contact humans with tool calls | 人工介入也是一种工具调用 |
| 8 | Own your control flow | 不要让框架替你管控制流 |
| 9 | Compact errors into context window | 错误信息压缩后放入 context |
| 10 | Small, focused agents | 专注的小 Agent 胜过万能大 Agent |
| 11 | Trigger from anywhere | Agent 应该可以从任何地方触发 |
| 12 | Make your agent a stateless reducer | Agent 应该是无状态的 reducer |

## 核心观点

**对框架的批判**：大多数框架在 Demo 阶段好用，但生产中强依赖框架的 Agent 更难维护、更难调试、更难扩展。

**对 Agent 本质的重新定义**：Agent 不是"有自主意识的 AI"，而是**在循环中运行的软件**——循环的每一步可能由 LLM 决策，但循环本身是工程师控制的。

## 适合人群

- 正在把 Agent 从 PoC 推向生产的工程师
- 对主流框架感到"用着不顺手"但说不清为什么的开发者
- 想为团队建立 Agent 工程规范的技术负责人

## 注意事项

- 这是**工程思想指南**，不是可直接安装使用的框架
- 配套 `npx/uvx create-12-factor-agent` 脚手架正在社区共建中
- 部分原则与"框架全包"的做法直接冲突，适合有一定 Agent 开发经验后再读
