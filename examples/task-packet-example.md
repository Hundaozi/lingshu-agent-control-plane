# 任务包示例

## Task ID
fix-checkout-retry-flow

## Execution Engine
Claude Code / Codex / Cursor Agent / Other

## Execution Mode
异步执行引擎。

## Goal
修复支付失败后无法重试的问题，确保用户订单草稿和购物车不丢失。

## Non-goals
- 不重做结账页面设计。
- 不更换支付服务商。
- 不修改现有测试断言，除非“测试契约变更”明确授权。

## Owned Scope
允许修改：
- `src/checkout/**`
- `tests/checkout-retry.test.ts`，仅允许新增测试

禁止修改：
- `src/payments/provider/**`
- 现有测试断言
- 环境变量和密钥文件

## 测试契约变更
None.

## Verification
- `npm test -- checkout`
- 手动验证：支付失败后保留订单草稿，并可以点击重试。

## Acceptance Criteria
- 支付失败不会清空购物车。
- 用户能看到明确错误信息。
- 重试按钮可以再次触发支付流程。
- 现有测试继续通过。

