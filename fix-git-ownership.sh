#!/bin/bash

# Fix Git issues in Docker container
# 
# When to use: If you see "dubious ownership" or "cannot run ssh" errors
# How to use: Run ./fix-git-ownership.sh in the terminal
# What it does: Fixes Git permission and SSH connection issues
#

# Fix ownership issue: Tell Git this directory is safe to use
git config --global --add safe.directory /workspaces/LaTeX-dev-copilot

# Switch remote from SSH to HTTPS: Use HTTPS instead of SSH for Git operations
git remote set-url origin https://github.com/0-mostafa-rezaee-0/LaTeX-dev-copilot.git

