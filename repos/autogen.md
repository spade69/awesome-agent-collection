# autogen

**仓库**：[microsoft/autogen](https://github.com/microsoft/autogen)
**分类**：多智能体框架 / 对话式 Agent 编排
**Stars**：57,400+
**Forks**：8,600+
**协议**：MIT / CC-BY-4.0
**语言**：Python
**出品方**：Microsoft Research

> **一句话**：微软出品的多 Agent 对话编排框架，让 LLM、工具、人类在一个对话循环里自由组合协作，是业界研究引用最广的 Agent 框架之一。

## 是什么

AutoGen 是微软研究院开源的**多智能体对话框架**，核心抽象是"可对话的 Agent"——每个 Agent 都能发送/接收消息，并决定下一步行动。Agent 之间、Agent 与人类之间、Agent 与工具之间，都通过统一的消息协议交互。

AutoGen 0.4 重写为 `autogen-core`（事件驱动架构）+ `autogen-agentchat`（高级多 Agent 应用层），两层分离，可按需取用。

## 核心架构

| 组件 | 作用 |
|------|------|
| **AssistantAgent** | 调用 LLM 生成响应的智能体 |
| **UserProxyAgent** | 代理人类输入 / 执行代码 |
| **GroupChat** | 多 Agent 群聊编排器 |
| **ConversableAgent** | 所有 Agent 的基类 |
| **Runtime** | 事件驱动的 Agent 运行时（0.4+） |

## 核心功能

- **Human-in-the-Loop**：内置人工干预节点，关键决策可暂停等待确认
- **代码执行沙箱**：Docker / 本地两种执行环境，自动运行 LLM 生成的代码
- **GroupChat 编排**：多 Agent 轮流发言，支持自定义发言顺序策略
- **工具调用**：标准 function calling，支持所有 OpenAI 兼容模型
- **跨语言支持**：Python + .NET 双语言实现

## 与 crewAI 的对比

| 维度 | AutoGen | crewAI |
|------|---------|--------|
| 编排范式 | 对话驱动 | 任务/角色驱动 |
| 人机协作 | 原生支持 | 有限支持 |
| 适合任务 | 需要人工介入的迭代任务 | 全自动流水线 |
| API 稳定性 | 0.4 有破坏性变更 | 相对稳定 |

## 适合场景

- **代码调试与迭代**：自动生成代码、运行、分析错误、重新生成
- **需要人工审批的工作流**：如财务审批、法律文件生成
- **研究原型**：快速验证多 Agent 协作方案

## 注意事项

- 0.4 版本架构与 0.2 不兼容，迁移需成本
- GroupChat 中 Agent 发言顺序需仔细设计，否则容易陷入死循环
- 生产部署建议用 Docker 沙箱隔离代码执行
