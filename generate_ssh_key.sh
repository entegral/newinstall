#!/bin/bash

echo "Generating a new SSH key for GitHub..."

# Prompt for the GitHub email
read -p "Enter your GitHub email: " github_email

# Create the SSH key using the provided email
ssh-keygen -t rsa -b 4096 -C "$github_email" -f ~/.ssh/id_rsa -N ""

# Start the ssh-agent in the background
eval "$(ssh-agent -s)"

# Add SSH key to ssh-agent
ssh-add ~/.ssh/id_rsa

# Display the public key
echo "Copy the following SSH public key and add it to your GitHub account:"
cat ~/.ssh/id_rsa.pub
echo

# Prompt to continue after adding the key to GitHub
read -p "Press [Enter] key once the SSH key has been added to your GitHub account..."

echo "Generating a new SSH key for GitHub complete!"