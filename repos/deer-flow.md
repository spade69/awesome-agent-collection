# deer-flow

**仓库**：[bytedance/deer-flow](https://github.com/bytedance/deer-flow)
**分类**：SuperAgent 框架 / 长周期自主执行
**Stars**：60,700+
**Forks**：7,700+
**协议**：MIT
**语言**：Python 3.12 + Node.js 22
**出品方**：ByteDance

> **一句话**：字节跳动出品的 SuperAgent 编排框架，用子智能体 + 沙箱 + 长期记忆驱动"从研究到代码到创作"的跨小时级别任务，2026 年 2 月一度登顶 GitHub Trending #1。

## 是什么

DeerFlow（Deep Exploration and Efficient Research Flow）是一个开源的**超长周期 Agent 执行框架**。v2.0 是对 v1（原 Deep Research 框架）的完全重写，核心理念是通过子 Agent、沙箱、内存和技能扩展，让 AI 能自主完成从几分钟到数小时的复杂任务。

## 核心架构

| 组件 | 作用 |
|------|------|
| **Sub-Agents** | 专职子智能体分工协作（研究、编码、创作） |
| **Sandbox** | 隔离执行环境，代码安全运行 |
| **Long-Term Memory** | 跨会话记忆，避免重复劳动 |
| **Skills / Tools** | 可扩展技能体系（含 MCP Server 支持） |
| **Message Gateway** | 多 IM 渠道集成（Slack、Telegram 等） |

## 核心功能

- **一键 Agent 部署**：面向 Claude Code / Codex / Cursor 用户，一句话自然语言完成本地部署
- **InfoQuest 集成**：BytePlus 智能搜索与爬虫工具集，增强网络信息获取能力
- **Context Engineering**：精细管控 context window 内容，降低幻觉
- **MCP Server 原生支持**：直接接入外部工具和服务
- **LangSmith / Langfuse 追踪**：内置 Observability，方便调试和优化
- **Docker 部署**：官方推荐，生产级容器化支持

## 推荐模型

- Doubao-Seed-2.0-Code（字节自研）
- DeepSeek v3.2
- Kimi 2.5

## 与 hermes-agent 的对比

| 维度 | deer-flow | hermes-agent |
|------|-----------|--------------|
| 定位 | 长周期 SuperAgent 执行器 | 自积累 Skill 的通用 Agent |
| 核心卖点 | 沙箱 + 子 Agent 编排 | 任务后自动沉淀经验 |
| 适合任务 | 深度研究、代码生成、多步创作 | 跨项目复用知识 |
| 出品方 | ByteDance | NousResearch |

## 适合场景

- **深度研究任务**：自动搜索、整理、写报告，无需人工干预
- **长链编码**：多文件联动修改、测试、验证的完整流程
- **内容创作**：结合研究结果自动生成文章、文档

## 注意事项

- v2.0 与 v1 完全不兼容，旧版维护在 `1.x` 分支
- 生产部署需注意沙箱安全配置，避免代码执行漏洞
- 推荐用 Docker 部署，本地开发需 Python 3.12+ 和 Node.js 22+
