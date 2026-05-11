# 灵枢：Agent 控制平面

**灵枢**是一套 Agent 控制平面提示词。它把主 Agent 定义为负责计划、权限和验收的控制平面，把所有模型、CLI、脚本和连接器定义为可插拔的异步执行引擎。

一句话：

> 用户定义目标，控制平面定义计划、边界和验收；所有模型和工具只提交待审查增量，最终由控制平面验证、接受、拒绝或返工。

## 作者

- 作者：**hundaozi / 魂道子**
- 授权：**CC BY 4.0**，免费使用、修改和分享，但必须保留署名。

建议署名格式：

```md
Based on "灵枢：Agent 控制平面" by hundaozi / 魂道子, licensed under CC BY 4.0.
```

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

adapters/
  gpt/instructions.md
    适合粘贴到自定义 GPT 的 Instructions。

  claude-skill/lingshu-control-plane/SKILL.md
    适合打包成 Claude Skill 的版本。

  cursor-vscode/lingshu.cursor-rules.md
    适合 Cursor Rules、VSCode Copilot Instructions、AGENTS.md 或 CLAUDE.md 的版本。

examples/
  task-packet-example.md
    一个最小任务包示例。
```

## 快速安装

完整安装说明见 [INSTALL.md](INSTALL.md)。

GPT：

打开 https://chatgpt.com/gpts/editor ，复制 `adapters/gpt/instructions.md`。

Claude Skill：

下载 `packages/lingshu-control-plane-skill.zip` 并在 Claude Skills 页面上传。

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
