# Description
This repository should be cloned into the directory ~/data/dotfiles.
This project has two targets:
- base; typically installed on all machines (including servers)
- dev; typically installed on development machines only.

Private information and scripts should be placed in ~/data/extra which contains the file "setup.sh" where machine specific configuration can be executed.

# Usage
git clone https://github.com/hecd/dotfiles.git

```setup.sh ```
configures a base system for everyday use; sane config values, nice-to-have tools, shells and alike.

```setup.sh dev```
extends base system with development tools. Takes a few moments to run since it downloads some data (autocompletion and whatnot).

## Gotchas
Tmux must start a session before 'continuum' plugin restores previous sessions. Run following command if previous sessions are not restored:
<br/>
``` tmux  ```

# Files created by this project:
- ".devmode"
  is created when "setup.sh dev" is run.
  <br/>By checking for this files existance, scripts and config files can alter behaviour accordingly. 
  <br/>Example: list of vundle plugins varies since some vundle plugins are purely development related.

# Project structure:
- Files should be symlinked from home directory where symlink name is typical dotfile name, such as ~/.ssh
- File names in this project should NOT be prefixed with a dot. This makes it easier to determine whether file is config content or symlink.
  <br/>Exception: .gitignore in project root since this config applies to the repository itself.
