#!/bin/bash

# Step 1: Install Quicksilver
brew install --cask quicksilver

# Step 2: Create the script directory if it doesn't exist
script_dir="$HOME/.vim/venkatway"
mkdir -p "$script_dir"

# Step 3: Create the script file
cat <<EOF > "$script_dir/script.sh"
#!/bin/bash

file_path="\${1}"
j_directory_path="\$(dirname "\$file_path")"
j_file="\$(basename "\$file_path" .java)"

# Compile 
output=\$(javac -cp ".:\${j_directory_path}/*" \${1} 2>&1) 

# Run if compiled
if [ \$? -eq 0 ]; then
  output=\$(java -cp ".:\${j_directory_path}/" \${j_file} 2>&1)
fi

escaped_output=\$(printf "%s" "\$output" | sed 's/"/\\"/g')
osascript -e "tell application \"Quicksilver\" to show large type \"\$escaped_output\""
EOF

# Step 4: Map the command in Vim
echo 'noremap <f5> :silent !sh ~/.vim/venkatway/script.sh %:p &<CR>:redraw!<CR>' >> ~/.vimrc

# Step 5: Display completion message
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo -e "\n\tSetup completed. Your ${YELLOW}Vim${NC} is ready to run & view output of java program in a ${GREEN}Dr.Venkat Subramaniam${NC} style 😎."
