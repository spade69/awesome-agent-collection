# open-swe

**仓库**：[langchain-ai/open-swe](https://github.com/langchain-ai/open-swe)
**分类**：编码 Agent / 企业内部工具
**Stars**：9,600+
**Forks**：1,100+
**协议**：MIT
**语言**：Python
**出品方**：LangChain 官方
**基础框架**：LangGraph + Deep Agents

> **一句话**：复刻 Stripe/Ramp/Coinbase 内部编码 Agent 架构的开源版——云沙箱 + Slack/Linear 触发 + 子 Agent 编排 + 自动开 PR，给工程团队搭私有 Coding Agent 的最短路径。

## 是什么

Open SWE 是 LangChain 对"Stripe Minions、Ramp Inspect、Coinbase Cloudbot"这类**顶级工程团队内部编码 Agent**的开源化实现。

核心理念：不是给个人用的 Claude Code / Codex，而是**给工程组织用的、可接入内部系统的异步 Coding Agent**——接 Slack、接 Linear、有权限边界、能并行跑多个任务。

## 架构设计（对应 Stripe/Ramp/Coinbase 的实践）

### 1. Agent Harness — 基于 Deep Agents 组合

不 fork 已有 Agent，而是在 Deep Agents 框架上**组合**，保留上游升级路径。

```python
create_deep_agent(
    model="anthropic:claude-opus-4-6",
    tools=[http_request, fetch_url, commit_and_open_pr, linear_comment, slack_thread_reply, ...],
    backend=sandbox_backend,
    middleware=[ToolErrorMiddleware(), check_message_queue_before_model, ...],
)
```

### 2. 沙箱隔离

每个任务独立云沙箱，全 shell 权限，爆炸半径完全隔离。支持多种沙箱提供商：
- Modal / Daytona / Runloop / LangSmith
- 可插入自定义 backend

### 3. 工具集（小而精）

| 工具 | 用途 |
|------|------|
| `execute` | 沙箱内 Shell 命令 |
| `fetch_url` | 抓取网页转 markdown |
| `http_request` | API 调用 |
| `commit_and_open_pr` | Git 提交 + 开 GitHub Draft PR |
| `linear_comment` | 更新 Linear 工单 |
| `slack_thread_reply` | 回复 Slack 线程 |

### 4. 触发方式

- **Slack**：在频道 @ Bot 即触发
- **Linear**：在 Issue 中触发
- **Web UI** / **CLI**

### 5. Context Engineering

- `AGENTS.md` 注入仓库级上下文
- Source Context：自动分析代码库结构

## 与 deer-flow 的定位对比

| 维度 | open-swe | deer-flow |
|------|---------|-----------|
| 目标用户 | 工程团队 | 个人/研究 |
| 触发方式 | Slack/Linear/CLI | 本地命令 |
| 任务类型 | 编码、PR 开发 | 研究、创作、长周期任务 |
| 权限模型 | 有组织级权限边界 | 个人沙箱 |
| 扩展性 | 适合企业定制 | 适合个人扩展 |

## 适合场景

- 工程团队搭建内部私有 Coding Agent（替代外部 SaaS）
- 需要接入 Slack / Linear 工作流的研发组织
- 希望 Agent 能自动开 PR、减少人工 Review 前的机械工作

## 注意事项

- 依赖 LangGraph 和 Deep Agents，有一定学习曲线
- 云沙箱需要额外付费（Modal/Daytona 等），本地沙箱可自定义
- 定位是**组织级工具**，单人使用 Claude Code 原生方案更轻量
