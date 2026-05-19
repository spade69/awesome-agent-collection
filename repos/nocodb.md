# nocodb

**仓库**：[nocodb/nocodb](https://github.com/nocodb/nocodb)
**分类**：应用生成 / 数据库转电子表格 UI
**Stars**：63,000+
**Forks**：4,700+
**协议**：Custom（源码可用，非 OSI 开源）
**语言**：TypeScript
**出品方**：NocoDB Inc.

> **一句话**：把任意 SQL 数据库秒变 Airtable——零前端代码，自动生成电子表格 UI + REST/GraphQL API + 权限管理，是给现有数据库快速套上可视化界面的最短路径。

## 是什么

NocoDB 是一个**自托管的 Airtable 替代方案**。它连接到已有的 PostgreSQL、MySQL、SQLite 或 SQL Server 数据库，自动将每张表渲染成可交互的电子表格界面，同时生成完整的 REST 和 GraphQL API。

与 Airtable 的根本区别在于：**数据完全归你所有**。NocoDB 只是在现有数据库之上套了一层可视化和协作层，不迁移、不锁定数据。无论是把内部运营数据暴露给非技术同事，还是给 AI Agent 的结构化输出提供一个可视化的读写界面，NocoDB 都能零前端代码搞定。

## 核心功能

| 功能 | 说明 |
|------|------|
| **多视图** | 同一张表支持 Grid（表格）、Gallery（卡片）、Kanban（看板）、Form（表单）、Calendar（日历）五种视图 |
| **连接现有数据库** | 直接接入 PostgreSQL / MySQL / SQLite / SQL Server，不迁移数据 |
| **API 自动生成** | 每张表自动暴露 REST + GraphQL API，带 Swagger 文档 |
| **表单构建器** | 无代码拖拽生成数据录入表单，可对外分享链接 |
| **自动化** | 数据变更触发 Webhook、邮件、Slack 通知；集成 Zapier / Make / n8n |
| **AI 字段** | 单元格内直接调用 AI 完成内容生成、摘要、翻译、分类 |
| **协作与权限** | 视图级分享、行级过滤、基于角色的细粒度权限管理 |
| **自托管** | Docker 一条命令部署，数据和服务完全本地可控 |

## 与 Airtable 对比

| 维度 | NocoDB | Airtable |
|------|--------|----------|
| 数据所有权 | 完全自有（连接自己的数据库） | 托管在 Airtable 云端 |
| 接入现有数据库 | 支持（核心特性） | 不支持 |
| 定价 | 自托管免费 | 按席位收费，较贵 |
| API 能力 | REST + GraphQL 自动生成 | REST API（功能有限） |
| 扩展性 | 取决于底层数据库 | 有行数/附件上限 |
| 视图丰富度 | 5 种（含日历） | 更丰富（含时间线、地图等） |
| 生态集成 | Zapier / Make / n8n / Webhook | 更丰富的原生集成 |
| 运维成本 | 需自行维护 | 零运维 |

## 适合场景

- 已有业务数据库，需要快速给运营/产品同学一个可视化管理界面
- AI Agent 输出结构化数据，需要非技术用户能直接查看和编辑
- 数据管道中需要暴露一个可读写的 API 端点，但不想写后端代码
- 替代 Airtable，同时保留数据主权和成本控制
- 为内部工具（CRM、任务追踪、库存管理）快速搭建 CRUD 界面

## 注意事项

- 协议为自定义 Source Available，商业用途需确认条款，不是标准 MIT/Apache
- AI 字段功能需要配置 OpenAI 等 API Key，不内置免费额度
- 大规模并发场景性能取决于底层数据库，NocoDB 本身不做分布式优化
- 复杂的跨表关联展示（多层嵌套）比 Airtable 的 linked records 略繁琐
- 社区版功能已相当完整，但 SSO、高级审计日志等企业特性需付费版
