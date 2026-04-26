# eliza

**仓库**：[elizaOS/eliza](https://github.com/elizaOS/eliza)
**分类**：自主 Agent 运行时 / Web3 + 社交媒体
**Stars**：18,200+
**Forks**：5,500+
**协议**：MIT
**语言**：TypeScript
**出品方**：elizaOS（前 ai16z）

> **一句话**：面向 Web3 和社交媒体的自主 Agent 运行时，一套代码让 AI 角色同时活跃在 Twitter、Discord、Telegram 和链上，2024 年底 DeFi Agent 浪潮的核心基础设施。

## 是什么

Eliza 是一个**多平台自主 Agent 框架**，最初由 ai16z（现 elizaOS）为 Web3 AI Agent 场景打造。它让开发者通过 Character 文件（JSON）定义 AI 角色的人格、知识和行为，然后自动在多个社交平台上运行这个角色——发帖、回复、互动，并支持链上操作。

2024 年随着 DeFi Agent / AI Agent 代币热潮，Eliza 成为大量 AI Agent 项目的底层框架。

## 核心架构

| 组件 | 作用 |
|------|------|
| **Character** | 定义 Agent 人格、知识、风格的 JSON 配置文件 |
| **Client** | 各平台接入层（Twitter、Discord、Telegram 等） |
| **Provider** | 上下文信息注入（时间、钱包余额等） |
| **Action** | Agent 可执行的操作（发帖、转账、查询等） |
| **Memory** | RAG 驱动的长期记忆系统 |

## 核心功能

- **多平台同步运行**：一个角色同时在 Twitter、Discord、Telegram、Matrix 等平台活跃
- **Character 配置系统**：用 JSON 描述 Agent 的人格、说话风格、背景知识，无需写代码
- **Web3 原生支持**：内置 EVM / Solana 钱包，可执行链上交易、查询余额、参与 DeFi
- **RAG 记忆**：对话历史自动向量化存储，支持长期上下文记忆
- **插件生态**：丰富的社区插件（DEX 交易、NFT、新闻获取、图像生成等）
- **多模型支持**：OpenAI、Anthropic、Llama、Grok 等均可接入

## Character 配置示例

```json
{
  "name": "TradingBot",
  "bio": ["Expert in DeFi and market analysis"],
  "style": { "post": ["concise", "data-driven"] },
  "clients": ["twitter", "discord"],
  "plugins": ["@elizaos/plugin-evm"]
}
```

## 适合场景

- **Web3 AI Agent**：自动交易、链上操作、社区互动的 DeFi Agent
- **社交媒体自动化**：品牌 AI 角色在多平台同步运营
- **AI 角色扮演**：有独立人格的长期运行虚拟角色
- **社区管理机器人**：Discord / Telegram 群的智能管理员

## 注意事项

- 主要面向 Web3 场景，非 Web3 用户可能觉得功能较重
- Twitter 客户端需要开发者账号，受平台 API 限制影响大
- 链上操作风险高，生产部署需严格的私钥管理
- 社区插件质量参差不齐，使用前需评估
