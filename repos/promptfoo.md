# promptfoo

**仓库**：[promptfoo/promptfoo](https://github.com/promptfoo/promptfoo)
**分类**：AgentOps / 可观测与评测
**Stars**：26.0k+
**Forks**：2,400+
**协议**：MIT
**语言**：TypeScript
**出品方**：Promptfoo（已加入 OpenAI）

> **一句话**：声明式配置的 LLM 评测与红队测试 CLI——在本机和 CI 里批量跑提示词、Agent、RAG 的测试与漏洞扫描。

## 是什么

promptfoo 是用于评测和红队测试 LLM 应用的 **CLI 与库**。通过简单的声明式配置对提示词、Agent、RAG 做自动化评测，并支持对 AI 应用做红队 / 漏洞扫描。README 称其已加入 OpenAI，并将保持开源与 MIT 协议。

## 核心特性

- **自动化评测**：测试提示词与模型，结果可在 Web 界面或命令行查看
- **红队与漏洞扫描**：生成安全漏洞报告，保护 LLM 应用
- **多模型对比**：并排比较 OpenAI、Anthropic、Azure、Bedrock、Ollama 等
- **CI/CD 集成**：把检查接入流水线
- **代码扫描**：审查 PR 中与 LLM 相关的安全与合规问题
- **本地私有**：评测在本地运行，提示词不离开本机
- 安装方式：`npm install -g promptfoo`，也支持 brew 与 pip

## 适合场景

- 想在提交 / CI 阶段给提示词和 Agent 加回归测试
- 需要对 LLM 应用做安全红队与合规检查
- 希望用配置文件而非写代码的方式比较模型与提示词

## 注意事项

- 定位是测试与扫描工具，不是线上追踪平台，生产监控需搭配其他方案
- 多数提供商需自备 API Key，评测会产生调用费用
- 团队共享结果的部分能力可能依赖其托管服务，以官方文档为准
