# refine

**仓库**：[refinedev/refine](https://github.com/refinedev/refine)
**分类**：应用生成 / React CRUD 框架
**Stars**：35.3k+
**Forks**：3,048+
**协议**：MIT
**语言**：TypeScript
**出品方**：Refine Dev

> **一句话**：专为数据密集型应用设计的 React 元框架，以 Headless 架构 + 数据提供者抽象，让开发者用最少代码构建可维护的管理后台、内部工具和 B2B 应用——也是目前最适合 AI 代码生成落地的 CRUD 框架。

## 是什么

Refine 是一个**代码优先的 React 元框架**，专门解决管理后台、CRUD 界面和内部工具开发中"重复劳动多、维护成本高"的问题。

与 Retool、Appsmith 等低代码平台不同，Refine 完全运行在代码层：开发者写真正的 React 代码，Refine 负责提供统一的数据层抽象、鉴权、路由和状态管理。其 **Headless 架构**使 UI 库完全可替换——同一套业务逻辑可以搭配 Ant Design、Material UI、Mantine、Chakra UI 或 shadcn/ui 渲染。

框架与 AI 代码生成的结合是其近年来的核心卖点：因为 Refine 对页面结构和数据钩子高度规范化，LLM 生成的 Refine 代码具有极强的一致性，不会出现"能跑但无法维护"的问题。

## 核心架构

```
┌─────────────────────────────────────────────────────┐
│                   你的 React 应用                    │
├─────────────────────────────────────────────────────┤
│  UI 层（可选）  Ant Design / MUI / Mantine / shadcn  │
├─────────────────────────────────────────────────────┤
│              Refine 核心层                           │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐ ┌────────┐ │
│  │ 数据钩子  │ │  鉴权层  │ │  路由层  │ │ 通知层 │ │
│  │useList   │ │useLogin  │ │资源定义  │ │        │ │
│  │useCreate │ │usePermis.│ │CRUD 路由 │ │        │ │
│  │useUpdate │ │          │ │          │ │        │ │
│  │useDelete │ └──────────┘ └──────────┘ └────────┘ │
│  └──────────┘                                       │
├─────────────────────────────────────────────────────┤
│              数据提供者（Data Provider）              │
│   REST / GraphQL / Supabase / Strapi / Firebase      │
│   Appwrite / Hasura / NestJS / 自定义适配器           │
└─────────────────────────────────────────────────────┘
```

核心设计思路：**资源（Resource）驱动**。开发者声明资源（如 `posts`、`users`），Refine 自动推导出增删改查的路由、钩子调用和页面结构；数据如何获取、UI 如何渲染，均通过适配器层隔离。

## 核心功能

| 功能 | 说明 |
|------|------|
| **Headless 架构** | 数据逻辑与 UI 完全解耦，可搭配任意 React UI 库，也可纯逻辑层复用 |
| **数据提供者抽象** | 统一的 `dataProvider` 接口对接任意后端，官方维护 10+ 开箱适配器 |
| **CRUD 钩子** | `useList`、`useCreate`、`useUpdate`、`useDelete`、`useShow` 自动管理请求状态 |
| **Inferencer（推断器）** | 自动检测 API 响应结构，即时生成对应 CRUD 页面的完整代码 |
| **鉴权 / 权限** | 内置 `authProvider` 接口，统一处理登录、注册、权限校验和访问控制 |
| **路由集成** | 支持 React Router v6、Next.js App Router、Remix，资源声明后路由自动生成 |
| **国际化（i18n）** | 内置 i18n 接口，可与 react-i18next、next-intl 等对接 |
| **实时更新** | 内置 `liveProvider` 接口，支持 WebSocket / SSE 推送 |
| **审计日志** | 企业功能，自动记录数据操作历史，支持多租户隔离 |
| **Devtools** | 浏览器扩展，可视化查看 Refine 查询、缓存和资源状态 |

## 与 Appsmith 对比

| 维度 | Refine | Appsmith |
|------|--------|---------|
| 开发方式 | 纯代码（React + TypeScript） | 低代码拖拽 + 少量 JS |
| UI 灵活性 | 极高，任意 UI 库 | 受限于内置组件库 |
| 版本控制 | 原生 Git 工作流 | 需额外配置 Git 集成 |
| 学习曲线 | 需熟悉 React 生态 | 较平缓，适合非前端 |
| 生产可维护性 | 高（标准 React 项目） | 低（强绑定平台） |
| AI 代码生成适配 | 极佳（结构规范，LLM 友好） | 一般（拖拽逻辑难以代码化） |
| 自托管 | 完全自托管，零平台依赖 | 可自托管，但依赖 Appsmith 服务 |
| 企业功能 | 审计日志、多租户（付费） | 权限、SSO（付费） |

## 适合场景

- 需要长期维护的**企业管理后台**（人员、订单、内容、配置管理等）
- 希望用 AI（Cursor、Claude Code）快速搭建内部工具，又要保证代码可维护
- 已有 REST/GraphQL API，想快速套 CRUD 界面而不重复造轮子
- 多端复用同一数据层（Web 管理后台 + 移动端共享钩子逻辑）
- 需要统一鉴权、权限和审计的 **B2B SaaS** 产品后台

## 注意事项

- 框架本身不提供后端，必须搭配已有 API 或 BaaS（Supabase、Strapi 等）使用
- Headless 架构带来灵活性的同时，首次搭建需要选择并接入 UI 库，上手成本略高于拖拽工具
- Inferencer 自动生成的代码适合作为起点，复杂业务逻辑仍需手动调整
- 审计日志、细粒度权限等企业功能部分需要付费的 Refine Cloud 或企业授权
- 与 Next.js App Router 集成时路由层配置相对复杂，建议参考官方 `create-refine-app` 模板
