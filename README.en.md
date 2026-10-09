# Back to the Code Themes

[中文文档](README.md) · **English**

A unified theme collection for terminal and AI coding CLIs, unofficially adapted from [divyanshu013/back-to-the-code](https://github.com/divyanshu013/back-to-the-code).

This project is not affiliated with or officially endorsed by the original author or project. The original palette and related adaptations are used under the original repository's MIT License. Keep the original copyright and license notices when publishing or redistributing this project.

- Dark background `#1C1D21` / cool light background `#FAFAFC`
- Pink `#FA3368`, yellow `#FBC93F`, mint `#5DD8B7`, cyan `#79D9F1`
- Supports Starship, iTerm2, Codex CLI, and Claude Code
- Starship includes two layouts: the rounded `round` layout and the sharp racing `sharp` layout with system icons and the `⚡88 MPH` marker

This guide is organized into four installation sections: **Starship, iTerm2, Codex, and Claude Code**. All theme files are included in this repository. Unless stated otherwise, run commands from the repository root.

## Visual previews

Starship, iTerm2, Codex, and Claude Code all have an actual screenshot or companion preview so you can check the style before installing.

### Starship

**Round — actual runtime screenshot:** the pink system/user segment and yellow directory segment form one capsule; Git status and time use separate capsules, with the `❯` input character on the second line.

![Actual Starship Round screenshot in iTerm2 and Fish](preview/starship-round.png)

**Sharp — actual runtime screenshot:** includes `⚡88 MPH`, system/user, directory, Git, and right-aligned time information.

![Actual Starship Sharp screenshot in iTerm2 and Fish](preview/starship-sharp.png)

### iTerm2

![iTerm2 Dark and Light color preview](preview/iterm2-colors.svg)

### Codex and Claude Code

![Codex and Claude Code Dark and Light theme preview](preview/cli-themes.svg)

## Before you install

macOS + iTerm2 + zsh is the recommended setup. Starship also works on Linux, bash, and fish. Install the Codex and Claude Code CLIs separately before applying their themes.

Enter the project directory and check that the four theme directories are present:

~~~
cd /path/to/back-to-the-code
ls starship iterm2 codex claude
~~~

If you want to copy the Starship, Codex, and Claude Code files in one step, run:

~~~
chmod +x ./install.sh

# Install the Sharp layout (the default)
./install.sh sharp

# Or install the Round layout
./install.sh round
~~~

The script copies Starship to `~/.config/starship.toml`, Codex themes to `~/.codex/themes/`, and Claude Code themes to `~/.claude/themes/`. It does not install Starship, iTerm2, Codex CLI, or Claude Code, and it does not import the iTerm2 presets automatically; complete those steps in the sections below. The script overwrites a same-named Starship configuration, so back it up first if needed:

~~~
cp "$HOME/.config/starship.toml" "$HOME/.config/starship.toml.bak" 2>/dev/null || true
~~~

## Starship

### 1. Install Starship and a Nerd Font

If `starship --version` already works, skip the Starship installation. On macOS with Homebrew:

~~~
brew install starship
~~~

Without Homebrew, or on Linux, use the official Starship installer:

~~~
curl -sS https://starship.rs/install.sh | sh
~~~

The configurations use Powerline separators plus system, Git, and language icons. Select a Nerd Font in your terminal profile. One macOS + Homebrew example is:

~~~
brew install --cask font-jetbrains-mono-nerd-font
~~~

After installing the font, select `JetBrainsMono Nerd Font` in **iTerm2 → Settings → Profiles → Text → Font**. The iTerm2 font and color steps are described in the [iTerm2](#iterm2) section.

### 2. Copy a layout configuration

From the repository root, run one of these commands:

~~~
# Round: rounded capsule layout, input character ❯
mkdir -p "$HOME/.config"
cp starship/starship-round.toml "$HOME/.config/starship.toml"

# Sharp: sharp racing layout with ⚡88 MPH, input character ╰─❯
mkdir -p "$HOME/.config"
cp starship/starship-sharp.toml "$HOME/.config/starship.toml"
~~~

If you already ran `install.sh`, you do not need to copy the file again. [starship.toml](starship/starship.toml) is the default entry point with the same content as `starship-sharp.toml`; when copying manually, choose `round` or `sharp` explicitly.

### 3. Enable Starship in your shell

Add the line for your current shell to its configuration file. Do not add multiple shell initialization commands.

For **zsh** (the default macOS shell), edit `~/.zshrc`:

~~~
eval "$(starship init zsh)"
~~~

For **bash**, edit `~/.bashrc`:

~~~
eval "$(starship init bash)"
~~~

For **fish**, edit `~/.config/fish/config.fish`:

~~~
starship init fish | source
~~~

Reload the configuration or open a new terminal window:

~~~
# zsh / bash
exec "$SHELL"

# fish
source ~/.config/fish/config.fish
~~~

If you manage Starship in Fish with x-cmd, point it at the repository configuration:

~~~
x starship use "$HOME/.config/starship.toml"
source ~/.config/fish/config.fish
~~~

### 4. Verify and switch layouts

~~~
starship --version
~~~

Open a new prompt, preferably inside a Git repository. You should see the directory, Git status, and runtime information. To switch layouts, copy the other TOML file and reload the shell:

~~~
cp starship/starship-round.toml "$HOME/.config/starship.toml"
exec "$SHELL"
~~~

If icons appear as boxes, the terminal is probably not using a Nerd Font. If the prompt does not change after copying the file, confirm that the current shell runs the correct `starship init` command and that `~/.config/starship.toml` contains the file you just copied.

See [starship/README.md](starship/README.md) for more layout details.


## iTerm2

iTerm2 is for macOS. Its colors are Profile settings and are independent from the Starship prompt layout. Apply the preset to the same Profile you use for your terminal.

### 1. Import the Dark / Light preset

1. Open iTerm2 and go to **Settings** (called **Preferences** in older versions) → **Profiles → Colors**.
2. Select the Profile you normally use. Repeat this for every Profile that should use the theme.
3. Click **Color Presets… → Import…**.
4. Import both files:
   - [iterm2/Back to the Code Dark.itermcolors](<iterm2/Back to the Code Dark.itermcolors>)
   - [iterm2/Back to the Code Light.itermcolors](<iterm2/Back to the Code Light.itermcolors>)
5. Open **Color Presets…** again and select **Back to the Code Dark** or **Back to the Code Light**.

You can also extract [iterm2/Back-to-the-Code-iTerm2.zip](iterm2/Back-to-the-Code-iTerm2.zip) and import the `.itermcolors` files inside. [iterm2/preview.html](iterm2/preview.html) is an offline preview of both palettes.

### 2. Set the font

Importing colors does not change the font. Go to **Profiles → Text → Font** and select the Nerd Font you installed, such as `JetBrainsMono Nerd Font`. This is required for Starship icons such as ``, ``, ``, and the Powerline separators to render correctly.

### 3. Follow the system light / dark mode

If the Colors page offers **Use separate colors for light and dark mode**:

1. Enable it.
2. Under **Editing**, select Dark and apply **Back to the Code Dark**.
3. Under **Editing**, select Light and apply **Back to the Code Light**.

If your iTerm2 version does not offer this option, switch presets manually or create one Profile for each mode. New tabs inherit the colors from their Profile.

### 4. Check the result

Open a new tab and confirm the background, text, selection, and cursor colors. If the old colors remain, the preset was probably imported into another Profile, or the new tab is using a different Profile. Starship prompt colors are fixed in the TOML configuration, so changing the iTerm2 preset does not switch the Starship layout.

See [iterm2/README.md](iterm2/README.md) for the complete color notes.

## Codex

This section installs the Codex CLI code, diff, and interface theme. The terminal window background and ANSI colors still come from the iTerm2 preset.

### 1. Check that Codex CLI is available

Make sure Codex CLI is installed and authenticated:

~~~
codex --version
~~~

If the command is missing, install Codex CLI using your preferred official installation method before continuing.

### 2. Copy the theme files

By default, Codex loads custom `.tmTheme` files from `~/.codex/themes/`:

~~~
mkdir -p "$HOME/.codex/themes"
cp codex/back-to-the-code-dark.tmTheme "$HOME/.codex/themes/"
cp codex/back-to-the-code-light.tmTheme "$HOME/.codex/themes/"
ls "$HOME/.codex/themes/back-to-the-code-"*.tmTheme
~~~

If you set `CODEX_HOME`, copy the files to its `themes` subdirectory. `install.sh` writes to `~/.codex/themes` by default, so use this manual command when `CODEX_HOME` is customized:

~~~
CODEX_THEME_DIR="${CODEX_HOME:-$HOME/.codex}/themes"
mkdir -p "$CODEX_THEME_DIR"
cp codex/back-to-the-code-*.tmTheme "$CODEX_THEME_DIR/"
~~~

### 3. Select the theme in Codex

Start Codex and run this command in the input box:

~~~
/theme
~~~

Select **Back to the Code Dark** or **Back to the Code Light**. If the custom themes do not appear, restart Codex. The theme identifiers are `back-to-the-code-dark` and `back-to-the-code-light`.

You can also select a theme for one launch:

~~~
codex -c 'tui.theme="back-to-the-code-dark"'
codex -c 'tui.theme="back-to-the-code-light"'
~~~

To make a theme persistent, add the setting to the existing `[tui]` section in `~/.codex/config.toml`. If that section already exists, add only `theme` instead of creating a duplicate:

~~~
[tui]
theme = "back-to-the-code-light"
~~~

Pair the Dark theme with the iTerm2 Dark preset and the Light theme with the iTerm2 Light preset so the code area and terminal background use matching contrast.

See [codex/README.md](codex/README.md) for the file details.

## Claude Code

This section installs the Claude Code interface, message area, permission prompts, diffs, and status colors. The terminal background and ANSI colors still come from the iTerm2 preset.

### 1. Check that Claude Code is available

~~~
claude --version
~~~

If the command is missing, install Claude Code and sign in before copying the theme files.

### 2. Copy the theme files

By default, Claude Code loads custom JSON themes from `~/.claude/themes/`:

~~~
mkdir -p "$HOME/.claude/themes"
cp claude/back-to-the-code-dark.json "$HOME/.claude/themes/"
cp claude/back-to-the-code-light.json "$HOME/.claude/themes/"
ls "$HOME/.claude/themes/back-to-the-code-"*.json
~~~

`install.sh` performs this step too. If you use a custom Claude configuration directory, copy both JSON files to its `themes/` subdirectory.

### 3. Select the theme in Claude Code

Start Claude Code and run:

~~~
/theme
~~~

Select **Back to the Code Dark** or **Back to the Code Light**. If the menu does not show the files immediately, restart Claude Code. You can also choose **New custom theme…** in `/theme` and continue editing from the existing theme.

Selecting a theme does not require changes to `~/.claude/settings.json`. If that file contains an older theme setting, return to `/theme` and select the Back to the Code theme manually.

Pair the Claude Code theme with the matching iTerm2 preset:

| Claude Code | iTerm2 |
| --- | --- |
| Back to the Code Dark | Back to the Code Dark |
| Back to the Code Light | Back to the Code Light |

See [claude/README.md](claude/README.md) for the theme field details.


## Repository layout

~~~
back-to-the-code-themes/
├── preview/
│   ├── starship-round.png             # Actual Starship Round screenshot
│   ├── starship-sharp.png             # Actual Starship Sharp screenshot
│   ├── iterm2-colors.svg              # iTerm2 Dark / Light preview
│   └── cli-themes.svg                 # Codex / Claude Code preview
├── starship/
│   ├── starship-round.toml             # Rounded capsule layout
│   ├── starship-sharp.toml             # Sharp racing layout
│   ├── starship.toml                   # Default Sharp entry point
│   └── README.md
├── iterm2/
│   ├── Back to the Code Dark.itermcolors
│   ├── Back to the Code Light.itermcolors
│   ├── preview.html                    # Offline preview
│   └── README.md
├── codex/
│   ├── back-to-the-code-dark.tmTheme
│   ├── back-to-the-code-light.tmTheme
│   └── README.md
├── claude/
│   ├── back-to-the-code-dark.json
│   ├── back-to-the-code-light.json
│   └── README.md
├── install.sh
├── LICENSE
├── README.md
└── README.en.md
~~~

## Design notes

The Starship `round` layout groups modules into rounded capsules, with time and status on the left. The `sharp` layout takes inspiration from a time-machine dashboard: its first line connects `⚡88 MPH`, system icons, the directory, Git, and runtime modules with sharp separators; its second line uses `╰─❯`, while the right side shows the exact time, command duration, background jobs, and command status.

The Dark versions of iTerm2, Codex, and Claude Code continue the original theme's dark workspace and bright tokens. The Light versions use a cool white background with darker ANSI and interface accent colors for readability. Codex and Claude Code themes control their CLI interface, code highlighting, and diffs; the terminal background and ANSI colors come from the iTerm2 preset.

This derivative configuration uses **Back to the Code Themes** as its project name to distinguish it from the original theme repository. The theme names shown inside Starship, Codex, and Claude Code remain `Back to the Code Dark` / `Back to the Code Light` so existing configuration and theme selection continue to work.

