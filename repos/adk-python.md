# adk-python

**仓库**：[google/adk-python](https://github.com/google/adk-python)
**分类**：Agent 框架 / 官方 SDK
**Stars**：18,900+
**Forks**：3,200+
**协议**：Apache 2.0
**语言**：Python
**出品方**：Google 官方
**pip**：`google-adk`

> **一句话**：Google 官方 Agent 开发套件，代码优先 + 模型无关，从单 Agent 到分层多 Agent 系统，一键部署到 Cloud Run 或 Vertex AI。

## 是什么

ADK（Agent Development Kit）是 Google 出品的**开源 Python Agent 框架**，将软件工程原则应用于 AI Agent 开发。虽然针对 Gemini 做了优化，但设计上模型无关、部署无关，并与 LangChain 等框架兼容。

## 核心特性

| 特性 | 说明 |
|------|------|
| **代码优先** | 用 Python 直接定义 Agent 逻辑、工具和编排，完全可测试和版本管理 |
| **Agent Config** | 无代码模式，通过配置文件构建 Agent |
| **丰富工具生态** | 内置工具、自定义函数、OpenAPI spec、MCP 工具 |
| **模块化多 Agent** | 分层 Agent 层次结构，灵活组合专业 Agent |
| **Tool Confirmation (HITL)** | 工具执行前可配置人工确认流程 |
| **Rewind** | 回滚到任意历史调用点，便于调试 |
| **A2A Protocol** | 原生支持 Agent-to-Agent 远程通信协议 |

## 部署选项

- **Cloud Run**：容器化部署，按需扩缩
- **Vertex AI Agent Engine**：托管式无服务器 Agent 运行时
- **本地开发**：`pip install google-adk` 即可启动

## 生态集成

- **Java ADK** / **Go ADK**：多语言版本
- **ADK Web**：可视化 Agent 构建界面
- **A2A Protocol**：与 Google 的 Agent 互联协议集成
- **Vertex AI Code Execution Sandbox**：安全的代码执行环境

## 与 openai-agents-python 的对比

| 维度 | adk-python | openai-agents-python |
|------|------------|---------------------|
| 出品方 | Google | OpenAI |
| 优化模型 | Gemini | GPT 系列 |
| 部署集成 | GCP (Cloud Run, Vertex) | OpenAI Platform |
| 多语言 SDK | Python / Java / Go | Python / JS |
| 无代码模式 | 支持 Agent Config | 不支持 |

## 适合场景

- 使用 Google Cloud 基础设施的团队
- 需要多语言（Java/Go/Python）混合 Agent 系统
- 需要无代码 + 代码混合构建 Agent 的产品

## 注意事项

- 完整特性（沙箱代码执行、Agent Engine）依赖 GCP 账号
- A2A Protocol 为 Google 主导的开放标准，生态尚在建设中
