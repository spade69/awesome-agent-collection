# bolt.diy

**仓库**：[stackblitz-labs/bolt.diy](https://github.com/stackblitz-labs/bolt.diy)
**分类**：应用生成 / AI 全栈代码生成
**Stars**：19.6k+
**Forks**：10,396+
**协议**：MIT
**语言**：TypeScript
**出品方**：StackBlitz Labs（社区 fork）

> **一句话**：在浏览器里用自然语言描述需求，AI 自动生成、运行并调试完整的全栈 Web 应用，支持任意 LLM，是目前最具代表性的开源"vibe coding"工具。

## 是什么

bolt.diy 是 [bolt.new](https://bolt.new)（StackBlitz 官方产品）的**开源社区 fork**。bolt.new 只支持 Anthropic 模型，而 bolt.diy 打破了这一限制，允许接入 OpenAI、Anthropic、Ollama（本地模型）、Groq、Gemini 等几乎所有主流 LLM。

其核心是一个跑在浏览器里的 **WebContainer** 沙箱：Node.js 运行时、文件系统、包管理器全部在浏览器中运行，无需任何本地环境配置。用户用自然语言描述想要的应用，AI Agent 会循环地写代码 → 在沙箱中执行 → 捕获错误 → 自动修复，直到应用可以正常跑起来为止。

## 核心功能

| 功能 | 说明 |
|------|------|
| **自然语言生成全栈应用** | 一句话描述需求，自动生成前后端完整代码 |
| **浏览器内 WebContainer** | 无需本地 Node.js，整个开发环境运行在浏览器中 |
| **任意 LLM 支持** | OpenAI、Claude、Gemini、Ollama 本地模型等均可接入 |
| **实时预览** | 代码生成后立即在内置浏览器中显示运行效果 |
| **对话式迭代** | 继续对话即可修改功能、调整样式、修复 Bug |
| **文件系统可见** | 查看并手动编辑每一个生成的文件 |
| **自动错误修复** | Agent 捕获运行时报错后自动重试，闭环调试 |
| **一键部署** | 支持一键部署到 Netlify / Vercel |
| **多框架支持** | React、Vue、Svelte、Next.js、Node.js、Python 后端 |

## 与 v0.dev 对比

| 维度 | bolt.diy | v0.dev |
|------|----------|--------|
| 开源 | 完全开源，MIT | 闭源，Vercel 产品 |
| 运行环境 | 浏览器内 WebContainer，可执行后端 | 仅前端组件预览 |
| LLM 选择 | 任意 LLM 均可 | 仅限 Vercel 内置模型 |
| 后端能力 | 支持 Node.js、Python 后端 | 几乎不涉及后端 |
| 部署方式 | Netlify / Vercel 一键部署 | Vercel 一键部署 |
| 适用范围 | 完整 Web 应用（前+后） | UI 组件 / 纯前端页面 |
| 自托管 | 可自托管 | 不可 |

## 适合场景

- 快速验证产品 idea：几分钟跑出一个可演示的原型
- 无后端经验的前端开发者需要生成带 API 的全栈应用
- 非工程师（产品、设计、运营）想独立实现简单内部工具
- 学习目的：观察 AI 如何一步步生成和调试真实项目
- 自部署场景：需要接入公司内网或私有 LLM（如 Ollama）

## 注意事项

- WebContainer 运行在浏览器中，复杂计算或大型项目性能受限
- 生成代码质量强依赖所选 LLM 的能力，本地小模型效果较弱
- 对话上下文有限，应用过大后 AI 容易"忘记"早期设计决策
- 目前不支持数据库持久化（除非手动接入外部 DB 服务）
- 社区 fork 迭代快，功能和稳定性可能与主干存在偏差
