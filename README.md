<h1 align="center">Debian Rice</h1>
<div align="center">
	<strong>My collection of dotfiles for a perfect computing experience</strong>
</div>
<div align="center">
  <h3>
    <a href="#Features">Features</a>
    <span> | </span>
    <a href="#Usage-guide">Usage guide</a>
    <span> | </span>
    <a href="#Installation">Installation</a>
    <span> | </span>
    <a href="#Dependencies">Dependencies</a>
    <span> | </span>
    <a href="#Contributing">Contributing</a>
    <span> | </span>
    <a href="#License">License</a>
  </h3>
</div>
<div align="center">
	Ambitious project with plans to evolve into its own standalone GNU/Linux distribution, Soon™
</div>

# Features

* Features a highly efficient and ergonomic workflow system, designed to eliminate unnecessary wrist-related movements and pain
* Designed *especially* with laptop users in mind
	* Vim-based bindings encourage fingers to stay on home row, and off the touchpad
	* Eliminates necessity of carrying additional peripherals (i.e. computer mice) for a productive computing experience
	* Prolongs laptop battery life, minimizing resource utilization
* Combines beautiful aesthetics with low hardware requirements

# Usage Guide

### Basic Controls

<details>
<summary><strong>Workspace management</strong></summary>
	
| Keybinding | Action |
| :--------- | :----- |
<kbd>Super</kbd> + <kbd>0</kbd> - <kbd>9</kbd> | Focus workspace N
<kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>0</kbd> - <kbd>9</kbd> | Move to workspace N
</details>

<details>
<summary><strong>Window management</strong></summary>
	
| Keybinding | Action |
| :--------- | :----- |
<kbd>Super</kbd> + <kbd>q</kbd> | Kill focused window
<kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>q</kbd> | Kill focused window
<kbd>Super</kbd> + <kbd>Spacebar</kbd> | Toggle floating on/off state for currently focused window
<kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>Spacebar</kbd> | Toggle sticky on/off state for currently focused window
</details>

### Applications

<details>
<summary><strong>Pop-up utility programs</strong></summary>
	
| Keybinding | Action |
| :--------- | :----- |
<kbd>Super</kbd> + <kbd>a</kbd> | Qalc calculator
<kbd>Super</kbd> + <kbd>e</kbd> | Mozilla Thunderbird email client
<kbd>Super</kbd> + <kbd>u</kbd> | Tmux terminal
<kbd>Super</kbd> + <kbd>m</kbd> | GNOME Music Player Daemon client
<kbd>Super</kbd> + <kbd>f</kbd> | GNOME Nautilus file manager
<kbd>Super</kbd> + <kbd>t</kbd> | GNOME Resource Monitor
</details>

<details>
<summary><strong>Rofi Dmenu</strong></summary>

| Keybinding | Action |
| :--------- | :----- |
| <kbd>Super</kbd> + <kbd>d</kbd> | Launch new app instance |
| <kbd>Super</kbd> + <kbd>i</kbd> | Insert emoji |
| <kbd>Super</kbd> + <kbd>o</kbd> | Insert unicode symbol |
</details>

# Dependencies
| Debian Package | Description | Type | Upstream |
| :------------- | :---------- | :--- | :------- |
| [Rofi](https://packages.debian.org/buster/rofi) | window switcher, run dialog and dmenu replacement | Application | https://github.com/davatorium/rofi |
| [i3-wm](https://packages.debian.org/buster/i3-wm) | improved dynamic tiling window manager | Application | https://github.com/i3/i3 |
