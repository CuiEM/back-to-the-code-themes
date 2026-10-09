# Back to the Code · Claude Code

Claude Code 2.1.281 的自定义主题，使用与 iTerm2、Starship 和 Codex 版本一致的 Back to the Code 配色。

- `back-to-the-code-dark.json`：深灰底、亮粉、金黄、青绿和浅青。
- `back-to-the-code-light.json`：冷白底、加深后的对应强调色。

## 安装

把两个 JSON 文件复制到 `~/.claude/themes/`。本机已经安装在这个目录：

```text
~/.claude/themes/back-to-the-code-dark.json
~/.claude/themes/back-to-the-code-light.json
```

启动 Claude Code 后输入 `/theme`，选择 **Back to the Code Dark** 或 **Back to the Code Light**。也可以在 `/theme` 里选择 **New custom theme…**，根据现有主题继续编辑。

Claude 自定义主题使用 JSON：`base` 选择内置的 `dark` 或 `light`，`overrides` 修改 Claude Code 的界面令牌。配色以原始主题为基础，覆盖文本、提示边框、权限提示、成功/错误/警告、差异、消息区、侧栏和彩虹状态色。

若菜单没有立即显示文件，重启 Claude Code。当前已有的 `~/.claude/settings.json` 保持不变，仍会使用原来的 `dark-ansi`，需要从 `/theme` 手动选择新主题。

配套文件：

- iTerm2：`../iterm2/Back to the Code Dark.itermcolors`、`../iterm2/Back to the Code Light.itermcolors`
- Codex：`../codex/back-to-the-code-dark.tmTheme`、`../codex/back-to-the-code-light.tmTheme`

原主题：[Back to the Code](https://github.com/divyanshu013/back-to-the-code)，作者 divyanshu013，MIT license。
本机已安装版本：Claude Code 2.1.281。文件已通过 JSON 解析、令牌名称和十六进制颜色值检查。
