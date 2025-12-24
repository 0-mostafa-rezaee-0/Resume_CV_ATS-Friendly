#!/bin/bash

# Fix Git issues in Docker container
#
# When to use: If you see "dubious ownership" or "cannot run ssh" errors
# How to use: Run ./fix-git-ownership.sh in the terminal
# What it does: Fixes Git permission and SSH connection issues
#

# Get the current directory path
CURRENT_DIR=$(pwd)

# Fix ownership issue: Tell Git this directory is safe to use
echo "Adding $CURRENT_DIR to Git safe directories..."
git config --global --add safe.directory "$CURRENT_DIR"

# Get the current remote URL
REMOTE_URL=$(git remote get-url origin 2>/dev/null)

if [ -z "$REMOTE_URL" ]; then
    echo "Warning: No 'origin' remote found. Skipping remote URL update."
    exit 0
fi

# Convert SSH URL to HTTPS if needed
# Pattern: git@github.com:user/repo.git -> https://github.com/user/repo.git
if [[ "$REMOTE_URL" == git@* ]]; then
    HTTPS_URL=$(echo "$REMOTE_URL" | sed 's|git@github.com:|https://github.com/|' | sed 's|\.git$||')
    HTTPS_URL="${HTTPS_URL}.git"
    echo "Converting remote URL from SSH to HTTPS..."
    echo "  From: $REMOTE_URL"
    echo "  To:   $HTTPS_URL"
    git remote set-url origin "$HTTPS_URL"
else
    echo "Remote URL is already using HTTPS or another protocol: $REMOTE_URL"
fi

echo "Git issues fixed successfully!"
