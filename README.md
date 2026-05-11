# 灵枢：Agent 控制平面

[中文](#中文) | [English](#english)

---

## 中文

**灵枢**是一套 Agent 控制平面提示词。它把主 Agent 定义为负责计划、权限和验收的控制平面，把所有模型、CLI、脚本和连接器定义为可插拔的异步执行引擎。

一句话：

> 用户定义目标，控制平面定义计划、边界和验收；所有模型和工具只提交待审查增量，最终由控制平面验证、接受、拒绝或返工。

## 作者

- 作者：**hundaozi / 魂道子**
- License：**MIT**

## 适合谁

- 想把一个 Agent 变成任务控制中心的人。
- 需要多模型、多工具、多 CLI 协作的工程团队。
- 使用 Claude Code、GPT、Cursor、Codex、DeepSeek、Gemini、Shell、Python、GitHub CLI 等工具的人。
- 需要防止 Agent 越权、漂移、偷改测试过关的人。

## 核心机制

- **控制平面**：负责目标理解、任务拆解、权限控制、结果审查和最终验收。
- **异步执行引擎**：负责在授权范围内执行具体任务。
- **任务包**：每个执行任务都必须有目标、非目标、作用域、契约、验证和验收标准。
- **测试契约锁**：现有测试默认是验收契约，执行引擎不能弱化测试来过关。
- **阶段同步**：长任务必须分阶段报告信心、变化、风险、验证和下一步。
- **权限预检**：外部 CLI 调用前先判断权限，避免无意义失败重跑。

## 文件结构

```text
prompts/
  lingshu-pro-cn.md
    完整中文 Pro 版。

  lingshu-pro-en.md
    Full English Pro edition.

adapters/
  gpt/instructions.md
    适合粘贴到自定义 GPT 的中文 Instructions。

  gpt/instructions-en.md
    English Instructions for custom GPTs.

  claude-skill/lingshu-control-plane/SKILL.md
    中文 Claude Skill。

  claude-skill/lingshu-control-plane-en/SKILL.md
    English Claude Skill.

  cursor-vscode/lingshu.cursor-rules.md
    中文 Cursor Rules、VSCode Copilot Instructions、AGENTS.md 或 CLAUDE.md。

  cursor-vscode/lingshu.cursor-rules-en.md
    English Cursor Rules, VSCode Copilot Instructions, AGENTS.md, or CLAUDE.md.

examples/
  task-packet-example.md
    一个最小任务包示例。

  task-packet-example-en.md
    A minimal English task packet example.
```

## 快速安装

完整安装说明见 [INSTALL.md](INSTALL.md)。

中文 GPT：

打开 https://chatgpt.com/gpts/editor ，复制 `adapters/gpt/instructions.md`。

English GPT:

Open https://chatgpt.com/gpts/editor and copy `adapters/gpt/instructions-en.md`.

中文 Claude Skill：

下载 `packages/lingshu-control-plane-skill.zip` 并在 Claude Skills 页面上传。

English Claude Skill:

Download `packages/lingshu-control-plane-skill-en.zip` and upload it in Claude Skills.

Windows PowerShell：

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.ps1 | iex"
```

macOS / Linux：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.sh | sh
```

VSCode / Copilot 的 Windows、macOS、Linux 命令见 [INSTALL.md](INSTALL.md)。

## 如何使用

### 自定义 GPT

把 `adapters/gpt/instructions.md` 粘贴到 GPT Builder 的 Instructions 中。

### Claude Skill

把 `adapters/claude-skill/lingshu-control-plane/` 作为一个 Skill 目录导入 Claude。

### Cursor / VSCode

把 `adapters/cursor-vscode/lingshu.cursor-rules.md` 复制到项目规则中，例如：

- Cursor：`.cursor/rules/lingshu.mdc`
- VSCode / Copilot：项目级 instructions 文件
- 通用 Agent：`AGENTS.md` 或 `CLAUDE.md`

## 发布原则

灵枢不是让模型自由发挥，而是让模型和工具进入一个可审查、可拆解、可返工的执行组织方式。

控制平面负责判断。执行引擎负责动作。验收不能外包。

---

## English

**Lingshu** is an Agent Control Plane prompt. It defines the primary agent as the control plane responsible for planning, permissions, and acceptance, while every model, CLI, script, and connector is a pluggable async execution engine.

One sentence:

> The user defines the goal; the control plane defines the plan, boundary, and acceptance criteria; every model and tool submits reviewable deltas; the control plane verifies, accepts, rejects, or requests rework.

## Author

- Author: **hundaozi / 魂道子**
- License: **MIT**

## Core Mechanisms

- **Control Plane**: understands goals, decomposes tasks, controls permissions, reviews outputs, and performs final acceptance.
- **Async Execution Engines**: perform concrete actions within authorized scope.
- **Task Packets**: every execution task includes goals, non-goals, scope, contracts, verification, and acceptance criteria.
- **Test Contract Lock**: existing tests are protected acceptance contracts.
- **Phase Sync**: long-running work reports confidence, changes, risks, verification, and next steps by phase.
- **Permission Preflight**: external CLI calls are classified before execution to avoid avoidable failure/retry loops.

## Language Versions

- Chinese Pro: [`prompts/lingshu-pro-cn.md`](prompts/lingshu-pro-cn.md)
- English Pro: [`prompts/lingshu-pro-en.md`](prompts/lingshu-pro-en.md)
- Chinese GPT: [`adapters/gpt/instructions.md`](adapters/gpt/instructions.md)
- English GPT: [`adapters/gpt/instructions-en.md`](adapters/gpt/instructions-en.md)
- Chinese Claude Skill: [`adapters/claude-skill/lingshu-control-plane/SKILL.md`](adapters/claude-skill/lingshu-control-plane/SKILL.md)
- English Claude Skill: [`adapters/claude-skill/lingshu-control-plane-en/SKILL.md`](adapters/claude-skill/lingshu-control-plane-en/SKILL.md)
- Chinese Cursor / VSCode: [`adapters/cursor-vscode/lingshu.cursor-rules.md`](adapters/cursor-vscode/lingshu.cursor-rules.md)
- English Cursor / VSCode: [`adapters/cursor-vscode/lingshu.cursor-rules-en.md`](adapters/cursor-vscode/lingshu.cursor-rules-en.md)

## Quick Install

Full instructions: [INSTALL.md](INSTALL.md)

Custom GPT:

- Chinese: copy `adapters/gpt/instructions.md`
- English: copy `adapters/gpt/instructions-en.md`

Claude Skill:

- Chinese ZIP: `packages/lingshu-control-plane-skill.zip`
- English ZIP: `packages/lingshu-control-plane-skill-en.zip`

Cursor project rule:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.sh | sh -s -- en
```

VSCode / Copilot:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.sh | sh -s -- en
```

## Principle

Lingshu does not let models improvise freely. It places models and tools inside a reviewable execution structure.

The control plane owns judgment. Execution engines own actions. Acceptance cannot be outsourced.
