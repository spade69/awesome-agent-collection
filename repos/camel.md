# camel

**仓库**：[camel-ai/camel](https://github.com/camel-ai/camel)
**分类**：Agent 框架 / 多智能体
**Stars**：17.3k+
**Forks**：1,900+
**协议**：Apache-2.0
**语言**：Python
**出品方**：CAMEL-AI 社区

> **一句话**：最早提出"角色扮演多 Agent 对话"的学术级框架（arXiv 2303.17760），专注研究"智能体的 Scaling Law"，也是合成数据生成与世界模拟的利器。

## 是什么

CAMEL（Communicative Agents for "Mind" Exploration of Large Language Model Society）是一个开源多智能体框架与研究社区，核心目标是通过**大规模研究智能体行为**寻找 Agent 的扩展规律。它是最早系统化提出多 Agent 角色扮演协作范式的项目之一，学术引用广泛。

## 核心能力

| 方向 | 说明 |
|------|------|
| **Data Generation** | 用多 Agent 对话大规模生成高质量合成训练数据 |
| **Task Automation** | 角色分工协作完成复杂任务自动化 |
| **World Simulation** | 模拟多智能体社会，研究涌现行为与风险 |
| **可扩展组件** | 支持多种 agent / task / prompt / model / 环境类型 |

## 特色

- **学术出身**：源自 2023 年 arXiv 论文，理论体系扎实，适合研究者
- **社会模拟**：可搭建大规模智能体社会做行为与安全研究
- **合成数据管线**：被众多模型训练项目用作数据生成引擎
- **模型无关**：兼容主流 LLM，便于对比实验

## 适合场景

- AI 研究者做多智能体行为 / 涌现能力 / 安全性实验
- 需要大规模生成 SFT / 对话类合成数据集
- 想理解多 Agent 协作范式源头的学习者

## 注意事项

- 更偏研究与实验，生产落地需自行做工程加固
- 大规模模拟对 token 消耗较高，注意成本
