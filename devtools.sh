echo "Starting brew devtools install..."

brew_devtools=(
  asdf
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

# Get the list of installed casks once
installed_tools=$(brew list)

for tool in "${brew_devtools[@]}"; do
  if echo "$installed_tools" | grep -q "^$tool$"; then
    echo "$tool is already installed"
  else
    brew install "$tool"
  fi
done

# ASDF post-install
#echo "Adding asdf to ~/.zshrc and reloading the terminal..."
#echo '. /opt/homebrew/opt/asdf/libexec/asdf.sh' >> ~/.zshrc
#source ~/.zshrc
#echo "asdf post-install completed"