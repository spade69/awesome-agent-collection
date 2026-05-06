# swe-agent

**仓库**：[SWE-agent/SWE-agent](https://github.com/SWE-agent/SWE-agent)
**分类**：编码 Agent / GitHub Issue 自动修复
**Stars**：19,100+
**Forks**：2,100+
**协议**：MIT
**语言**：Python
**出品方**：Princeton NLP（普林斯顿大学 NLP 实验室）
**论文**：NeurIPS 2024

> **一句话**：普林斯顿出品的学术级 Coding Agent，输入 GitHub Issue 自动定位代码、修复 Bug、提交 PR，在 SWE-bench 上刷榜的经典系统。

## 是什么

SWE-agent 是学术界最具影响力的 Coding Agent 之一，来自普林斯顿大学 NLP 实验室，发表于 NeurIPS 2024。它的核心贡献是设计了专为 LLM 优化的 **Agent-Computer Interface（ACI）**——一套让 Agent 高效操作文件系统和代码库的交互接口。

在 SWE-bench 基准测试中，SWE-agent 是最早证明 LLM 可以自动解决真实 GitHub Issue 的系统之一。

## 核心设计：ACI

传统 shell 界面对 LLM 不友好（输出太长、操作失败难以恢复）。SWE-agent 专门设计了 ACI：

| ACI 特性 | 说明 |
|---------|------|
| **滚动窗口查看** | 文件查看带滚动，避免一次性输出过多 token |
| **专用编辑命令** | 专为 Agent 设计的 `edit` 命令，精确修改指定行 |
| **语法检查集成** | 编辑后自动验证语法，错误即时反馈 |
| **搜索工具** | 专用的代码搜索命令，比 grep 更友好 |

## 核心功能

- **端到端 Issue 修复**：输入 GitHub Issue URL，自动 clone 仓库、定位问题、修复、验证
- **多模型支持**：GPT-4、Claude、Gemini 等均可作为后端
- **SWE-bench 评测**：可直接跑 SWE-bench 基准，复现学术结果
- **攻防安全模式**：可用于 CTF 和安全研究场景
- **竞技编程模式**：支持 Codeforces 等编程竞赛题目

## 与 open-swe 的对比

| 维度 | SWE-agent | open-swe |
|------|----------|---------|
| 定位 | 学术研究 + 通用 | 企业内部工程团队 |
| 触发方式 | 命令行 | Slack/Linear 集成 |
| ACI 设计 | 核心创新点 | 标准工具调用 |
| 部署复杂度 | 低（本地运行） | 高（需配置云沙箱） |

## 适合场景

- **Bug 自动修复**：给定 Issue，自动生成 PR
- **学术研究**：复现或改进 SWE-bench 基准结果
- **安全研究**：自动化漏洞发现和利用（需合法授权）
- **代码库探索**：让 Agent 自动理解并修改陌生代码库

## 注意事项

- 修复复杂 Bug 成功率仍有限，适合作为辅助工具而非完全自动化
- 运行一次可能消耗大量 token 和时间
- 需要配置 GitHub token 和 LLM API key
