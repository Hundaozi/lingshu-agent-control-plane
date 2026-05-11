# 一键安装 / Import

作者 / Author：hundaozi / 魂道子  
License：MIT

[中文](#中文) | [English](#english)

---

## 中文

不同平台的“导入”能力不一样：

- GPT：打开 GPT Builder，复制 Instructions。
- Claude：下载 Skill ZIP，在 Claude 的 Skills 页面上传。
- Cursor / VSCode：在项目根目录执行一行脚本安装规则文件。

### 选择语言

默认安装中文版。

英文版：

- Windows：执行命令前设置 `$env:LINGSHU_LANG='en'`
- macOS / Linux：在命令末尾使用 `sh -s -- en`

### Windows PowerShell

Cursor 项目规则：

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.ps1 | iex"
```

Cursor 英文版：

```powershell
$env:LINGSHU_LANG='en'; powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.ps1 | iex"
```

VSCode / Copilot Instructions：

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.ps1 | iex"
```

VSCode / Copilot 英文版：

```powershell
$env:LINGSHU_LANG='en'; powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.ps1 | iex"
```

下载 Claude Skill ZIP：

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/download-claude-skill.ps1 | iex"
```

下载 Claude Skill 英文版：

```powershell
$env:LINGSHU_LANG='en'; powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/download-claude-skill.ps1 | iex"
```

### macOS

Cursor 项目规则：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.sh | sh
```

Cursor 英文版：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.sh | sh -s -- en
```

VSCode / Copilot Instructions：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.sh | sh
```

VSCode / Copilot 英文版：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.sh | sh -s -- en
```

下载 Claude Skill ZIP：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/download-claude-skill.sh | sh
```

下载 Claude Skill 英文版：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/download-claude-skill.sh | sh -s -- en
```

打开 GPT Builder：

```bash
open https://chatgpt.com/gpts/editor
```

### Linux

Cursor 项目规则：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.sh | sh
```

Cursor 英文版：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.sh | sh -s -- en
```

VSCode / Copilot Instructions：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.sh | sh
```

VSCode / Copilot 英文版：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.sh | sh -s -- en
```

下载 Claude Skill ZIP：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/download-claude-skill.sh | sh
```

下载 Claude Skill 英文版：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/download-claude-skill.sh | sh -s -- en
```

打开 GPT Builder：

```bash
xdg-open https://chatgpt.com/gpts/editor
```

### GPT

打开 GPT Builder：

https://chatgpt.com/gpts/editor

复制 Instructions：

- 中文：https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/gpt/instructions.md
- English：https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/gpt/instructions-en.md

建议中文 GPT 名称：

```text
灵枢 Agent 控制平面
```

建议英文 GPT 名称：

```text
Lingshu Agent Control Plane
```

### Claude Skill

下载 ZIP 后，在 Claude 中：

1. 打开 Claude。
2. 进入 `Customize > Skills`。
3. 点击 `+`。
4. 选择上传 Skill。
5. 上传 ZIP。
6. 启用 Skill。

ZIP：

- 中文：https://github.com/Hundaozi/lingshu-agent-control-plane/raw/main/packages/lingshu-control-plane-skill.zip
- English：https://github.com/Hundaozi/lingshu-agent-control-plane/raw/main/packages/lingshu-control-plane-skill-en.zip

### 手动下载

- 中文 Pro：https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/prompts/lingshu-pro-cn.md
- English Pro：https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/prompts/lingshu-pro-en.md
- 中文 GPT：https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/gpt/instructions.md
- English GPT：https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/gpt/instructions-en.md
- 中文 Claude Skill：https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/claude-skill/lingshu-control-plane/SKILL.md
- English Claude Skill：https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/claude-skill/lingshu-control-plane-en/SKILL.md
- 中文 Cursor / VSCode：https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/cursor-vscode/lingshu.cursor-rules.md
- English Cursor / VSCode：https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/cursor-vscode/lingshu.cursor-rules-en.md

---

## English

Different platforms support different levels of import automation:

- GPT: open GPT Builder and copy Instructions.
- Claude: download a Skill ZIP and upload it in Claude Skills.
- Cursor / VSCode: run a one-line script from your project root.

### Language Selection

Chinese is installed by default.

For English:

- Windows: set `$env:LINGSHU_LANG='en'` before running the command.
- macOS / Linux: append `sh -s -- en` to the command.

### Windows PowerShell

Cursor project rule:

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.ps1 | iex"
```

Cursor English:

```powershell
$env:LINGSHU_LANG='en'; powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.ps1 | iex"
```

VSCode / Copilot Instructions:

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.ps1 | iex"
```

VSCode / Copilot English:

```powershell
$env:LINGSHU_LANG='en'; powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.ps1 | iex"
```

Download Claude Skill ZIP:

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/download-claude-skill.ps1 | iex"
```

Download Claude Skill English:

```powershell
$env:LINGSHU_LANG='en'; powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/download-claude-skill.ps1 | iex"
```

### macOS

Cursor project rule:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.sh | sh
```

Cursor English:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.sh | sh -s -- en
```

VSCode / Copilot Instructions:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.sh | sh
```

VSCode / Copilot English:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.sh | sh -s -- en
```

Download Claude Skill ZIP:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/download-claude-skill.sh | sh
```

Download Claude Skill English:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/download-claude-skill.sh | sh -s -- en
```

Open GPT Builder:

```bash
open https://chatgpt.com/gpts/editor
```

### Linux

Cursor project rule:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.sh | sh
```

Cursor English:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.sh | sh -s -- en
```

VSCode / Copilot Instructions:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.sh | sh
```

VSCode / Copilot English:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.sh | sh -s -- en
```

Download Claude Skill ZIP:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/download-claude-skill.sh | sh
```

Download Claude Skill English:

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/download-claude-skill.sh | sh -s -- en
```

Open GPT Builder:

```bash
xdg-open https://chatgpt.com/gpts/editor
```

### GPT

Open GPT Builder:

https://chatgpt.com/gpts/editor

Copy Instructions:

- Chinese: https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/gpt/instructions.md
- English: https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/gpt/instructions-en.md

### Claude Skill

ZIP downloads:

- Chinese: https://github.com/Hundaozi/lingshu-agent-control-plane/raw/main/packages/lingshu-control-plane-skill.zip
- English: https://github.com/Hundaozi/lingshu-agent-control-plane/raw/main/packages/lingshu-control-plane-skill-en.zip

Upload in Claude:

1. Open Claude.
2. Go to `Customize > Skills`.
3. Click `+`.
4. Upload the ZIP.
5. Enable the Skill.
