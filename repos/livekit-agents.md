# livekit-agents

**仓库**：[livekit/agents](https://github.com/livekit/agents)
**分类**：Agent 基础设施
**Stars**：11.4k+
**Forks**：3,300+
**协议**：Apache-2.0
**语言**：Python
**出品方**：LiveKit

> **一句话**：构建实时语音 AI Agent 的框架，把 STT + LLM + TTS 拼成低延迟对话管线，跑在 LiveKit 的 WebRTC 实时通信底座上，做"能打电话的 Agent"首选。

## 是什么

LiveKit Agents 是一个 **实时语音（及多模态）AI Agent 框架**。它基于 LiveKit 的 WebRTC 实时音视频基础设施，把语音识别（STT）、大模型推理（LLM）、语音合成（TTS）串成端到端的低延迟对话管线，让开发者快速构建能实时听说的语音 Agent、电话客服、语音助手等应用。

## 核心能力

| 能力 | 说明 |
|------|------|
| **实时语音管线** | STT → LLM → TTS 全链路低延迟编排 |
| **打断处理** | 支持用户中途插话（barge-in）等自然对话行为 |
| **多供应商可插拔** | STT/LLM/TTS 各环节可自由组合不同厂商 |
| **WebRTC 底座** | 复用 LiveKit 成熟的实时传输能力 |
| **电话集成** | 可对接 SIP/电话网关，做呼入呼出语音 Agent |
| **多模态** | 除语音外支持视频等实时模态 |

## 适合场景

- **语音助手 / 语音客服**：需要实时听说交互的 Agent
- **AI 外呼 / 呼叫中心**：结合电话网关的自动语音 Agent
- **实时多模态**：视频通话中的 AI 参与者
- **低延迟对话**：对响应速度敏感的实时场景

## 与文本 Agent 框架的区别

- 文本框架（LangGraph、CrewAI 等）关注推理编排，**LiveKit Agents 关注实时音视频链路与延迟**
- 二者可组合：用 LiveKit 处理实时 I/O，用文本框架处理复杂推理

## 注意事项

- 语音场景对延迟极敏感，STT/TTS 供应商选型直接影响体验
- 生产部署需运维 LiveKit 服务器（或用其云服务）
- 相比纯文本 Agent，链路更长、调试更复杂
