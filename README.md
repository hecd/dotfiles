# Description
This repository should be cloned into directory targetted by environment variable DOTFILES_DIR. Typically ~/data/dotfiles.
Private information and scripts should be placed in directory targetted by environment variable EXTRA_DIR. Typically ~/data/extra.

# Usage
git clone https://github.com/hecd/dotfiles.git

```setup.sh ```
configures a base system for everyday use; sane config values, nice-to-have tools, shells and alike.

# Project structure:
- Files should be symlinked from home directory where symlink name is typical dotfile name, such as ~/.ssh
- File names in this project should NOT be prefixed with a dot. This makes it easier to determine whether file is config content or symlink.
  <br/>Exception: .gitignore in project root since this config applies to the repository itself.
