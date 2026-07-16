# letta

**仓库**：[letta-ai/letta](https://github.com/letta-ai/letta)
**分类**：Agent 基础设施 / 有状态 Agent 平台
**Stars**：23.8k+
**Forks**：2,400+
**协议**：Apache-2.0
**语言**：Python
**出品方**：Letta AI

> **一句话**：前身为 MemGPT，是一个完整的有状态 Agent 运行时平台，通过分层内存架构（工作记忆 + 归档记忆）让 Agent 拥有跨会话持久化的长期记忆能力。

## 是什么

Letta（原名 MemGPT）是 2023 年 NeurIPS 发表的 MemGPT 论文的工程化产品，提供一套完整的有状态 Agent 平台。与仅提供"记忆插件"的方案不同，Letta 是一个独立的 Agent 运行时：Agent 实例在服务器中长期运行，跨对话保持完整状态，包括记忆、工具状态和对话历史。

核心理念来自操作系统的内存分页机制——LLM 的上下文窗口类比为 CPU 寄存器，Agent 可以主动将信息从外部存储"调入"上下文，或将不常用信息"换出"到归档存储，突破上下文长度限制。

## 核心架构

| 层次 | 说明 |
|------|------|
| **Agent Server（REST API）** | 长期运行的服务端，管理 Agent 实例生命周期，提供 HTTP API 供外部调用 |
| **In-Context 工作记忆** | 始终存在于上下文窗口中的结构化记忆块（Memory Blocks），包括 `human`、`persona` 等可自定义字段 |
| **Archival Memory（归档记忆）** | 基于向量数据库的外部长期存储，Agent 通过工具调用主动检索或写入 |
| **Recall Memory（对话历史）** | 可搜索的历史消息存储，支持语义和关键词检索 |
| **Tool State** | Agent 级别的持久化工具状态，工具函数可以在调用间保存数据 |
| **Multi-Agent 通信** | Agent 之间可互相发送消息、委派任务，支持构建 Agent 网络 |

## 核心功能

- **持久化记忆块（Memory Blocks）**：结构化的上下文内存，Agent 可以直接读写，内容跨会话保留
- **自主记忆管理**：Agent 通过内置工具（`core_memory_append`、`archival_memory_insert` 等）自主决定何时更新或检索记忆
- **Agent 状态持久化**：Agent 的完整状态（记忆、消息历史、工具状态）存储在数据库中，服务重启后恢复
- **REST API Server**：内置 HTTP 服务，支持通过 API 创建、管理、对话 Agent，适合生产部署
- **多 LLM 支持**：兼容 OpenAI、Anthropic、本地模型（Ollama 等）及所有支持 OpenAI 格式的 API
- **自定义工具**：Agent 可挂载任意 Python 函数作为工具，工具可访问持久化状态
- **多 Agent 协作**：Agent 可作为工具调用其他 Agent，或通过消息总线通信
- **ADE（Agent Development Environment）**：可视化 Web 界面，用于调试和管理 Agent

## 与 Mem0 对比

| 维度 | Letta | Mem0 |
|------|-------|------|
| **定位** | 完整的有状态 Agent 运行时平台 | 轻量级记忆层，插件式集成到现有 Agent |
| **状态管理** | Agent 实例在 Server 中长期运行，状态完全托管 | 无状态，仅管理记忆数据，不持有 Agent 状态 |
| **记忆结构** | 分层：工作记忆（结构化 Blocks）+ 归档记忆（向量）+ 对话历史 | 统一：语义提取 + 向量存储，按需检索 |
| **记忆控制** | Agent 自主决定何时读写记忆（通过工具调用） | 框架自动提取并注入记忆，应用层无感知 |
| **集成方式** | 需要部署 Letta Server，通过 SDK/API 管理 Agent | 几行代码即可加入任意现有 Agent/LLM 应用 |
| **多 Agent** | 原生支持 Agent 间通信与委派 | 不涉及 Agent 间协作 |
| **适合团队** | 需要完整 Agent 平台的团队 | 想快速给现有应用加记忆的开发者 |
| **学习曲线** | 较高，需理解 MemGPT 分层内存模型 | 低，API 简单直观 |

## 适合场景

- 需要长期记住用户偏好、习惯、背景信息的对话 Agent（客服、私人助理）
- 跨多次对话积累知识的学习型 Agent
- 需要持久化工具状态的自动化 Agent（如跟踪任务进度、维护工作流状态）
- 构建多 Agent 协作系统，各 Agent 有独立记忆和职责
- 研究或实验 MemGPT 分层内存架构的学术/工程场景
- 需要完整 Agent 平台而不仅仅是记忆插件的生产项目

## 注意事项

- **重量级依赖**：Letta 是一个完整平台，需要部署 Server、数据库（默认 SQLite，生产推荐 PostgreSQL）和向量存储，运维成本高于轻量方案
- **概念学习曲线**：需要理解 MemGPT 的分层内存模型（in-context vs archival）和 Agent 自主内存管理机制
- **与现有框架集成**：Letta 是独立运行时，与 LangChain/LlamaIndex 等框架的集成需要通过 API 桥接，不是原生插件
- **Token 消耗**：Agent 自主管理记忆会产生额外的工具调用，增加 token 消耗
- **版本迁移**：从 MemGPT 迁移到 Letta 有 breaking changes，需注意 API 和数据格式变更
- **生产部署**：推荐使用 Docker 部署，官方提供 `docker-compose` 配置；Letta Cloud 提供托管版本
