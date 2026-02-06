#/usr/bin/env zsh
HOME=~
TODOS="$HOME/Documents/notes/todos/"
DATE="$(date -I)"
TODO_FILE="$(echo $TODOS)$(echo $DATE).md"

if [[ ! -f "$TODO_FILE" ]]; then
  touch $TODO_FILE
  echo -e "# $DATE:\n\n- [ ] " >> $TODO_FILE
fi

nvim "+normal G$" +startinsert! $TODO_FILE
