# PageIndex

**仓库**：[VectifyAI/PageIndex](https://github.com/VectifyAI/PageIndex)
**分类**：Agent 基础设施
**Stars**：39.7k+
**Forks**：3,400+
**协议**：MIT
**语言**：Python
**出品方**：Vectify AI（PageIndex AI）

> **一句话**：无向量、基于推理的 RAG 引擎——为文档建层级树索引，让 LLM 像人类专家一样推理检索，无需向量库与分块。

## 是什么

PageIndex 是一个 **vectorless、reasoning-based RAG** 引擎。README 认为向量 RAG 按语义相似度检索，但「相似 ≠ 相关」，在需要上下文理解和多步推理的专业文档上容易失准。

受 AlphaGo 启发，PageIndex 用 **层级树索引** 替代向量索引，检索分两步：先为每篇文档生成树结构索引，再由 LLM 以 Agent 方式推理搜索这棵树，检索结果可追溯到明确的引用。

## 核心特性

- **无向量库、无分块**：树结构从文档版式中提取，index 模型只负责摘要与精修
- **推理式检索**：chat 模型在树上搜索，可利用对话历史与领域知识等完整上下文
- **可追溯**：结果指向明确出处，而非「vibe retrieval」
- **PageIndex SDK**：一个客户端统一本地与云端模式，支持流式、多文档搜索、引用
- **PageIndex Flash**：面向文本型 PDF 的快速树索引生成，是本地模式默认方法
- **Agent 集成**：可作为工具接入 OpenAI Agents SDK、Claude Agent SDK 等框架；支持通过 Claude Code 订阅调用 Claude 模型
- **云端版**：托管解析、OCR、图像理解与存储，提供块级引用、元数据、文件夹、MCP Server 与 PageIndex File System（语料级检索）

## 适合场景

- 财报、法律文件、监管申报、技术手册、医学文献、教材等长篇专业文档问答
- 向量 RAG 准确率不足、需要可解释检索的场景
- 给 Agent 增加长文档阅读与检索工具

## 注意事项

- 开源版适合文本型 PDF 与本地工作流；扫描件、图片密集文档需云端版（需 PageIndex API key）
- README 建议 index 用基础模型即可，chat 用能负担的最好模型
- 本地建索引约 $0.001/页；FinanceBench 98.7% 准确率等数据来自项目方自己的基准与博客
- MCP Server、元数据、文件夹、File System 为云端专属能力
