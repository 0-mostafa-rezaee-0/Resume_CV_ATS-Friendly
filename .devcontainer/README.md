<h1 align="center">LaTeX Development Environment Setup Guide</h1>

# 1. Overview

This directory contains the configuration for the LaTeX development container used in this project. The setup includes both LaTeX development tools and Docker container management.

# 2. Prerequisites

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Install [Cursor](https://cursor.sh/) IDE or Visual Studio Code
3. Install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension

# 3. LaTeX Environment Setup

## 3.1. LaTeX Workshop Extension

The container configuration is set to automatically install certain extensions, including LaTeX Workshop. However, in some cases, the automatic installation may fail.

### 3.1.1. If LaTeX Workshop is not installed automatically:

1. Open the Extensions view in Cursor or VS Code (press `Ctrl+Shift+X` or `Cmd+Shift+X`)
2. Search for "LaTeX Workshop"
3. Click "Install" on the extension by James Yu

After installation, you may need to reload the window (`Ctrl+Shift+P` or `Cmd+Shift+P` → "Developer: Reload Window").

## 3.2. Using the LaTeX Environment

Once the container is running and LaTeX Workshop is installed:

1. Edit `.tex` files directly in the editor
2. Save to trigger automatic compilation (configured in LaTeX Workshop)
3. View the compiled PDF in the built-in tab viewer
4. Use Cursor AI (`Ctrl+K` or `Cmd+K`) for LaTeX assistance

## 3.3. Troubleshooting LaTeX

If you encounter issues with PDF compilation:

1. Check that LaTeX Workshop is properly installed
2. Try manual compilation using the LaTeX Workshop sidebar (click the build icon)
3. Check for syntax errors in your .tex files
4. Ensure the build directory exists (`mkdir -p build` in terminal if needed)

# 4. Docker Compose Configuration

## 4.1. Understanding the Dual Docker Compose Setup

This project uses two docker-compose.yml files to provide flexibility in how you work with the LaTeX environment:

### 4.1.1. Dev Container Configuration (.devcontainer/docker-compose.yml)
- Automatically detected when you open the project in VS Code/Cursor
- Used when you click "Reopen in Container" or run the command from the Command Palette
- Integrates with VS Code's development container workflow
- Includes specific volume mappings for VS Code extensions

### 4.1.2. Root Configuration (docker-compose.yml)
- Designed for direct use with docker-compose commands
- Supports convenient aliases like `dcu` and `dcd`
- Follows the convention of keeping configuration files in the root directory
- Contains essentially the same configuration but adapts paths for root-level usage

## 4.2. When to Use Each File

| Scenario | Which File to Use |
|----------|-------------------|
| Opening the project in VS Code/Cursor with Dev Containers | .devcontainer/docker-compose.yml (automatic) |
| Starting the container from command line | Root docker-compose.yml |
| CI/CD pipelines | Root docker-compose.yml |
| Quick manual container management | Root docker-compose.yml |

## 4.3. Command Reference

### 4.3.1. Using the Root docker-compose.yml

Start the container:
```bash
dcu
# or
docker-compose up -d --build
```

Stop the container:
```bash
dcd  
# or
docker-compose down
```

Check container status:
```bash
docker-compose ps
```

### 4.3.2. Using the Dev Container Version

Start the container:
```bash
docker-compose -f .devcontainer/docker-compose.yml up -d --build
```

Stop the container:
```bash
docker-compose -f .devcontainer/docker-compose.yml down
```

## 4.4. Setting Up Aliases

Add these lines to your ~/.bashrc or ~/.zshrc file:
```bash
alias dcu='docker-compose up -d --build'
alias dcd='docker-compose down'
```

Then apply the changes:
```bash
source ~/.bashrc  # or source ~/.zshrc
```

## 4.5. Why Use the --build Flag

The `--build` flag forces Docker to rebuild the container images before starting containers. This is advantageous because it:

- Ensures you're always using the latest image definition
- Incorporates any changes to Dockerfiles or dependencies
- Reduces "it works on my machine" problems by rebuilding consistently
- Prevents issues caused by outdated cached images

This is especially important in development environments where container configurations might change frequently.

## 4.6. Benefits of the Dual Setup

- **Flexibility**: Choose between VS Code's integrated workflow or command-line management
- **Convenience**: Use shorter commands for common operations
- **Compatibility**: Support both Dev Containers users and traditional Docker users
- **Standardization**: Follow conventions for both Dev Containers and Docker Compose
- **Isolation**: Keep VS Code-specific configuration separate from general Docker setup

This approach is common in projects that need to support both automated development environments and manual container management workflows. 