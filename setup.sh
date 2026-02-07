
if [[ ! -d ~/Documents/projects/ ]]; then
  mkdir ~/Documents/projects/
fi

if [[ ! -d ~/Documents/notes/ ]]; then
  mkdir ~/Documents/notes/
fi

if [[ ! -d ~/Documents/notes/todos/ ]]; then
  mkdir ~/Documents/notes/todos
fi

if [[ ! -d ~/Documents/repos/ ]]; then
  mkdir ~/Documents/repos/
fi

./install-plugins.sh

p10k configure | zsh

