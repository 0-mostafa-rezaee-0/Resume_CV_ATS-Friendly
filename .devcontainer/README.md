<h1 align="center">Overleaf-like LaTeX Development Environment</h1>

## 1. Overview

This directory contains configuration files for setting up a LaTeX development container with VS Code that closely resembles the Overleaf environment. The container provides a complete LaTeX environment with all packages that would be available on Overleaf, without having to install LaTeX on your local machine.

## 2. Container Image

We're using the `sharelatex/sharelatex` Docker image, which includes:
- Full TeXLive distribution with all packages (like Overleaf)
- The same underlying technology that powers Overleaf
- All auxiliary tools like latexmk, biber, etc.
- Support for all document classes and packages

## 3. Alternative Images

If you need a different LaTeX environment or are experiencing issues with this image, you can modify the `image` field in both `devcontainer.json` and `docker-compose.yml`. Here are some alternatives:

- `sharelatex/sharelatex` - The full Overleaf/ShareLaTeX environment (current setting)
- `blang/latex:ctanfull` - CTAN TexLive Scheme-full with all packages
- `blang/latex:ubuntu` - Ubuntu TexLive distribution (smaller, but has most commonly used packages)
- `nathanhess/latex:latest` - Complete TeX Live distribution with all packages
- `pandoc/latex` - Minimal LaTeX installation with pandoc for simple documents

## 4. VS Code Extensions

The container comes pre-configured with:
- LaTeX Workshop for compiling and previewing
- LaTeX Utilities for enhanced editing
- LTeX for grammar checking
- Code Spell Checker for spelling
- GitHub Copilot for AI assistance

## 5. Usage

1. Open this project in VS Code
2. When prompted, click "Reopen in Container" or use the command palette:
   - Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac)
   - Type `Remote-Containers: Reopen in Container` and select it
3. The first time you open the container, it may take some time to download the image (it's quite large)
4. Edit your `.tex` files in the editor
5. Save to trigger automatic compilation
6. View the PDF in the built-in viewer

## 6. Overleaf Features

The ShareLaTeX container provides similar capabilities to Overleaf:
- Full TeXLive distribution with all packages
- Support for all LaTeX document classes
- BibTeX and bibliography support
- All standard fonts and language support
- Compatible with complex documents including TikZ, pgfplots, etc.

Note: This VS Code configuration doesn't include the collaborative web interface that Overleaf has, but it provides the same LaTeX compilation environment with the advantage of working offline and using VS Code's powerful editor. 