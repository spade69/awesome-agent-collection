# continue

**仓库**：[continuedev/continue](https://github.com/continuedev/continue)
**分类**：编码 Agent
**Stars**：36k+
**Forks**：5,400+
**协议**：Apache-2.0
**语言**：TypeScript
**出品方**：Continue

> **一句话**：装进 VS Code 和 JetBrains 的开源编码 Agent——补全、对话、Agent 模式三合一，模型和规则全部自己说了算，是 Copilot / Cursor 的开源竞品。

## 是什么

Continue 是一个 **IDE 内的开源编码助手**，同时支持 VS Code 和 JetBrains 全家桶。它把"代码补全 + 侧边栏对话 + 自主 Agent"整合到一个插件里，让开发者在熟悉的编辑器里获得完整的 AI 编程体验。

与闭源的 Copilot / Cursor 不同，Continue 的最大特点是**开放和可定制**：模型任选（云端或本地）、上下文来源可配置、规则可自定义，团队还能把配置沉淀成可复用的 assistant 分发给成员。

## 核心特性

- **三种形态**：Autocomplete 补全、Chat 对话、Agent 自主执行任务
- **模型无关**：接入任意云端或本地模型，不锁厂商
- **可定制上下文**：代码库、文档、终端输出等作为上下文按需注入
- **规则与配置**：以配置文件定义 assistant 行为，团队可共享复用
- **双 IDE 支持**：VS Code 与 JetBrains 一致体验

## 适合场景

- 想要一个不锁模型、可自托管后端的 IDE 编码助手
- 团队希望统一并复用 AI 编程规则与上下文配置
- 用惯 VS Code / JetBrains，不想切换到独立的 AI 编辑器

## 注意事项

- 补全质量与体验高度依赖所选模型
- 深度定制（规则、上下文提供器）有一定学习成本
- 本地模型方案对硬件有要求
