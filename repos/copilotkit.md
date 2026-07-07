# copilotkit

**仓库**：[CopilotKit/CopilotKit](https://github.com/CopilotKit/CopilotKit)
**分类**：Agent 框架 / 前端 Agent UI
**Stars**：35.8k+
**Forks**：4,000+
**协议**：MIT
**语言**：TypeScript
**出品方**：CopilotKit

> **一句话**：为 Web 应用注入 AI Copilot 能力的 React/TypeScript 前端 SDK，让 LLM 能感知并操作应用状态，同时自研 AG-UI 协议作为 Agent 流式状态传输的开放标准。

## 是什么

CopilotKit 是专为前端开发者设计的 Agent UI 框架。传统 AI 聊天组件（如嵌入一个 ChatGPT 窗口）与应用本身是割裂的——AI 不知道页面上有什么数据，也无法修改应用状态。CopilotKit 解决的核心问题是：**让 AI 真正融入应用**，能读取组件状态、触发前端 action、与 LangGraph/CrewAI 后端 Agent 实时同步。

它是 AG-UI（Agent-UI）协议的制定者，该协议定义了 Agent 流式状态如何传输到前端，已成为 Agent 前端集成的开放标准。

## 核心功能

| 功能 | 说明 |
|------|------|
| **useCopilotChat** | 感知应用状态的 AI 对话 Hook，LLM 可读取你注册的组件数据 |
| **CopilotTextarea** | 带上下文感知自动补全的 AI 增强输入框，替代普通 `<textarea>` |
| **useCopilotAction** | 让 AI 调用前端 Action（数据变更、UI 更新、弹窗等） |
| **useCoAgent** | 从前端直接运行 LangGraph / CrewAI Agent，实时流式同步 Agent 状态 |
| **CopilotSidebar / Popup** | 开箱即用的 Copilot 面板 UI 组件，零配置嵌入应用 |
| **AG-UI 协议** | 标准化 Agent 流式状态传输协议，兼容多种 Agent 后端 |

## 典型用法

```tsx
import { useCopilotAction, useCopilotReadable } from "@copilotkit/react-core";
import { CopilotSidebar } from "@copilotkit/react-ui";

function TodoApp() {
  const [todos, setTodos] = useState([]);

  // 让 AI 能读取当前 todo 列表
  useCopilotReadable({ description: "当前待办列表", value: todos });

  // 让 AI 能添加 todo
  useCopilotAction({
    name: "addTodo",
    description: "添加一个新的待办事项",
    parameters: [{ name: "text", type: "string" }],
    handler: ({ text }) => setTodos([...todos, { text }]),
  });

  return <CopilotSidebar>{/* 你的应用内容 */}</CopilotSidebar>;
}
```

## 适合场景

- **SaaS 应用内嵌 Copilot**：用户可以用自然语言操作应用，而非只是聊天
- **AI 辅助填表/编辑器**：CopilotTextarea 为文本编辑场景提供上下文感知补全
- **前端对接 LangGraph Agent**：`useCoAgent` 实时展示 Agent 中间状态，提升透明度
- **快速原型**：开箱即用的 UI 组件，几行代码即可在现有 React 应用中加入 AI 对话面板
- **多 Agent 编排可视化**：与 CrewAI、LangGraph 配合，在前端实时展示多 Agent 协作过程

## 注意事项

- 目前以 React 为主，Angular 支持处于早期阶段，Vue/Svelte 暂无官方支持
- `useCoAgent` 需要后端 Agent 实现 AG-UI 协议，直接对接非标准后端需额外适配
- 适合**前端主导**的 AI 功能集成；纯后端 Agent 编排场景无需引入此库
- 功能较重，若只需简单 AI 对话框，引入完整 CopilotKit 可能过度
- AG-UI 协议仍在演进中，生产环境需关注版本兼容性变化
