# Pen-GUI-n

I like to use Xournal++, but I wish there was a way to customize hotkeys for pen(s), eraser(s), and higlighter(s). This plugin adds that functionality. It is also my first (of potentially many) Lua projects.
<br>

# Installation

```bash
cd ~/.config/xournalpp/plugins/
git clone "https://github.com/Mr-FuzzyPenguin/Pen-GUI-n.git"
```

Simple as that.
<br>

# WIP (ordered in order of importance):

- [ ] Read a config file (coming in 1.5+)
- [ ] Have a GUI to edit custom keybinds (coming in 2.0+)
  
  # Changelog:
  
  #### 1.0.0
  
  Added a bunch of accelerators for the (P)en tool, (E)raser, highlighter (V), (R)ectangular and (S)urface/squiggly selection, te(X), and (T)ext tools.

# Usage

Edit the config file:  

- Windows: ```%LOCALAPPDATA%/xournalpp/pen_gui_n_config.ini```  
- Linux: ```~/.config/xournalpp/pen_gui_n_config.ini```  

See [GTK4 reference](https://docs.gtk.org/gtk4/func.accelerator_parse.html) for the format details. Here there's an example:

```ini
ACTION_TOOL_PEN=p
ACTION_TOOL_ERASER=e
ACTION_TOOL_HIGHLIGHTER=h
ACTION_TOOL_TEXT=t
ACTION_TOOL_IMAGE=i
ACTION_TOOL_SELECT_RECT=r
ACTION_TOOL_SELECT_REGION=<Ctrl>r
ACTION_TOOL_SELECT_MULTILAYER_RECT=<Shift>r
ACTION_TOOL_SELECT_MULTILAYER_REGION=<Ctrl><Shift>r
ACTION_TOOL_SELECT_OBJECT=
ACTION_TOOL_PLAY_OBJECT=
ACTION_TOOL_SELECT_PDF_TEXT_LINEAR=
ACTION_TOOL_SELECT_PDF_TEXT_RECT=
ACTION_TOOL_VERTICAL_SPACE=
ACTION_TOOL_HAND=
ACTION_TOOL_FLOATING_TOOLBOX=
ACTION_TOOL_LASER_POINTER_PEN=
ACTION_TOOL_LASER_POINTER_HIGHLIGHTER=
ACTION_TEX=l
```
