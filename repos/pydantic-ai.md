# pydantic-ai

**仓库**：[pydantic/pydantic-ai](https://github.com/pydantic/pydantic-ai)
**分类**：Agent 框架 / 类型安全优先
**Stars**：18.3k+
**Forks**：1,300+
**协议**：MIT
**语言**：Python
**出品方**：Pydantic 团队

> **一句话**：Pydantic 团队出品的 Agent 框架，用类型系统约束 LLM 输入输出，让 Agent 开发像写普通 Python 一样有 IDE 补全和运行时校验。

## 是什么

PydanticAI 是 FastAPI 时代的 Agent 框架——把 Pydantic 的类型校验哲学带入 AI Agent 开发。它的核心理念是：LLM 的输入（工具参数）和输出（结构化结果）都应该有明确的类型定义，错误在开发期就应该被捕获，而不是在生产环境悄悄出问题。

## 核心特性

| 特性 | 说明 |
|------|------|
| **结构化输出** | 用 Pydantic 模型定义 LLM 返回值，自动校验和解析 |
| **类型安全工具** | 工具参数通过类型注解自动生成 JSON Schema |
| **依赖注入** | 测试时可注入 mock 依赖，无需改业务代码 |
| **多模型支持** | OpenAI、Anthropic、Gemini、Groq、Ollama 等 |
| **流式响应** | 支持流式文本和结构化输出 |
| **Logfire 集成** | Pydantic 官方可观测性平台，开箱即用 |

## 典型用法

```python
from pydantic_ai import Agent
from pydantic import BaseModel

class CityInfo(BaseModel):
    city: str
    population: int

agent = Agent('openai:gpt-4o', result_type=CityInfo)
result = agent.run_sync('Tell me about Tokyo')
print(result.data.population)  # 类型安全，有 IDE 补全
```

## 与其他框架对比

| 维度 | PydanticAI | crewAI | LangGraph |
|------|-----------|--------|-----------|
| 类型安全 | 最强，核心特性 | 弱 | 中等 |
| 学习曲线 | 低（Pythonic） | 低 | 高 |
| 适合 | 注重代码质量的团队 | 快速原型 | 复杂流程 |
| 测试友好性 | 极高（依赖注入） | 一般 | 一般 |

## 适合场景

- 追求代码质量和可维护性的生产项目
- 需要严格校验 LLM 输出格式的应用
- 已有 Pydantic/FastAPI 技术栈的团队

## 注意事项

- 相对较新（2024 年底发布），API 仍在迭代
- 生态不如 LangChain 丰富，需要自行集成部分工具
- Logfire 可观测性平台付费，但框架本身完全开源
