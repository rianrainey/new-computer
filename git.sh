#!/bin/bash

# Path to the gitconfig file
GITCONFIG_FILE="$HOME/.gitconfig"

# User name and email to set
USER_NAME="Rian Rainey"
USER_EMAIL="rianrainey@gmail.com"

# Check if the .gitconfig file exists
if [ ! -f "$GITCONFIG_FILE" ]; then
  # Create the .gitconfig file with the specified user name and email
  cat <<EOL > "$GITCONFIG_FILE"
[user]
    name = $USER_NAME
    email = $USER_EMAIL
EOL

  echo "Git configuration file created at $GITCONFIG_FILE with:"
  echo "Name: $USER_NAME"
  echo "Email: $USER_EMAIL"
else
  echo "File $GITCONFIG_FILE already exists. No changes made."
fi

# Set the global Git configuration values
git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"

echo "Global Git configuration set with:"
echo "Name: $USER_NAME"
echo "Email: $USER_EMAIL"
