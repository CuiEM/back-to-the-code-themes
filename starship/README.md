# Starship · Back to the Code

两份配置使用相同配色，并保留系统图标。终端需使用 Nerd Font，才能完整显示系统、语言图标和分隔符。

| 版本 | 配置 | 布局 |
| --- | --- | --- |
| Round | [starship-round.toml](starship-round.toml) | 最初的圆角胶囊：系统与用户、目录、Git、运行时分组；时间与状态在左侧；输入符为 `❯` |
| Sharp | [starship-sharp.toml](starship-sharp.toml) | 最新的尖角赛车：`⚡88 MPH`、系统图标、连续色块；时间与状态在右侧；输入符为 `╰─❯` |

`starship.toml` 是指向 `starship-sharp.toml` 的相对符号链接，作为项目的默认入口。两种布局都使用深色配色；其他工具的 Light / Dark 配色位于各自目录。

## 切换现有配置

在项目根目录运行其中一条命令：

```sh
# Round
cp starship/starship-round.toml ~/.config/starship.toml

# Sharp
cp starship/starship-sharp.toml ~/.config/starship.toml
```

本机 x-cmd 已将 `STARSHIP_CONFIG` 指向 `~/.config/starship.toml`，复制后下次提示符刷新时生效。

## 首次安装

在项目根目录运行 `./install.sh round` 或 `./install.sh sharp`。不带参数时默认安装 Sharp；脚本同时安装项目里的 Codex 和 Claude 主题文件。

通过 x-cmd 在 Fish 中启用：

```fish
x starship use "$HOME/.config/starship.toml"
source ~/.config/fish/config.fish
```
