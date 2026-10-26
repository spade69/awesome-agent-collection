# OpenShell

**仓库**：[NVIDIA/OpenShell](https://github.com/NVIDIA/OpenShell)
**分类**：Agent 基础设施
**Stars**：20k+
**Forks**：1,900+
**协议**：Apache-2.0
**语言**：Rust
**出品方**：NVIDIA

> **一句话**：NVIDIA 出品的自主 Agent 安全私有运行时——内核级沙箱强制执行声明式策略，并用形式化验证审查策略变更。

## 是什么

OpenShell 是面向 **自主 AI Agent 集群的安全、私有运行时**。Agent 只有能读文件、装包、调 API、用凭证时才最有用；OpenShell 让 Agent 拥有这些能力，同时不给予对数据、密钥或网络的无限制访问——你在策略中声明每个 Agent 能触碰什么，由 OpenShell 强制执行。

架构上由 gateway（控制平面）、supervisor 与 sandbox 组成，可本地运行，也可通过 Helm 部署到 Kubernetes。

## 核心特性

- **内核级强制执行**：每个 Agent 运行在隔离沙箱中，内核控制限制可访问的文件和系统调用，所有网络连接出沙箱前都经过策略检查
- **凭证不落 Agent**：Agent 看不到真实凭证，OpenShell 只在发往已批准端点的请求中注入
- **形式化验证策略变更**：变更生效前标记出新增的高风险访问（如带凭证访问新主机、调用新 API 方法），交由人工审核
- **策略体系**：文件系统、网络、进程规则，附 advisor 与 prover 辅助审查
- **Providers**：凭证仅在批准端点生效，包括推理（inference）路由
- **可扩展**：middleware、interceptors、compute drivers；沙箱支持镜像、运行时、GPU 与生命周期管理
- **多语言 SDK**：Python、TypeScript、Go、Rust
- **Agent Skills**：`npx skills add NVIDIA/OpenShell`，教编码 Agent 操作 CLI、写策略、调试 gateway

## 适合场景

- 让自主 Agent 访问文件、包管理、API 与凭证，同时需要严格权限边界
- 企业内多 Agent 集群的统一隔离与访问控制
- 需要对 Agent 权限变更做审计与人工审批的团队

## 注意事项

- 需 Linux、Apple Silicon macOS 或 WSL 2（实验性），以及 Docker、Podman 或宿主虚拟化
- 默认沙箱镜像为最小 Ubuntu，不含 Agent，需按文档自行运行 Agent
- Kubernetes 部署要求 CNI 能强制执行 `NetworkPolicy`
- 默认收集匿名遥测（仅运营类计数），可用 `OPENSHELL_TELEMETRY_ENABLED=false` 关闭
- 0.1.x 版本有升级指南，跨版本需注意 SDK 与 gateway 版本保持一致
