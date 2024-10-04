echo "Starting brew app install..."

brew_casks=(
  1password
  alfred
  cursor
  dash
  dbeaver-community
  fantastical
  firefox
  flux
  iterm2
  loom
  notion
  postman
  spotify
  superhuman
  visual-studio-code
  zoom
  # Add more casks as needed
)

for cask in "${brew_casks[@]}"; do
  if brew list --cask "$cask" &>/dev/null; then
    echo "$cask is already installed"
  else
    brew install --cask "$cask"
  fi
done
