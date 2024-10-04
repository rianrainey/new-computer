echo "Starting brew devtools install..."

brew_devtools=(
  asdf
  curl
  git
  git-lfs
  grep
  less
  npm
  pnpm
  vim
  wget
  zsh
)

for tool in "${brew_devtools[@]}"; do
  if brew list "$tool" &>/dev/null; then
    echo "$tool is already installed"
  else
    brew install "$tool"
  fi
done
