# browser-use

**仓库**：[browser-use/browser-use](https://github.com/browser-use/browser-use)
**分类**：Agent 基础设施 / 浏览器自动化
**Stars**：105k+
**Forks**：10,000+
**协议**：MIT
**语言**：Python
**出品方**：browser-use

> **一句话**：让 AI Agent 真正"看懂"网页并操作浏览器，用视觉 + DOM 双通道感知网页，比传统 Selenium/Playwright 更智能，是目前 Stars 最高的 Agent 浏览器自动化库。

## 是什么

browser-use 是专为 AI Agent 设计的浏览器控制库。传统浏览器自动化工具（Selenium、Playwright）需要开发者精确指定 CSS 选择器或 XPath，脆弱且难以维护。browser-use 让 LLM 直接理解页面内容，用自然语言描述任务，Agent 自主决定如何点击、填表、导航。

2024 年底发布后迅速成为 Browser Agent 领域的标配基础设施。

## 核心架构

| 组件 | 作用 |
|------|------|
| **视觉感知** | 截图 + 元素标注，让 LLM 直接"看"页面 |
| **DOM 感知** | 结构化提取可交互元素，精准定位 |
| **Action Space** | 标准化浏览器操作集（点击、输入、滚动、导航） |
| **记忆系统** | 跨步骤状态追踪，支持长任务 |
| **多标签管理** | 支持同时操控多个浏览器标签 |

## 核心功能

- **视觉 + DOM 双通道**：同时利用截图和 DOM 结构，比纯视觉或纯 DOM 更鲁棒
- **自愈能力**：页面变化后自动重新定位元素，不因 UI 更新失效
- **并行任务**：多个 Agent 同时操控不同标签页
- **录制回放**：可录制人工操作生成 Agent 任务模板
- **主流框架集成**：LangChain、LangGraph、CrewAI、AutoGen 均可直接使用
- **多模型支持**：GPT-4V、Claude、Gemini 等视觉模型均可作为后端

## 典型用法

```python
from browser_use import Agent
from langchain_openai import ChatOpenAI

agent = Agent(
    task="Go to amazon.com, search for 'laptop', and get the price of the first result",
    llm=ChatOpenAI(model="gpt-4o"),
)
await agent.run()
```

## 适合场景

- **网页数据采集**：登录后抓取需要交互才能访问的数据
- **表单自动化**：批量填写申请、注册、提交流程
- **端到端测试**：让 Agent 模拟真实用户行为做测试
- **RPA 现代化**：替代脆弱的传统 RPA 脚本

## 注意事项

- 每次操作都需要 LLM 推理，成本比传统 RPA 高
- 对反爬策略（Cloudflare、验证码）的处理有限
- 视觉模型理解复杂布局时偶有偏差，需要任务设计时留出容错
