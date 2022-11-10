# script for installing those dot files
#!/bin/bash
relative_src_path=$(dirname "${BASH_SOURCE[0]}")
cd $relative_src_path
dots_path="$(pwd)/dots"
echo "Dot files in $dots_path installed"
for file in $(ls $dots_path); do
    ln -sf  "$dots_path/$file" "$HOME/.$file" 
done
