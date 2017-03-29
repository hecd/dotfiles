This repository should be cloned into the directory ~/dotfiles.

setup.sh without any arguments installs and configures a base system for everyday use; sane config values, nice-to-have tools, shells and alike. Typically installed on all environments (including servers).

setup.sh dev sets up above and extends it with development tools. Typically installed on development machines. Takes a few moments to run since it downloads quite some data for autocompletion.

Private information and scripts should be placed in ~/.extra which also contains a setup.sh responsible for setting up the ~/.extra directory.

=====
Internal files:
- ".devmode" is created when "setup.sh dev" is run. By checking for this files existance, scripts and config files can alter behaviour accordingly. Example: list of vundle plugins varies since some vundle plugins are purely development related.
