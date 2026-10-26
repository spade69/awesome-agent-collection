# hindsight

**仓库**：[vectorize-io/hindsight](https://github.com/vectorize-io/hindsight)
**分类**：Agent 基础设施
**Stars**：53.9k+
**Forks**：6,000+
**协议**：MIT
**语言**：Python
**出品方**：Vectorize

> **一句话**：不只是"记住"而是"学会"的 Agent 记忆系统——通过 retain / recall / reflect 三个操作让 Agent 随时间变聪明，在 LongMemEval 上取得 SOTA。

## 是什么

Hindsight 是一个 **Agent 记忆系统**，主张多数记忆方案只关注召回对话历史，而它关注让 Agent 持续学习。README 称其弥补了 RAG 与知识图谱的不足，并在长期记忆基准 LongMemEval 上达到 SOTA，结果经弗吉尼亚理工大学和华盛顿邮报的研究合作方独立复现。

它以服务形式部署（Docker、pip、Helm），也提供 Python 嵌入式模式，并通过多语言 SDK、MCP 与各类 Agent 集成接入。

## 核心特性

- **三个核心操作**：`retain` 存入信息、`recall` 检索记忆、`reflect` 生成结合倾向（disposition）的回答
- **记忆分层概念**：记忆类型、observations、mental models 与 knowledge pages、按 bank 隔离的记忆库
- **多种部署**：Docker（内置 pg0 嵌入式库）、外部 PostgreSQL、pip、Kubernetes Helm、Python 嵌入式、托管的 Hindsight Cloud；亦支持 Oracle AI Database
- **LLM 提供商广泛**：25+ 个，含 OpenAI、Anthropic、Gemini、Bedrock、Ollama 等本地模型，以及复用 ChatGPT/Claude/Cursor/Copilot 订阅
- **多语言客户端**：Python、Node.js/TypeScript、Go、CLI、REST API
- **接入方式**：LLM Wrapper（两行代码）、MCP Server、编码 Agent 集成及文档技能

## 适合场景

- 需要跨会话长期记忆、并希望 Agent 从经验中改进的应用
- 给编码 Agent 或对话 Agent 增加持久记忆层
- 要求可自托管、数据可控的企业部署

## 注意事项

- 需要配置 LLM 提供商（记忆处理依赖 LLM 调用），有 API 成本或本地模型要求
- Intel Mac 的 pip 安装需改用 `hindsight-all-slim`
- 基准成绩为项目自述，对比数据截至 2026 年 1 月，选型时建议在自身数据上实测
