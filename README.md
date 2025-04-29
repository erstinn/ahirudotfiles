# ahirudotfiles

**Dotfiles and configs** for my Arch Linux setup—i3-gaps, Polybar, Rofi, Dunst, Kitty, Vim/Neovim, Obsidian, and shell environments.

## Repository Structure

### Top-level folders

- **`.config/`**  
  Central place for GUI/app configs:
    - **`dunst/`** – Dunst notification daemon (​`dunstrc` + backup).
    - **`i3/`** – i3-gaps window manager
        - `config` / `config.save` – keybindings, autostart apps, layout rules, gaps, colors
        - `plugins/` – helper scripts (Python/Rust) for layouts, window swallowing, etc.
    - **`kitty/`** – Kitty terminal settings (themes + `kitty.conf`).
    - **`polybar/`** – Polybar status bar
        - `config` / `config-alt-numbered-workspaces` – bar modules, colors, workspaces
        - `launch.sh` – startup script
        - `scripts/` – battery, update checks (Pacman/AUR)
    - **`rofi/`** – Rofi launcher themes & scripts
        - `*.rasi` – theme files (launcher, emoji, power menu, etc.)
        - `scripts/` – lock screen, network menu, weather, uptime, GPU info, etc.

- **`.vim/`**  
  Vim editor customizations:
    - `colors/` – Xcode-style color schemes
    - `doc/` – documentation for each colorscheme
    - `.netrwhist` – netrw directory-history settings

- **`Pictures/wp/`**  
  Wallpapers (e.g. `human-and-cat.png`) used by feh in i3 autostart.

- **`audacious/`**  
  Audacious music player config:
    - `config`, `QtUi.conf` – UI/settings
    - `playlists/` – saved playlists
    - `playlist-state` – last session state
    - `plugin-registry` – enabled plugins

- **`nvim/`**  
  Neovim configuration:
    - `init.lua` – main setup, plugin manager (lazy.nvim)
    - `lua/` – custom Lua modules
    - `lazy-lock.json` – lockfile for plugin versions
    - `.idea/` – IDE metadata
    - `.DS_Store` – macOS finder artifact

- **`obsidian/`**  
  Obsidian vault settings:
    - `plugins/`, `snippets/` – custom plugins & CSS snippets
    - `themes/AnuPpuccin` – community theme
    - JSONs (`app.json`, `appearance.json`, `community-plugins.json`, `core-plugins.json`, `graph.json`, `workspace.json`, `types.json`) – vault metadata
    - `readme.md` – vault-specific notes

- **`wp/`**  
  Alternate wallpaper folder (same `human-and-cat.png`).

- **`ahirumusic/`**  
  Custom scripts or configs for music playback (e.g. MPV playlists).

### Top-level files

- **`imagestuff.css`**  
  Utility CSS for image-related styling in various UIs or docs.

- **`iterm-profile.json`**  
  Exported iTerm2 profile settings.

- **`.bashrc`**  
  Bash init: aliases (`py`, `dlmp3`, etc.), functions (`compdf`, `dlmp3`), prompt colors, history settings.

- **`.gitconfig`**  
  Git global settings: user name/email, default branch, core editor.

- **`.zshrc`**  
  Zsh init for macOS: oh-my-zsh, Powerlevel10k theme, plugins (git, autosuggestions, history), keybindings, NVM, syntax-highlighting.

- **`.zshrc-archiru`**  
  Arch-specific Zsh init: custom plugin paths, history behavior, autocompletion, personal functions (`gohere`, `findpt`).

- **`README.md`**  
  This file—update to reflect any new changes.

---

> **Usage**  
> Clone or symlink these into your home directory:
> ```bash
> git clone https://github.com/erstinn/ahirudotfiles.git ~/.config/ahirudotfiles
> ~/.config/ahirudotfiles/install.sh  # or your manual setup steps
> ```
> Adjust paths or usernames as needed for your environment.
