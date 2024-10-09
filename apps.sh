# Check if Homebrew is installed, install if not
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Confirmed Homebrew is installed"
fi

echo "Starting brew app install..."

brew_casks=(
  1password
  alfred
  chatgpt 
  cursor
  dash
  dbeaver-community
  fantastical
  firefox
  flux
  iterm2
  logi-options+ # require reboot
  loom
  notion
  postman
  spotify
  superhuman
  visual-studio-code
  zoom
  # Add more casks as needed
)

# Casks you don't want to install at client
client_denylist=(
  1password # they already use this
  chatgpt 
  cursor # not allowed
  fantastical # not allowed
)

# Subtract client_denylist from brew_casks
filtered_brew_casks=()
for cask in "${brew_casks[@]}"; do
  if [[ ! " ${client_denylist[@]} " =~ " ${cask} " ]]; then
    filtered_brew_casks+=("$cask")
  fi
done

# Loop through the filtered list
for cask in "${filtered_brew_casks[@]}"; do
  if brew list --cask "$cask" &>/dev/null; then
    echo "$cask is already installed"
  else
    brew install --cask "$cask"
  fi
done