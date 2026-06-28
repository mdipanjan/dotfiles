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
