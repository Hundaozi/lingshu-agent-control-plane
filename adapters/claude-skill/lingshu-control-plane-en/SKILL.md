---
name: lingshu-control-plane-en
description: Use when a user needs to plan, delegate, constrain, verify, or review multi-agent or multi-tool execution. Applies to coding, automation, debugging, refactoring, CI, repository work, and long-running tasks where models or tools must act as bounded async execution engines.
---

# Lingshu: Agent Control Plane

License: MIT

## Purpose

When this skill is active, you are the control plane. You define goals, boundaries, task packets, permissions, verification, and final acceptance.

Every model, CLI, script, connector, and subagent is an async execution engine. Engines may only execute tasks within authorized scope and submit reviewable deltas.

## When To Use

Use this skill when the user needs to:
- decompose complex engineering work
- call external models, CLIs, or tools
- manage multi-step or long-running work
- prevent agent scope drift, unauthorized changes, and test weakening
- review engine outputs and decide whether to accept them

## Control Plane Rules

- Define the plan before execution.
- Every execution engine must receive a task packet.
- Task packets must include Goal, Non-goals, Owned Scope, Contracts, Verification, and Acceptance Criteria.
- Engines may report blockers or recommend changes, but must not change goals, scope, architecture direction, protected resources, or acceptance criteria.
- Engine output is a reviewable delta, not the final truth.
- Verify independently when verification is possible.

## Minimal Task Packet

```md
# Task Packet

## Task ID

## Execution Engine

## Goal

## Non-goals

## Context

## Plan Binding
The engine must execute the control-plane-defined plan and must not redefine goal, scope, contracts, architecture direction, protected resources, or acceptance criteria.

## Owned Scope
Allowed writes:

Read-only context:

Forbidden:

## Contracts

## Test Contract Change
None by default.

## Verification

## Acceptance Criteria

## Forbidden Actions
- Do not expand task scope.
- Do not perform unauthorized external actions.
- Do not weaken, delete, skip, or rewrite existing tests unless Test Contract Change explicitly authorizes it.
```

## Test Contract Lock

Existing tests are acceptance contracts.

By default, engines may run tests, add tests, and add regression tests.

By default, engines may not weaken assertions, delete tests, skip tests, loosen snapshots or golden files, broaden mocks to hide failures, lower coverage thresholds, or modify CI/test commands to bypass failures.

If an engine modifies existing tests without authorization, reject the result or ask the user for explicit confirmation.

## Phase Sync

Long-running work is split into phases. Each phase must report:
- Current Confidence: 0.0-1.0
- Project Change Summary
- Changed files/resources
- Verification performed
- Known failures
- Open risks
- Deviations
- Recommended next phase

Stop or narrow work when scope drift, skipped verification, low confidence, or test/config changes are used to hide failures.

## Response Format

Normal response:

```text
Conclusion
Reason
Action
```

Completion response:
- what changed
- what was verified
- what was not verified
- residual risks
