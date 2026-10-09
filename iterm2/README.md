# Back to the Code · iTerm2

为 cuiem 制作的深色与浅色配色 preset。

- `Back to the Code Dark.itermcolors`：沿用原主题的深灰背景和主要强调色，部分 ANSI bright 色适当提亮。
- `Back to the Code Light.itermcolors`：以冷白为背景，加深橙、绿、金、蓝、粉、青色，保持同一风格。
- `preview.html`：离线预览，两种配色可以并排对照，也可单独查看。

## 导入 iTerm2

1. 将两份 `.itermcolors` 文件保存到 Mac。
2. 打开 iTerm2 → Settings（旧版名称为 Preferences）→ Profiles → 选择常用 Profile → Colors。
3. 打开 Color Presets… → Import…，导入两份文件。
4. 从 Color Presets… 中选择 Back to the Code Dark 或 Back to the Code Light。

如果 Colors 页面提供 **Use separate colors for light and dark mode**，勾选它，然后通过 **Editing** 分别选择 Light 和 Dark，再为各模式选择相应 preset。没有该选项的版本，可在同一 Profile 中手动切换 preset，或创建两个 Profile。

每份 preset 包含 16 个 ANSI 颜色及背景、前景、粗体、光标、光标文字、选区、选区文字和链接颜色，采用 sRGB。

| 用途 | Dark | Light |
| --- | --- | --- |
| 背景 | `#1C1D21` | `#FAFAFC` |
| 默认文字 | `#CBCDD2` | `#2F3137` |
| 光标 | `#4FB4D8` | `#156F91` |
| 选区背景 | `#2F3137` | `#DBE5EF` |
| 粉色 | `#FA3368` | `#C2184B` |
| 金黄 | `#FBC93F` | `#8A6200` |
| 青绿 | `#5DD8B7` | `#177C66` |

浅色版所有 ANSI 文字颜色与默认背景的对比度均达到 4.5:1；默认文字达到 12.47:1。深色版默认文字达到 10.59:1，保留原主题较淡的灰色作为 ANSI bright black。

iTerm2 preset 设置终端配色；字体和提示符布局由原来的 iTerm2 Profile 与 shell 配置控制。现有 Starship 使用固定 RGB 配色，切换 iTerm2 preset 后这些提示符颜色仍由 `starship.toml` 决定。

## 来源

原主题：[Back to the Code](https://github.com/divyanshu013/back-to-the-code)，作者 divyanshu013，MIT license。
颜色依据原仓库 commit `b7347e87147a33d21faaa8d1b939583f785aa7c9` 的主题定义；Light 是为终端新制作的适配版本。

iTerm2 官方导入与深浅模式说明：<https://iterm2.com/documentation-preferences-profiles-colors.html>。

文件已进行 XML plist 解析、色彩通道范围和浅色对比度检查；当前工作环境为 Linux，未在 macOS iTerm2 中实际导入。
