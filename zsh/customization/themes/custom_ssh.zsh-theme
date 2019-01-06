SSH_SERVER=`echo $SSH_CONNECTION | awk '{print $3":"$4}'`
PROMPT="%{$fg_bold[cyan]%}%T%{$fg_bold[green]%} %{$fg_bold[white]%}%n%{$fg[magenta]%}@%{$fg_bold[white]%}%m %{$fg_bold[red]REMOTE [$SSH_SERVER] %{$fg_bold[green]%}%d
%{$fg_bold[yellow]%}$ %{$reset_color%}"
