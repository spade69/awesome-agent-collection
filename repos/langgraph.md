# langgraph

**仓库**：[langchain-ai/langgraph](https://github.com/langchain-ai/langgraph)
**分类**：Agent 编排框架 / 状态机驱动
**Stars**：30,300+
**Forks**：5,200+
**协议**：MIT
**语言**：Python（+ TypeScript 版）
**出品方**：LangChain AI

> **一句话**：用有向图（DAG/循环图）描述 Agent 工作流，状态机驱动的编排方式让复杂多 Agent 流程变得可控、可调试、可持久化。

## 是什么

LangGraph 是 LangChain 团队推出的**图驱动 Agent 编排框架**，把 Agent 的执行流程建模为节点（Node）和边（Edge）构成的有向图。不同于线性流水线，LangGraph 支持循环（如"重试直到满足条件"）、分支（并行执行多条路径）和人工介入，是构建生产级 Agent 系统的基础设施层。

LangGraph Cloud 提供托管的持久化存储、流式输出和可观测性，适合企业级部署。

## 核心概念

| 概念 | 说明 |
|------|------|
| **StateGraph** | 带状态的有向图，节点间共享 State 对象 |
| **Node** | 图中的执行单元（函数或 Agent） |
| **Edge** | 节点间的连接，支持条件分支 |
| **State** | 所有节点共享的 TypedDict，贯穿整个执行流程 |
| **Checkpoint** | 执行状态持久化，支持暂停/恢复 |

## 核心功能

- **循环与条件分支**：突破 DAG 限制，支持"执行→判断→重试"的自然循环
- **Human-in-the-Loop**：在任意节点暂停，等待人工审批后继续
- **持久化 Checkpointing**：保存每一步状态，支持从任意断点恢复，天然支持长任务
- **流式输出**：逐 token 流式返回，改善用户体验
- **子图（Subgraph）**：将复杂流程封装为子图，实现模块化复用
- **多 Agent 协调**：Supervisor 模式（主 Agent 分发）或 Swarm 模式（Agent 间直接路由）

## 典型用法

```python
from langgraph.graph import StateGraph, END
from typing import TypedDict

class State(TypedDict):
    messages: list
    next: str

def agent_node(state: State):
    # LLM 调用逻辑
    return {"messages": [...], "next": "tool" if needs_tool else END}

graph = StateGraph(State)
graph.add_node("agent", agent_node)
graph.add_node("tool", tool_node)
graph.add_conditional_edges("agent", lambda s: s["next"])
app = graph.compile()
```

## 与 crewAI 的对比

| 维度 | LangGraph | crewAI |
|------|-----------|--------|
| 编排范式 | 图/状态机 | 角色/任务 |
| 控制粒度 | 极细，完全可编程 | 较粗，配置驱动 |
| 学习曲线 | 较高 | 较低 |
| 持久化 | 原生支持 | 有限 |
| 适合 | 复杂生产系统 | 快速原型 |

## 适合场景

- **需要持久化的长任务**：跨天/跨会话的复杂工作流
- **需要人工审批节点**：财务、法律、医疗等高风险场景
- **复杂条件分支**：根据执行结果动态选择下一步路径
- **生产级 Agent 服务**：需要完整 Observability 和状态管理

## 注意事项

- 比 crewAI 更底层，需要手动定义 State 和图结构
- LangGraph Cloud 付费，开源版本地部署需自行处理持久化
- 与 LangChain 生态深度绑定，不依赖 LangChain 的项目迁移成本高
