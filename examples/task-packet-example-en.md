# Task Packet Example

## Task ID
fix-checkout-retry-flow

## Execution Engine
Claude Code / Codex / Cursor Agent / Other

## Execution Mode
Async execution engine.

## Goal
Fix the issue where users cannot retry payment after payment failure, while preserving the order draft and cart.

## Non-goals
- Do not redesign the checkout page.
- Do not replace the payment provider.
- Do not modify existing test assertions unless Test Contract Change explicitly authorizes it.

## Owned Scope
Allowed changes:
- `src/checkout/**`
- `tests/checkout-retry.test.ts`, only for adding tests

Forbidden:
- `src/payments/provider/**`
- existing test assertions
- environment and secret files

## Test Contract Change
None.

## Verification
- `npm test -- checkout`
- Manual verification: after payment failure, the order draft remains and retry is available.

## Acceptance Criteria
- Payment failure does not clear the cart.
- User sees a clear error message.
- Retry button triggers the payment flow again.
- Existing tests continue to pass.

