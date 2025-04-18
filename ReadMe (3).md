# How to Install LaTeX on WSL (Windows 11) Step by Step

## Prerequisites
1. Windows 11 with WSL already installed and set up
2. A terminal/command prompt

## Installation Steps

### Step 1: Update your WSL packages
```bash
sudo apt update && sudo apt upgrade -y
```

### Step 2: Install TeX Live
For a complete LaTeX installation with all packages:
```bash
sudo apt install texlive-full -y
```

Or for a more minimal installation (saves space but has fewer packages):
```bash
sudo apt install texlive-latex-base texlive-latex-recommended texlive-latex-extra -y
```

### Step 3: Install additional useful packages
```bash
sudo apt install latexmk texlive-science texlive-fonts-recommended texlive-publishers -y
```

### Step 4: Verify the installation
Check if LaTeX is properly installed:
```bash
pdflatex --version
```

You should see something like:
```
pdfTeX 3.141592653-X.Y.Z (TeX Live 20XX)
```

### Step 5: Create and test a simple LaTeX document
Create a test file:
```bash
echo '\documentclass{article}
\begin{document}
Hello World!
\end{document}' > test.tex
```

Compile it:
```bash
pdflatex test.tex
```

Check if the PDF was created:
```bash
ls -la test.pdf
```

## Setting up VS Code/Cursor for LaTeX

### Step 1: Install LaTeX Workshop extension
1. Open VS Code/Cursor
2. Go to Extensions (Ctrl+Shift+X)
3. Search for "LaTeX Workshop"
4. Install the extension by James Yu

### Step 2: Configure LaTeX Workshop
Add these settings to your settings.json:
```json
"latex-workshop.latex.tools": [
    {
        "name": "latexmk",
        "command": "latexmk",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "-pdf",
            "%DOC%"
        ]
    }
],
"latex-workshop.latex.recipes": [
    {
        "name": "latexmk",
        "tools": [
            "latexmk"
        ]
    }
]
```

## FAQ

### Do I need to install LaTeX on both Windows 11 and WSL?
No, you only need to install LaTeX in WSL if you plan to compile documents there. If you only work in WSL, then only install it there.

### How can I check if LaTeX is installed properly?
Run these commands to verify:
```bash
which pdflatex
pdflatex --version
```
Then create a simple test document as shown in Step 5 above and make sure it compiles correctly.

### What if I get "pdflatex: command not found"?
This means LaTeX is not properly installed. Try reinstalling with:
```bash
sudo apt install texlive-latex-base
```

### How much disk space does LaTeX require?
- texlive-full: ~5-6 GB
- Minimal installation: ~500 MB to 1 GB

### How do I update LaTeX packages?
```bash
sudo apt update && sudo apt upgrade
```

### Common compilation issues:
If you see errors about missing packages, install them with:
```bash
sudo apt install texlive-latex-extra
```
