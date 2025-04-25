<h1 align="center">LaTeX Development Environment for Resume Creation</h1>

# 1. Overview

This directory contains configuration files for setting up a Docker-based LaTeX development container that works seamlessly with Cursor AI. The container provides a complete LaTeX environment with all necessary packages for resume creation without requiring a local LaTeX installation.

## 1.1. Purpose

The dev container configuration enables:
- A consistent LaTeX environment across different operating systems
- Integration with Cursor AI for enhanced document creation
- Automatic compilation and preview of LaTeX documents
- Pre-configured extensions for improved productivity

## 1.2. Container Components

The environment consists of:
- Docker container configuration
- VS Code/Cursor settings
- LaTeX-specific extensions
- Build configuration

# 2. Container Image

We're using the `texlive/texlive:latest` Docker image, which includes:

| Feature | Description |
|---------|-------------|
| **Full TeXLive** | Complete distribution with most LaTeX packages |
| **Ubuntu-Based** | Built on Ubuntu for better compatibility with Cursor AI |
| **LaTeX Tools** | All necessary tools like latexmk, biber, etc. |
| **Multilingual Support** | Support for documents in various languages |
| **Font Support** | Access to a wide range of fonts |

## 2.1. Image Selection Rationale

This image was chosen for:
- Compatibility with Cursor AI's development environment
- Complete LaTeX package availability for resume creation
- Regular maintenance and updates
- Optimized performance for development containers

## 2.2. Alternative Images

If you need a different LaTeX environment or are experiencing issues with this image, you can modify the `image` field in both `devcontainer.json` and `docker-compose.yml`. Here are some alternatives:

- `texlive/texlive:latest` - Our current choice, full TeXLive distribution
- `blang/latex:ctanfull` - CTAN TexLive Scheme-full with all packages
- `blang/latex:ubuntu` - Ubuntu TexLive distribution (smaller, has most common packages)
- `nathanhess/latex:latest` - Complete TeX Live distribution with all packages
- `pandoc/latex` - Minimal LaTeX installation for simple documents
- `sharelatex/sharelatex` - Overleaf/ShareLaTeX environment (alternative option)

# 3. Included VS Code Extensions

The container comes pre-configured with productivity-enhancing extensions:

| Extension | Purpose |
|-----------|---------|
| **LaTeX Workshop** | Core LaTeX functionality, compilation, and preview |
| **LaTeX Utilities** | Enhanced editing features |
| **LTeX** | Grammar checking for LaTeX documents |
| **Code Spell Checker** | Spelling verification |
| **GitHub Copilot** | AI assistance for LaTeX coding |
| **GitHub Copilot Chat** | Interactive AI help for LaTeX problems |

# 4. Getting Started

## 4.1. Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running
- [Cursor](https://cursor.sh/) IDE installed
- [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension installed in Cursor

## 4.2. Opening the Container

1. Open this project in Cursor IDE
2. When prompted, click "Reopen in Container" or use the command palette:
   - Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac)
   - Type `Remote-Containers: Reopen in Container` and select it
3. The first time you open the container, it may take several minutes to download the image
4. Once loaded, you're ready to edit LaTeX documents

# 5. Working with LaTeX

## 5.1. Basic Workflow

1. Open or create `.tex` files in the editor
2. Save the file to automatically compile it
3. View the PDF in the built-in viewer
4. Use Cursor's AI features for assistance

## 5.2. File Organization

- Output files are stored in the `build` directory
- Temporary LaTeX files are automatically cleaned up after builds
- Font files can be found in the `/fonts` directory of the main repository

# 6. Troubleshooting

- **Container fails to start**: Ensure Docker is running
- **Compilation errors**: Check the LaTeX Workshop output panel
- **Missing packages**: The image includes most packages, but additional ones can be installed with `tlmgr install [package-name]`
- **PDF preview issues**: Try restarting the LaTeX Workshop extension

# 7. Additional Resources

- [LaTeX Workshop Documentation](https://github.com/James-Yu/LaTeX-Workshop/wiki)
- [TeX Live Documentation](https://www.tug.org/texlive/doc.html)
- See the main project README for LaTeX learning resources and resume creation guidance 