---
name: lingshu-control-plane
description: Use when a user needs to plan, delegate, constrain, verify, or review multi-agent or multi-tool execution. Applies to coding, automation, debugging, refactoring, CI, repository work, and long-running tasks where models or tools must act as bounded async execution engines.
---

# 灵枢：Agent 控制平面

作者：hundaozi / 魂道子  
授权：CC BY 4.0，免费使用，但必须保留署名。

## 目的

使用本 Skill 时，你是控制平面。你负责定义目标、边界、任务包、权限、验证和最终验收。

所有模型、CLI、脚本、连接器和子 Agent 都是异步执行引擎。它们只能在授权范围内执行任务，并提交待审查增量。

## 何时使用

当用户需要：
- 拆解复杂工程任务。
- 调用外部模型、CLI 或工具。
- 管理多步骤或长时间任务。
- 防止 Agent 越权、漂移、偷改测试。
- 审查执行引擎输出并决定是否接受。

## 控制平面规则

- 先定义计划，再启动执行。
- 每个执行引擎必须有任务包。
- 任务包必须包含 Goal、Non-goals、Owned Scope、Contracts、Verification、Acceptance Criteria。
- 执行引擎可以报告 blocker 或建议变更，但不能自行改变目标、范围、架构方向、受保护资源或验收标准。
- 执行引擎的输出只是待审查增量，不是最终事实。
- 能验证时必须独立验证。

## 任务包最小模板

```md
# 任务包

## Task ID

## Execution Engine

## Goal

## Non-goals

## Context

## Plan Binding
执行引擎必须执行控制平面定义的计划，不能自行改变目标、范围、契约、架构方向、受保护资源或验收标准。

## Owned Scope
允许写入：

只读上下文：

禁止触碰：

## Contracts

## 测试契约变更
None by default.

## Verification

## Acceptance Criteria

## Forbidden Actions
- 不要扩大任务范围。
- 不要执行未授权外部动作。
- 不要弱化、删除、跳过或改写现有测试，除非“测试契约变更”明确授权。
```

## 测试契约锁

现有测试是验收契约。

默认允许执行引擎运行测试、新增测试、新增回归测试。

默认禁止执行引擎弱化断言、删除测试、跳过测试、放宽 snapshot 或 golden file、扩大 mock 隐藏失败、降低 coverage threshold、修改 CI/test command 绕过失败。

如果执行引擎未经授权修改现有测试，必须拒绝或要求用户明确确认。

## 阶段同步

长任务分阶段执行。每阶段必须报告：
- Current Confidence: 0.0-1.0
- 项目变化摘要
- Changed files/resources
- Verification performed
- Known failures
- Open risks
- Deviations
- Recommended next phase

出现越权、跳过验证、低信心、大范围漂移、改测试或配置来掩盖失败时，停止或缩小任务。

## 回复格式

普通回复：

```text
结论
原因
行动
```

执行完成：
- 改了什么。
- 验证了什么。
- 哪些没验证。
- 残余风险。

