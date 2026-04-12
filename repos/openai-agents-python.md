# openai-agents-python

**仓库**：[openai/openai-agents-python](https://github.com/openai/openai-agents-python)
**分类**：Agent 框架 / 官方 SDK
**Stars**：20,700+
**Forks**：3,400+
**协议**：MIT
**语言**：Python 3.10+
**出品方**：OpenAI 官方

> **一句话**：OpenAI 官方出品的轻量多 Agent 编排 SDK，内置 Handoff、Guardrails、Human-in-the-Loop，100+ LLM 均可接入。

## 是什么

OpenAI Agents SDK 是 OpenAI 官方维护的**多 Agent 工作流框架**，前身是实验性的 Swarm 项目，正式化为生产级 SDK。设计哲学是"最小原语 + 最大灵活性"——核心概念只有 Agent、Handoff、Tool、Guardrail 四个，但足以构建复杂的 Agent 系统。

## 核心概念

| 概念 | 说明 |
|------|------|
| **Agent** | 配备 instructions、tools、guardrails 和 handoffs 的 LLM 实例 |
| **Handoff** | Agent 之间的任务移交机制，实现分工协作 |
| **Tools** | 函数工具、MCP 工具、托管工具三类 |
| **Guardrails** | 输入/输出安全校验，支持并行执行 |
| **Human in the Loop** | 内置人工介入机制，适合高风险任务 |
| **Sessions** | 跨 Agent 运行的自动对话历史管理 |
| **Tracing** | 内置 Agent 运行追踪，接入 OpenAI 平台可视化 |

## 代码示例

```python
from agents import Agent, Runner

agent = Agent(name="Assistant", instructions="You are a helpful assistant")
result = Runner.run_sync(agent, "Write a haiku about recursion.")
print(result.final_output)
```

## 特色功能

- **Realtime Agents**：基于 `gpt-realtime-1.5` 构建语音 Agent，完整 Agent 特性可用
- **Provider-agnostic**：支持 OpenAI Responses API、Chat Completions API 及 100+ LLM（via LiteLLM）
- **Agents as Tools**：Agent 可以被其他 Agent 当作工具调用，无缝嵌套
- **Redis Session 支持**：生产级分布式会话管理

## 与其他框架的定位

| 框架 | 定位 |
|------|------|
| openai-agents-python | 官方轻量 SDK，原语级控制 |
| google/adk-python | Google 生态，Gemini 优化 |
| deer-flow | 长周期 SuperAgent，沙箱执行 |
| oh-my-claudecode | Claude Code 多 Agent 编排 |

## 适合场景

- 需要精细控制 Agent 行为和 Handoff 逻辑的生产系统
- 构建语音 Agent（Realtime）
- 希望官方支持和长期维护的团队

## 注意事项

- 主要面向 OpenAI API 用户，虽然支持其他 LLM 但部分特性需要 OpenAI 特有 API
- Tracing 可视化依赖 OpenAI 平台，第三方 LLM 用户需自行接入追踪工具
