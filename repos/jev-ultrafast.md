# Jev Ultrafast

**仓库**：[browser-use/jev-ultrafast](https://github.com/browser-use/jev-ultrafast)
**分类**：Agent 基础设施
**Stars**：23.7k+
**Forks**：1,700+
**协议**：MIT
**语言**：Python
**出品方**：Browser Use

> **一句话**：Browser Use 出品的极速浏览器 Agent——用 TypeSafe Jev 在动态索引动作空间里一次请求选出操作与元素，7.1 秒完成航班搜索。

## 是什么

Jev Ultrafast 是一个 **基于动态索引动作空间的浏览器 Agent**。给它一个目标，每次观察页面都会生成新的元素表，由 TypeSafe 的 Jev 模型选出操作和目标元素；只有操作为 `TYPE_TEXT` 时才调用小型 LLM 生成文本。

README 演示用一句自然语言目标在 Google Flights 上完成苏黎世 → 伦敦的搜索，耗时 7.1 秒（含文本生成和页面加载等待）。策略中没有站点专用脚本或预置字段字符串。

## 核心特性

- **有限操作集**：`CLICK`、`TYPE_TEXT`、`SELECT`、`SCROLL_UP/DOWN`、`WAIT`、`DONE`、`BLOCKED`，只提供受支持的操作与目标
- **投机式目标头**：操作与各类目标在 **一次网络往返** 内同时决策，只执行与操作匹配的目标
- **默认不用截图**：Jev 消费结构化状态，仅发送可见文本
- **一次浏览器调用取快照**：原子读取可见控件的名称、值、文本，并保持对真实 DOM 节点的引用
- **执行前校验**：检查页面新鲜度、目标与上下文，拒绝被遮挡的控件
- **安全约束**：模型输出不会变成选择器、坐标、shell 命令或可执行 JS；文本输出须解析为小 JSON 对象
- **本地 Inspector**：可视化编号元素、操作/目标概率与已执行动作，可单步暂停
- **代码精简**：核心循环、快照、浏览器、模型等模块各一个文件，便于通读

## 适合场景

- 对延迟极敏感的网页自动化任务（搜索、填表、导航）
- 研究「小模型做结构化决策 + 小 LLM 生成文本」的浏览器 Agent 架构
- 作为 Python 库嵌入自己的流程

## 注意事项

- 需要 `TYPESAFE_API_KEY` 与 `TEXT_MODEL_API_KEY`（示例为 OpenRouter）；在线示例会产生付费 API 调用
- 通过 Browser Harness 连接 Chrome，需在 Chrome 中允许远程调试；受控标签页共享现有 Chrome 配置文件
- 性能数据为单任务、单浏览器配置下 3 次重复，README 明确说明不是通用可靠性基准
- MVP 不支持 Shadow DOM、iframe、canvas、上传、弹出标签页、嵌套滚动等；`DONE` 仍需独立校验结果
