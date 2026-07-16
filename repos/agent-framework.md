# agent-framework

**仓库**：[microsoft/agent-framework](https://github.com/microsoft/agent-framework)
**分类**：Agent 框架
**Stars**：12.2k+
**Forks**：2,000+
**协议**：MIT
**语言**：Python（同时提供 .NET）
**出品方**：Microsoft

> **一句话**：微软新一代 Agent 框架，把 AutoGen 的多智能体研究成果与 Semantic Kernel 的企业级工程能力合二为一，官方钦定的 Agent 编排与部署平台。

## 是什么

Microsoft Agent Framework 是微软推出的 **构建、编排、部署 AI Agent 与多 Agent 工作流** 的统一框架。它整合了两条产品线：来自研究的 **AutoGen**（多 Agent 对话编排）与来自企业工程的 **Semantic Kernel**（插件、记忆、生产化），成为微软 Agent 技术栈的官方收敛方向。同时提供 Python 与 .NET 双语言 SDK。

## 核心能力

| 能力 | 说明 |
|------|------|
| **Agent 构建** | 定义单 Agent 的模型、工具、指令 |
| **多 Agent 编排** | 承接 AutoGen 的对话式多智能体协作 |
| **工作流** | 结构化编排复杂多步流程 |
| **企业集成** | 继承 Semantic Kernel 的插件、记忆、连接器体系 |
| **双语言 SDK** | Python + .NET，覆盖微软生态开发者 |
| **可部署** | 面向生产的部署与托管能力 |

## 与前身的关系

| 前身 | 定位 | 归并方向 |
|------|------|----------|
| **AutoGen** | 研究导向的多 Agent 对话框架 | 编排层能力并入 |
| **Semantic Kernel** | 企业级 LLM 编排 SDK | 工程/集成能力并入 |
| **Agent Framework** | 统一官方框架 | 二者合流的正式产品 |

## 适合场景

- **微软技术栈团队**：已用 .NET / Azure，需要官方支持的 Agent 方案
- **从 AutoGen / SK 迁移**：想收敛到统一维护的框架
- **企业级多 Agent**：需要生产化部署与治理能力

## 注意事项

- 框架较新，API 仍在演进，生态与文档持续完善中
- 从 AutoGen / Semantic Kernel 迁移需评估兼容与改造成本
- 与 Azure 生态结合最紧密，纯开源自托管场景需自行验证
