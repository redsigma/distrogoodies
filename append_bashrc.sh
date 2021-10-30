#! /bin/bash

bashrc_file="$HOME/.bashrc"
echo '
if [ -d $HOME/.config/env_sys ]; then
  for f in $HOME/.config/env_sys/*.env; do
    . $f
  done
fi
' >> $bashrc_file

echo "Copied config to $bashrc_file. Don't forget to source"
