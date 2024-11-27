manifests=(
  qwen2.5-coder
  qwen2.5-chat
)

for manifest in "${manifests[@]}"; do
  if ! ollama list | grep -q "$manifest"; then
    echo "$manifest not found, pulling now..."
    read -p "Press 'y' to continue with pull for $manifest: " confirm
    if [[ $confirm == "y" ]]; then
      ollama pull "$manifest"
    else
      echo "Pull aborted for $manifest."
      exit 1
    fi
  else
    echo "$manifest already pulled"
  fi
done
