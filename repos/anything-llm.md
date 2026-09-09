# anything-llm

**仓库**：[Mintplex-Labs/anything-llm](https://github.com/Mintplex-Labs/anything-llm)
**分类**：SuperAgent / 本地全能应用
**Stars**：65.8k+
**Forks**：7,200+
**协议**：MIT
**语言**：JavaScript
**出品方**：Mintplex Labs

> **一句话**：一体化的本地优先 AI 应用，把文档知识库、多 LLM、Agent 与 MCP 工具打包进一个桌面/Docker 应用，无需拼装即可获得完整的私有智能体体验。

## 是什么

AnythingLLM 是一个"开箱即用"的全能 AI 应用，主打**本地优先、数据自主**。它把 RAG 知识库、对话、Agent 能力和工具调用整合到一个应用里，用户导入自己的文档就能得到一个能检索、能问答、能执行任务的私有助手。

提供桌面版（Mac/Windows/Linux）和 Docker 自托管两种形态，个人用桌面版零配置启动，团队用 Docker 版做多用户协作。

## 核心特性

- **多 LLM 支持**：OpenAI、Anthropic、本地 Ollama/LM Studio 等自由切换，闭源开源模型通吃
- **文档知识库**：PDF/Word/网页等一键导入，内置向量库做 RAG 检索，答案可溯源
- **Agent 能力**：内置 Agent 可调用工具（网页浏览、代码执行等），支持自定义 Agent Skill
- **MCP 接入**：支持 Model Context Protocol，接入外部工具生态
- **多用户 + 权限**：Docker 版支持工作区隔离、成员权限管理
- **嵌入式部署**：可生成聊天挂件嵌入自己的网站

## 适合场景

- 想要一个不上传数据到云端的私有 AI 助手
- 需要基于自己的文档做问答/检索的个人或团队
- 希望零门槛体验 RAG + Agent，而非自己拼装框架

## 注意事项

- 定位是"应用"而非"框架"，深度定制能力不如 LangChain 等开发框架
- 本地跑大模型对硬件有要求，效果取决于所选模型
- Agent 工具生态相对轻量，复杂多智能体编排仍需专门框架
