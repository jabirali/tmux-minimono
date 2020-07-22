# Tmux Minimono

Minimalist monochrome theme for Tmux. Note that there is a companion theme
for Vim and Neovim available [here][4].

![screenshot](screenshot.png)

## Features

- No bullshit: It shows you a tab line, your hostname, and the `tmux` session.
  No powerline, calendars, system monitors, etc.
- Monochrome: It only uses the terminal background color, as well as `black`,
  `brightblack`, `white`, and `brightwhite`. This makes it compatible with
  basically every terminal color scheme.
- Focus: It switches between `white` and `brightwhite` for the terminal
  foreground color when you change your focus.  
- Transparency: It does not override the terminal background color, making
  it compatible with terminal transparency.

## Quick start

To install via the [Tmux Plugin Manager (TPM)][1], add this to your `tmux.conf`:

    set -g @plugin 'jabirali/tmux-minimono'

For optimal results, your terminal colors for "background" and "black" should be
set to different values even if you don't use transparency in your terminal. The
color `black` is used for the statusline and pane borders.  

[1]: https://github.com/tmux-plugins/tpm

## Other programs

Many console programs by default don't respect your terminal colors, including the
background color (ruining transparency effects), and the 16 ANSI colors (making it
complex to get all your applications to look consistent). Here are some themes that
do work well with your terminal colors, making them good candidates for combination
with the Minimono `tmux` theme:

- `vim`: The [Minimono][4] and [Dim][2] themes respect your colorscheme.
- `fzf`: Set `FZF_DEFAULT_OPTS=--color=16` to use an ANSI colorscheme.
- `bat`: Set `BAT_THEME=ansi-dark` to use a compatible ANSI colorscheme.
- `fish`: See [this][3] suggestion for a decent ANSI colorscheme.

[2]: https://github.com/jeffkreeftmeijer/vim-dim
[3]: https://github.com/fish-shell/fish-shell/issues/3443#issuecomment-511227428
[4]: https://github.com/jabirali/vim-minimono
