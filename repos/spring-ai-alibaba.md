# spring-ai-alibaba

**仓库**：[alibaba/spring-ai-alibaba](https://github.com/alibaba/spring-ai-alibaba)
**分类**：Agent 框架 / Java 生态
**Stars**：10.8k+
**Forks**：2,400+
**协议**：Apache-2.0
**语言**：Java
**出品方**：阿里巴巴

> **一句话**：面向 Java 开发者的 Agentic AI 框架，基于 Spring AI 扩展，把大模型、工具、RAG、工作流融进熟悉的 Spring 生态，让企业 Java 团队不用切语言就能做 Agent。

## 是什么

Spring AI Alibaba 是阿里巴巴基于 Spring AI 打造的**Java 生态 Agent 开发框架**。Agent 生态长期以 Python/TypeScript 为主，而大量企业后端是 Java/Spring 技术栈，这个框架填补了这个空白。

它延续 Spring 的编程范式（注解、依赖注入、starter），Java 工程师用熟悉的方式就能接入大模型、定义工具、编排 Agent 工作流，并对接阿里云百炼等模型服务。

## 核心特性

- **Spring 原生**：Spring Boot starter 一键接入，符合 Java 工程师直觉
- **模型接入**：对接通义千问及阿里云百炼平台，也支持其他 OpenAI 兼容模型
- **工具调用 + RAG**：函数调用、向量检索、文档问答开箱即用
- **工作流编排**：支持多 Agent 协作与流程编排（Graph 能力）
- **可观测性**：整合 Spring 生态的监控与追踪
- **企业级**：面向生产的配置、部署与治理能力

## 适合场景

- 后端是 Java/Spring 技术栈、想原生做 Agent 的企业团队
- 已用阿里云百炼/通义千问，希望 Java 侧深度整合
- 不愿为了 AI 能力额外引入 Python 服务的团队

## 注意事项

- 生态与社区成熟度不如 Python 阵营（LangChain 等）丰富
- 与阿里云模型服务整合最顺，其他模型需额外适配
- 相对较新，部分能力仍在快速迭代
