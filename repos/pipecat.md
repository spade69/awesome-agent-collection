# pipecat

**仓库**：[pipecat-ai/pipecat](https://github.com/pipecat-ai/pipecat)
**分类**：Agent 基础设施 / 实时语音
**Stars**：15.4k+
**Forks**：2,600+
**协议**：BSD-2-Clause
**语言**：Python
**出品方**：Daily（社区共建）

> **一句话**：构建实时语音与多模态 AI Agent 的开源框架，把 STT + LLM + TTS 拼成低延迟对话管线，做"能开口说话、能看画面"的 Agent 首选。

## 是什么

Pipecat 由实时通信服务商 Daily 开源，专注于**实时语音和多模态 Agent**。它用管线（pipeline）范式把语音识别、大模型、语音合成等环节串起来，处理好打断、流式、低延迟这些实时对话的硬骨头。

相比只做文本的 Agent 框架，Pipecat 解决的是"实时性"——用户说话、Agent 边听边想边答，延迟必须压到人类对话可接受的范围。

## 核心特性

- **管线架构**：帧（frame）流经各处理节点，STT/LLM/TTS/VAD 灵活编排
- **实时低延迟**：流式处理 + 打断检测，支持自然的语音对话节奏
- **多模态**：不止语音，可处理图像、视频等多种输入输出
- **供应商无关**：STT/LLM/TTS 各环节可插拔（Deepgram、OpenAI、ElevenLabs 等）
- **传输层灵活**：WebRTC、WebSocket 等多种实时传输，天然对接 Daily
- **电话集成**：可接入电话网络，做能打电话的语音 Agent

## 适合场景

- 构建实时语音助手、AI 客服、语音陪伴类应用
- 需要低延迟、可打断的自然语音对话体验
- 多模态实时交互（语音 + 视觉）场景

## 与 livekit-agents 的对比

| 维度 | Pipecat | livekit-agents |
|------|---------|----------------|
| 定位 | 通用实时管线框架 | 基于 LiveKit 的语音 Agent 框架 |
| 传输层 | 多种可选，原生 Daily | 绑定 LiveKit WebRTC |
| 侧重 | 管线灵活编排 + 多模态 | 与 LiveKit 实时通信深度整合 |

## 注意事项

- 专注实时语音场景，纯文本任务用它属于杀鸡用牛刀
- 实时管线调试比同步调用复杂，需理解流式与帧概念
- 整体延迟仍受所选 STT/LLM/TTS 供应商影响
