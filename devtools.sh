echo "Starting brew devtools install..."

brew_devtools=(
  node # needed first

  asdf # version manager
  als
  cheat # https://github.com/cheat/cheat
  gh
  git-lfs
  lazygit
  neovim
  npm
  jordanbaird-ice
  ollama
  pnpm
  stow
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
    if [ "$tool" = "asdf" ]; then
      echo "Running asdf configuration..."
      ./asdf.sh
    fi
  fi
done

# ASDF post-install
#echo "Adding asdf to ~/.zshrc and reloading the terminal..."
#echo '. /opt/homebrew/opt/asdf/libexec/asdf.sh' >> ~/.zshrc
#source ~/.zshrc
#echo "asdf post-install completed"

# oh-my-zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "oh-my-zsh is already installed."
else
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
