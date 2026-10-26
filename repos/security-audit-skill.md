# security-audit-skill

**仓库**：[cloudflare/security-audit-skill](https://github.com/cloudflare/security-audit-skill)
**分类**：最佳实践 / 学习资源
**Stars**：47.6k+
**Forks**：2,900+
**协议**：MIT
**语言**：JavaScript
**出品方**：Cloudflare

> **一句话**：Cloudflare 开源的编码 Agent 安全审计 skill——编排多个隔离子 Agent 分六阶段侦察、狩猎、对抗验证，输出可机读、经独立复核的漏洞发现。

## 是什么

security-audit-skill 是一个 **把编码 Agent 变成安全审计员的 skill**。它编排相互隔离的 Agent，依次完成侦察、基于覆盖率的漏洞狩猎、候选验证、结构化输出、独立记录复核和目标中立的报告。

README 介绍它是 Cloudflare 漏洞发现 harness 的"种子"——那套 harness 后来发展成多阶段、全舰队规模的系统（见 Cloudflare 博客《Build your own vulnerability harness》），而本 skill 是其单仓库版本的起点。通过 Skills CLI `npx skills add` 安装，在目标代码库中对 Agent 说"security audit this codebase"即可触发。

## 核心特性

- **六阶段流程**：侦察（生成 `architecture.md` 与 `coverage-ledger.json`）→ 覆盖率驱动的狩猎 → 候选验证 → 结构化输出到 `findings.json` → 独立记录复核 → 生成 `REPORT.md` 等报告
- **对抗式验证**：每个候选漏洞交给全新的验证 Agent 尝试证伪，发现者与验证者永不相同
- **三种明确判定**：`confirmed`（完整源码追踪与有界观测结果）、`needs_validation`（列出精确未决事实，不给严重度）、`rejected`（已被证伪）
- **零依赖校验器**：`validate-findings.cjs` 与 `validate-coverage-ledger.cjs` 按 `report-schema.json` 校验产出，并附测试
- **丰富的攻击类别提示**：内存安全/二进制、AI 与 LLM（提示注入、工具调用）、Web 协议与认证、客户端、供应链与发布、云与部署、RPC 与消息、资源耗尽、数据隔离、桌面/移动与本地 IPC 等
- **多次运行可叠加**：复用之前的 ledger 与 findings 定位缺口、重新验证变更源码；README 称单次运行大约只能发现多次运行总量的一半
- **两种模式**：直接审计请求走完整审计模式，安全问答与聚焦问题走指导模式；默认输出到 `~/security-audit-skill/<repo-name>/run-<N>`

## 适合场景

- 用 Claude Code 等支持并行子 Agent 的编码工具，对单个代码库做系统化安全审计
- 需要可机读、可复核的漏洞记录，而非一次性聊天结论的安全团队
- 想参考 Cloudflare 方法论自建 AI 漏洞发现 harness 的研究者与工程师

## 注意事项

- 需要支持工具调用和并行子 Agent 的模型，以及运行校验器的 Node.js
- 执行目标代码（构建、测试、fuzz 等）必须有操作系统级沙箱：禁外网、净化环境变量、资源限制、只允许写指定临时目录；否则相关线索一律保留为 `needs_validation`
- 设计原则：严重度取决于可能性 × 影响而非偏离清单；纵深防御缺口不算漏洞，只记为加固建议
- 仅在用户显式指定且被版本控制忽略的目录时，才会写入目标仓库内部
