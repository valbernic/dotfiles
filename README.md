# Dotfiles

```bash
. ./envsetup.sh
```

<!-- vim-markdown-toc GFM -->

* [Tmux](#tmux)
    * [Mouse](#mouse)
    * [Reload](#reload)
    * [Sessions](#sessions)
    * [Splits](#splits)
    * [Yank](#yank)
* [Vim](#vim)
    * [Append](#append)
    * [Completion](#completion)
    * [Duplicate](#duplicate)
    * [Git](#git)
    * [Goto](#goto)
    * [Goyo](#goyo)
    * [Mouse](#mouse-1)
    * [Navigation](#navigation)
    * [Reload](#reload-1)
    * [Resize](#resize)
    * [Search](#search)
    * [Surround](#surround)
    * [Tables](#tables)
* [Plugins](#plugins)
    * [vim-markdown-toc](#vim-markdown-toc)
    * [vim-surround](#vim-surround)
    * [vimtex](#vimtex)

<!-- vim-markdown-toc -->

## Tmux

### Mouse

| Shortcut                 | Action |
| ------------------------ | ------ |
| ***Press*** `Ctrl-a + m` | Toggle |

### Reload

| Shortcut                 | Action                             |
| ------------------------ | ---------------------------------- |
| ***Press*** `Ctrl-a + r` | Apply settings from `~/.tmux.conf` |

### Sessions

| Shortcut                 | Action                                     |
| ------------------------ | ------------------------------------------ |
| ***Press*** `Ctrl-a + l` | Switch to the **next** running session     |
| ***Press*** `Ctrl-a + h` | Switch to the **previous** running session |
| ***Press*** `Ctrl-a + s` | Choose a session                           |

### Splits

| Shortcut                  | Action                    |
| ------------------------- | ------------------------- |
| ***Press*** `Ctrl-a + \|` | Split window horizontally |
| ***Press*** `Ctrl-a + -`  | Split window vertically   |

### Yank

| Shortcut                 | Mode     | Action                                     |
| ------------------------ | -------- | ------------------------------------------ |
| ***Press*** `y`          | `COPY`   | Copy the selected text in system clipboard |
| ***Press*** `Ctrl-a + v` | `NORMAL` | Start selection inside copy mode           |

## Vim

### Append

| Shortcut                 | Mode     | Action                     |
| ------------------------ | -------- | -------------------------- |
| ***Hold*** `Shift + Tab` | `INSERT` | Append text at end of line |

### Completion

| Shortcut          | Mode     | Action                 |
| ----------------- | -------- | ---------------------- |
| ***Press*** `Tab` | `INSERT` | Select completion item |

### Duplicate

| Shortcut             | Mode     | Action         |
| -------------------- | -------- | -------------- |
| ***Press*** `Ctrl-d` | `NORMAL` | Duplicate line |

### Git

| Shortcut                 | Mode     | Action                         |
| ------------------------ | -------- | ------------------------------ |
| ***Press*** `SPACE + st` | `NORMAL` | Run `git status`               |
| ***Press*** `SPACE + gr` | `NORMAL` | Run `git log --oneline --grah` |
| ***Press*** `SPACE + br` | `NORMAL` | Run `git branch`               |
| ***Press*** `SPACE + df` | `NORMAL` | Run `git diff`                 |

### Goto

| Shortcut        | Mode     | Action                      |
| --------------- | -------- | --------------------------- |
| ***Type*** `gd` | `NORMAL` | Jump to **definition**      |
| ***Type*** `gy` | `NORMAL` | Jump to **type definition** |
| ***Type*** `gi` | `NORMAL` | Jump to **implementation**  |
| ***Type*** `gr` | `NORMAL` | Jump to **references**      |

### Goyo

| Shortcut             | Mode     | Action                       |
| -------------------- | -------- | ---------------------------- |
| ***Press*** `Ctrl-g` | `NORMAL` | Toggle distraction-free mode |

### Mouse

| Shortcut                | Mode     | Action |
| ----------------------- | -------- | ------ |
| ***Press*** `SPACE + m` | `NORMAL` | Toggle |

### Navigation

| Shortcut                | Mode     | Action                               |
| ----------------------- | -------- | ------------------------------------ |
| ***Press*** `Ctrl-n`    | `NORMAL` | Search Git-tracked files using Fuzzy |
| ***Press*** `Ctrl-p`    | `NORMAL` | Switch between open buffers          |
| ***Press*** `SPACE + n` | `NORMAL` | Open file explorer                   |

### Reload

| Shortcut                | Mode     | Action                         |
| ----------------------- | -------- | ------------------------------ |
| ***Press*** `SPACE + r` | `NORMAL` | Apply settings from `~/.vimrc` |

### Resize

| Shortcut                    | Mode     | Action                            |
| --------------------------- | -------- | --------------------------------- |
| ***Press*** `SPACE + Left`  | `NORMAL` | Decrease **vertical** size by 5   |
| ***Press*** `SPACE + Right` | `NORMAL` | Increase **vertical** size by 5   |
| ***Press*** `SPACE + Up`    | `NORMAL` | Increase **horizontal** size by 5 |
| ***Press*** `SPACE + Down`  | `NORMAL` | Decrease **horizontal** size by 5 |

### Search

| Shortcut                           | Mode     | Action                         |
| ---------------------------------- | -------- | ------------------------------ |
| ***Press*** `Esc + f` *or* `Alt-f` | `NORMAL` | Search lines in current buffer |

### Surround

| Shortcut                    | Mode     | Action                                           |
| --------------------------- | -------- | ------------------------------------------------ |
| ***Press*** `SPACE + (`     | `NORMAL` | Wrap the current word in **parentheses**         |
| ***Press*** `SPACE + s + (` | `NORMAL` | Surround the whole line with **parentheses**     |
| ***Press*** `SPACE + {`     | `NORMAL` | Wrap the current word in **curly braces**        |
| ***Press*** `SPACE + s + {` | `NORMAL` | Surround the whole line with **curly braces**    |
| ***Press*** `SPACE + [`     | `NORMAL` | Wrap the current word in **square brackets**     |
| ***Press*** `SPACE + s + {` | `NORMAL` | Surround the whole line with **square brackets** |
| ***Press*** `SPACE + "`     | `NORMAL` | Wrap the current word in **double quotes**       |
| ***Press*** `SPACE + s + "` | `NORMAL` | Surround the whole line with **double quotes**   |
| ***Press*** `SPACE + '`     | `NORMAL` | Wrap the current word in **single quotes**       |
| ***Press*** `SPACE + s + '` | `NORMAL` | Surround the whole line with **single quotes**   |

### Tables

| Shortcut                           | Mode     | Action            |
| ---------------------------------- | -------- | ----------------- |
| ***Press*** `Esc + t` *or* `Alt-t` | `NORMAL` | Toggle table mode |

## Plugins

### vim-markdown-toc

| Command      | Action                                |
| ------------ | ------------------------------------- |
| `:GenTocGFM` | Generate toc in [GFM][gfm] link style |
| `:UpdateToc` | Update toc manually                   |

> :bulb: Note, running `:UpdateToc` only works when `g:vmt_auto_update_on_save` is turned off.

### vim-surround

| Shortcut           | Mode     | Action                                     |
| ------------------ | -------- | ------------------------------------------ |
| ***Type*** `ysiw"` | `NORMAL` | Wrap the current word in double quotes     |
| ***Type*** `ysiw(` | `NORMAL` | Wrap the current word in parentheses       |
| ***Type*** `ysiw'` | `NORMAL` | Wrap the current word in single quotes     |
| ***Type*** `yssb`  | `NORMAL` | Surround the whole line with parentheses   |
| ***Type*** `yssB`  | `NORMAL` | Surround  the whole line with curly braces |

### vimtex

| Shortcut                 | Mode     | Action                                     |
| ------------------------ | -------- | ------------------------------------------ |
| ***Press*** `SPACE + ll` | `NORMAL` | Compile the LaTeX document using `latexmk` |
| ***Press*** `SPACE + lv` | `NORMAL` | Open the compiled PDF                      |
| ***Press*** `SPACE + lc` | `NORMAL` | Remove auxiliary files                     |
| ***Press*** `SPACE + le` | `NORMAL` | See errors                                 |

<!-- Links -->

[gfm]: https://github.github.com/gfm/
