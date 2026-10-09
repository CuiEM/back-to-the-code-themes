# Back to the Code · Codex CLI

两份与 iTerm2 preset 对应的 TextMate 主题：

- `back-to-the-code-dark.tmTheme`
- `back-to-the-code-light.tmTheme`

已依据本机 Codex CLI 0.162.0 的实现确认：自定义 `.tmTheme` 文件从 `$CODEX_HOME/themes/` 加载，默认位置为 `~/.codex/themes/`，通过 `/theme` 选择。

## 使用

在 Codex 中输入 `/theme`，选择 `back-to-the-code-dark` 或 `back-to-the-code-light`（自定义主题）。若当前会话的列表没有刷新，重启 Codex 后选择。

也可启动时临时选择：

```sh
codex -c 'tui.theme="back-to-the-code-dark"'
codex -c 'tui.theme="back-to-the-code-light"'
```

或者在 `~/.codex/config.toml` 的现有 `[tui]` 段中设置：

```toml
[tui]
theme = "back-to-the-code-light"
```

## 在另一台电脑上安装

将两个 `.tmTheme` 文件复制到那台电脑的 `~/.codex/themes/`，重启 Codex，再通过 `/theme` 选择。

Codex 的主题主要影响代码块、语法高亮和 diff；终端整体底色与 ANSI 颜色使用配套的 iTerm2 preset。Light 配套 Light，Dark 配套 Dark。

保留原主题的粉色关键字、金黄色函数、青绿色字符串、橙色数字和浅青色类型；浅色版对应调整为较深的文字色。另为 Markdown 和 diff 添加了配套高亮。

原主题：[Back to the Code](https://github.com/divyanshu013/back-to-the-code)，作者 divyanshu013，MIT license。
本机 CLI 的官方文档访问返回 403，本次支持方式以已安装客户端实现为依据。
