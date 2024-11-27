echo "Starting brew devtools install..."

brew_devtools=(
  node # needed first

  asdf
  gh
  git-lfs
  lazygit
  npm
  pnpm
  yarn
)

# Get the list of installed casks once
installed_tools=$(brew list)

for tool in "${brew_devtools[@]}"; do
  if echo "$installed_tools" | grep -q "^$tool$"; then
    echo "$tool is already installed"
  else
    echo "Installing $tool..."
    brew install "$tool"
  fi
done

# ASDF post-install
#echo "Adding asdf to ~/.zshrc and reloading the terminal..."
#echo '. /opt/homebrew/opt/asdf/libexec/asdf.sh' >> ~/.zshrc
#source ~/.zshrc
#echo "asdf post-install completed"

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"