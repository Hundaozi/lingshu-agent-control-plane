# 一键安装 / 导入

作者：hundaozi / 魂道子  
授权：CC BY 4.0，免费使用，但必须保留署名。

不同平台的“导入”能力不一样。灵枢提供三种入口：

- GPT：一键打开 GPT Builder，复制 Instructions。
- Claude：下载 Skill ZIP，在 Claude 的 Skills 页面上传。
- Cursor / VSCode：在项目根目录执行一行脚本安装规则文件。

## GPT

1. 打开 GPT Builder：

   https://chatgpt.com/gpts/editor

2. 将下面文件内容复制到 Instructions：

   https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/gpt/instructions.md

3. 建议 GPT 名称：

   ```text
   灵枢 Agent 控制平面
   ```

4. 建议描述：

   ```text
   把主 Agent 作为控制平面，把模型、CLI 和工具作为异步执行引擎的任务编排提示词。
   ```

## Claude Skill

下载 Skill ZIP：

https://github.com/Hundaozi/lingshu-agent-control-plane/raw/main/packages/lingshu-control-plane-skill.zip

导入方式：

1. 打开 Claude。
2. 进入 `Customize > Skills`。
3. 点击 `+`。
4. 选择上传 Skill。
5. 上传 `lingshu-control-plane-skill.zip`。
6. 启用该 Skill。

## Cursor 项目规则

在项目根目录执行：

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.ps1 | iex"
```

macOS / Linux：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-cursor-project.sh | sh
```

安装位置：

```text
.cursor/rules/lingshu.mdc
```

## VSCode / Copilot Instructions

在项目根目录执行：

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.ps1 | iex"
```

macOS / Linux：

```bash
curl -fsSL https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/scripts/install-vscode-copilot.sh | sh
```

安装位置：

```text
.github/copilot-instructions.md
```

## 手动下载

完整 Pro 版：

https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/prompts/lingshu-pro-cn.md

GPT 版：

https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/gpt/instructions.md

Claude Skill 源文件：

https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/claude-skill/lingshu-control-plane/SKILL.md

Cursor / VSCode 版：

https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/cursor-vscode/lingshu.cursor-rules.md

