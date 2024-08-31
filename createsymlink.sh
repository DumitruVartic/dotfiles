ln -sf $HOME/dotfiles/Configs/.config/hypr/ $HOME/.config/
ln -sf $HOME/dotfiles/Configs/.config/waybar/ $HOME/.config/
ln -sf $HOME/dotfiles/Configs/.config/fastfetch/ $HOME/.config/
ln -sf $HOME/dotfiles/Configs/.config/nvim/ $HOME/.config/

Scripts="$HOME/dotfiles/Configs/.local/share/bin/" 
Scripts_Target="$HOME/.local/share/bin/"
# Copy all files from the source to the target directory
for file in "$Scripts"/*; do
  if [ -f "$file" ]; then
    # cp "$file" "$Scripts_Target/"
    ln -sf "$file" "$Scripts_Target/"
  else
    echo "Warning: No files found in $SOURCE_DIR"
  fi
done
