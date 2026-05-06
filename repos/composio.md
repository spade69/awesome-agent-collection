# composio

**仓库**：[ComposioHQ/composio](https://github.com/ComposioHQ/composio)
**分类**：Agent 基础设施 / 工具集成平台
**Stars**：28,100+
**Forks**：5,000+
**协议**：AGPL-3.0
**语言**：TypeScript / Python
**出品方**：Composio

> **一句话**：给 AI Agent 提供 1000+ 开箱即用工具的集成平台，统一处理 OAuth 认证、上下文管理和沙箱执行，让 Agent 一行代码接入 GitHub、Slack、Notion 等任意服务。

## 是什么

Composio 解决的是 AI Agent "最后一公里"问题：Agent 有能力规划和推理，但要真正调用外部服务（GitHub、Jira、Gmail、Slack 等），需要处理 OAuth 授权、API 格式差异、错误重试、权限管理等大量工程工作。Composio 把这些全部封装好，让开发者专注于 Agent 逻辑本身。

## 核心特性

| 特性 | 说明 |
|------|------|
| **1000+ 工具集成** | GitHub、Slack、Notion、Jira、Gmail、Linear 等主流 SaaS |
| **统一认证管理** | 托管 OAuth 流程，支持多用户多账号 |
| **工具搜索** | 语义搜索找到最合适的工具，避免 context 超限 |
| **沙箱执行** | 代码执行、浏览器操作在隔离环境运行 |
| **MCP 支持** | 可作为 MCP Server 接入任意支持 MCP 的 Agent |
| **框架无关** | 兼容 LangChain、CrewAI、AutoGen、OpenAI 等 |

## 典型用法

```python
from composio_openai import ComposioToolSet, Action
from openai import OpenAI

toolset = ComposioToolSet()
tools = toolset.get_tools(actions=[Action.GITHUB_CREATE_ISSUE])

client = OpenAI()
response = client.chat.completions.create(
    model="gpt-4o",
    tools=tools,
    messages=[{"role": "user", "content": "Create a GitHub issue about the bug"}]
)
toolset.handle_tool_calls(response)
```

## 与直接调用 API 的对比

| 维度 | Composio | 直接调用 API |
|------|---------|------------|
| 接入成本 | 一行代码 | 每个服务单独开发 |
| OAuth 管理 | 托管，自动刷新 | 自行实现 |
| 多用户支持 | 原生支持 | 需要自建 |
| 工具数量 | 1000+ 即用 | 按需开发 |

## 适合场景

- 需要集成大量第三方服务的 Agent 应用
- 构建面向多用户的 SaaS Agent 产品
- 快速原型：验证 Agent 能力而不想花时间写工具集成

## 注意事项

- 核心功能（工具执行）免费，高级功能（更多并发、私有部署）付费
- AGPL 协议：商业产品需评估是否需要购买商业授权
- 工具覆盖广但深度有限，复杂自定义操作仍需自行开发
