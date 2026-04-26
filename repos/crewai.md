# crewai

**仓库**：[crewAIInc/crewAI](https://github.com/crewAIInc/crewAI)
**分类**：多智能体框架 / 角色协作编排
**Stars**：49,800+
**Forks**：6,800+
**协议**：MIT
**语言**：Python
**出品方**：crewAI Inc.

> **一句话**：把多个 AI Agent 组建成一支"团队"，每人有角色和目标，协作完成复杂任务——上手最快的多智能体框架之一。

## 是什么

crewAI 是一个**角色驱动的多智能体编排框架**，核心理念是让开发者像管理团队一样管理 Agent：定义每个 Agent 的角色（role）、目标（goal）、背景（backstory），再把任务（Task）分配给合适的 Agent，框架负责协调执行顺序与信息传递。

简洁的 API 和完善的文档让 crewAI 成为入门多 Agent 开发的首选框架，在企业 POC 场景中被广泛采用。

## 核心概念

| 概念 | 说明 |
|------|------|
| **Agent** | 有角色、目标、工具的自主执行单元 |
| **Task** | 具体任务，分配给特定 Agent |
| **Crew** | Agent + Task 的集合，定义协作方式 |
| **Process** | sequential（顺序）或 hierarchical（层级）执行模式 |
| **Tool** | Agent 可调用的外部能力（搜索、代码执行等） |

## 核心功能

- **角色扮演设计**：通过自然语言描述 Agent 的人格和专长，无需写复杂 prompt
- **顺序 / 层级执行**：sequential 按序执行，hierarchical 有管理者 Agent 分配子任务
- **内存系统**：短期记忆（对话上下文）+ 长期记忆（向量数据库）+ 实体记忆
- **丰富工具生态**：内置搜索、文件读写、代码解释器，支持 LangChain 工具
- **输出结构化**：任务输出可定义 Pydantic 模型，方便下游处理
- **crewAI Enterprise**：托管版本，支持可视化编排和监控

## 典型用法

```python
from crewai import Agent, Task, Crew

researcher = Agent(role="Research Analyst", goal="Find accurate data", backstory="...")
writer = Agent(role="Content Writer", goal="Write clear articles", backstory="...")

task1 = Task(description="Research AI trends", agent=researcher)
task2 = Task(description="Write a report", agent=writer)

crew = Crew(agents=[researcher, writer], tasks=[task1, task2])
result = crew.kickoff()
```

## 适合场景

- **内容生产流水线**：研究员搜集资料 → 写手撰写文章 → 编辑校对
- **数据分析报告**：数据收集 → 分析 → 可视化 → 汇报
- **企业 POC**：快速验证多 Agent 场景，上手成本最低

## 注意事项

- hierarchical 模式下管理者 Agent 质量直接决定整体效果
- 内存功能需配置向量数据库（默认支持 ChromaDB）
- 企业功能需付费，开源版功能已足够大多数场景
