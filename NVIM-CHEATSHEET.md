# Neovim Cheatsheet

## Start

```sh
nvim .          # open current project
nvim file.md    # open a file
```

## Save / quit

```txt
Cmd+s      save, if terminal supports it
Space w    save
:w         save
:q         quit
:wq        save and quit
:q!        quit without saving
```

## Project navigation

```txt
Space e      toggle file explorer
Space f f    find files
Space f g    search text in project
Space f b    switch buffers
Space f h    search help
```

## File explorer

```txt
Enter    open file/folder
a        add file/folder
r        rename
d        delete
q        close tree
```

## LSP / code intelligence

```txt
gd          go to definition
Ctrl-o      jump back
Ctrl-i      jump forward
K           hover docs
Space r n   rename symbol
Space c a   code action
```

## Autocomplete

```txt
Ctrl-Space   open suggestions
Ctrl-n       next suggestion
Ctrl-p       previous suggestion
Enter        accept suggestion
```

## Formatting

```txt
Space c f   format current file
```

Formatting also runs on save when a formatter is available.

## Git / diffs

```txt
Space g d   open full diff view
Space g c   close full diff view
Space g p   preview current hunk
Space g r   reset current hunk
Space g b   blame current line
Space g h   file history
]c          next git change
[c          previous git change
```

Notes:

```txt
Green/blue/red line overlays show changed lines.
Neo-tree shows file-level git markers.
Diffview shows only uncommitted changes by default.
```

To view the last commit diff:

```vim
:DiffviewOpen HEAD~1..HEAD
```

## Markdown preview

```txt
Space m p   toggle browser preview
```

Commands:

```vim
:MarkdownPreviewToggle
:MarkdownPreviewStop
```

## Undo / redo

```txt
u         undo
Ctrl-r    redo
```

## Modes

```txt
i      insert mode
Esc    normal mode
v      visual mode
```

## Terminal commands from Neovim

```vim
:!git status     run one command
:terminal        open terminal buffer
```

Leave terminal input mode:

```txt
Ctrl-\ Ctrl-n
```

## Recommended workflow

Use tmux/hive outside Neovim, then run Neovim inside the project session:

```sh
cd ~/2026/projects/my-project
nvim .
```
