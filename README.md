<h1 align="center">ATS-Friendly Resume Formatting Best Practices</h1>

This repository provides comprehensive resources and practical guidance for creating professional resumes targeted specifically at tech industry positions.

<div style="font-size:1.5em; font-weight:bold; margin-top:20px;">Table of Contents</div>

<details>
  <summary><a href="#1-about-this-repository"><i><b>1. About this Repository</b></i></a></summary>
  <div>
              <a href="#11-who-is-this-tutorial-for">1.1. Who Is This Tutorial For?</a><br>
              <a href="#12-what-will-you-learn">1.2. What Will You Learn?</a><br>
              <a href="#13-prerequisites">1.3. Prerequisites</a><br>
              <a href="#14-repository-structure">1.4. Repository Structure</a><br>
  </div>
</details>
 

<details>
  <summary><a href="#2-latex-on-windows-wsl-and-vs-code"><i><b>2. LaTeX on Windows, WSL, and VS Code</b></i></a></summary>
  <div>
              <a href="#21-latex-on-local-vs-overleaf">2.1. LaTeX on Local vs. Overleaf</a><br>
              <a href="#22-check-if-latex-is-installed">2.2. Check if LaTeX is Installed</a><br>
              <a href="#23-install-latex-on-windows">2.3. Install LaTeX on Windows</a><br>
              <a href="#24-install-latex-on-wsl-ubuntu-debian">2.4. Install LaTeX on WSL (Ubuntu/Debian)</a><br>
              <a href="#25-do-you-need-latex-on-both-windows-and-wsl">2.5. Do You Need LaTeX on Both Windows and WSL?</a><br>
              <a href="#26-best-latex-extension-for-vs-code">2.6. Best LaTeX Extension for VS Code</a><br>
  </div>
</details>
 

<details>
  <summary><a href="#3-applicant-tracking-systems-ats"><i><b>3. Applicant Tracking Systems (ATS)</b></i></a></summary>
  <div>
              <a href="#31-what-is-an-ats">3.1. What is an ATS?</a><br>
              <a href="#32-how-ats-systems-process-resumes">3.2. How ATS Systems Process Resumes</a><br>
              <a href="#33-key-strategies-for-ats-optimization">3.3. Key Strategies for ATS Optimization</a><br>
  </div>
</details>
 

<div>
      <a href="#4-best-examples"><i><b>4. Best Examples</b></i></a>
</div>
 

# 1. About this Repository

This repository provides comprehensive resources and practical guidance for creating professional resumes targeted specifically at tech industry positions. It combines LaTeX technical knowledge with strategic content optimization to help you craft resumes that stand out to both automated screening systems and human reviewers.

## 1.1. Who Is This Tutorial For?

This tutorial is designed for several groups of users:

- **Job seekers in tech fields**: Software engineers, data scientists, UX/UI designers, product managers, and other technical professionals looking to optimize their resumes
- **Recent graduates or career changers**: Those entering the tech industry who need guidance on creating industry-specific resumes
- **Career coaches and mentors**: Professionals who help others with job search materials
- **LaTeX beginners and experts**: Whether you're new to LaTeX or experienced, you'll find value in adapting professional templates for tech resumes

## 1.2. What Will You Learn?

By following this repository's guidance, you will learn:

- How to set up and use LaTeX for resume creation with VS Code across different operating systems
- Understanding of Applicant Tracking Systems (ATS) and how to optimize your resume for them
- Strategic selection of fonts, layouts, and formatting to appeal to tech employers
- Best practices for structuring content to highlight technical skills and accomplishments
- How to create a resume that balances machine readability with human appeal
- Techniques for customizing resumes for specific job postings without starting from scratch each time
- Version control strategies for maintaining multiple resume versions

## 1.3. Prerequisites

### 1.3.1. For those familiar with LaTeX and resume writing

- You can jump directly to the ATS optimization sections
- Browse the templates directory for inspiration
- Consider contributing your own templates or improvements

### 1.3.2. For those who know basic document formatting but are new to LaTeX

- Follow the LaTeX installation guide for your operating system
- Start with the beginner-friendly templates
- Take time to understand the template structure before making extensive modifications

### 1.3.3. For complete beginners

- Begin with the "Introduction to LaTeX" tutorial
- Follow the step-by-step guides for installation and setup
- Use the provided templates with minimal modifications initially
- Consider reading the recommended resources on resume content before diving into formatting

## 1.4. Repository Structure

```
Folder PATH listing
+---docs                                           <-- Documentation resources
│       README.md                                  <-- Documentation overview
│
+---examples                                       <-- Sample resumes
│       CV_JJalali.pdf                             <-- Example resume PDF
│       README.md                                  <-- Examples overview
│
+---fonts                                          <-- Resume fonts
│       Inter-VariableFont_opsz,wght.ttf           <-- Inter font file
│       Inter-Italic-VariableFont_opsz,wght.ttf    <-- Inter italic font file
│       Montserrat-VariableFont_wght.ttf           <-- Montserrat font file
│       Montserrat-Italic-VariableFont_wght.ttf    <-- Montserrat italic font file
│       Inter.zip                                  <-- Inter font package
│       Inter,Montserrat.zip                       <-- Combined font package
│       README.md                                  <-- Fonts overview
│
+---images                                         <-- Image resources
│       base-rover.jpg                             <-- Example image
│       README.md                                  <-- Images documentation
│
+---LaTex                                          <-- LaTeX resume versions
│   +---Mostafa_Resume-1                           <-- Resume version 1
│   +---Mostafa_Resume-2                           <-- Resume version 2
│   +---Mostafa_Resume-3                           <-- Resume version 3
│   +---Mostafa_Resume-4                           <-- Resume version 4
│   │
│       README.md                                  <-- LaTeX directory overview
│
+---templates                                      <-- Resume templates
│   +---ats_optimized                              <-- ATS-friendly resume template
│   │   +---fonts                                  <-- Template-specific fonts
│   │   │
│   │       ats_optimized_resume.tex               <-- LaTeX source file
│   │       ats_optimized_resume.pdf               <-- PDF preview
│   │       README.md                              <-- Template documentation
│   │
│       .gitignore                                 <-- Git exclusions
│       LICENSE                                    <-- License information
│       README.md                                  <-- Project overview
```

# 2. LaTeX on Windows, WSL, and VS Code

## 2.1. LaTeX on Local vs. Overleaf

This subsection compares different LaTeX environments for resume creation, focusing on local installation methods versus cloud-based alternatives.

### Local LaTeX with Docker

- **Full Capabilities:** Docker-based LaTeX provides **complete functionality** equivalent to traditional installations
- **Environment Control:** Offers **full control** over package installation and configuration
- **Consistency:** Ensures **identical behavior** across different machines and operating systems
- **Integration:** Works seamlessly with **local development tools** like Cursor Copilot
- **Collaboration:** Can be paired with **GitHub workflows** for version control and team collaboration
- **Isolation:** Keeps LaTeX environment **separate from host system**, preventing conflicts
- **Portability:** Easy to replicate environment on different machines without lengthy setup

### Overleaf Platform

- **Accessibility:** **Web-based interface** accessible from any device with internet connection
- **Zero Setup:** Eliminates need for local installation or configuration
- **Built-in Collaboration:** Supports **real-time editing** with multiple users simultaneously
- **User-Friendly:** Designed with **intuitive interface** for both beginners and advanced users
- **Templates:** Provides extensive library of pre-designed templates
- **Limited Offline Use:** Requires internet connection for most functionality

### Best Choice Based on Needs

The optimal solution depends on specific requirements:
- Choose **Docker-based LaTeX** if you value integration with tools like Cursor Copilot, need offline capabilities, or prefer working in your own development environment
- Choose **Overleaf** if you prioritize ease of use, frequent collaboration, or need to access your documents from multiple devices without setup

Both approaches provide the complete LaTeX functionality needed for creating professional, ATS-friendly resumes.

## 2.2. Check if LaTeX is Installed

### 2.2.1. On Windows (PowerShell or CMD)

```bash
pdflatex --version
```

### 2.2.2. On WSL (Ubuntu/Debian)

```bash
pdflatex --version
```

If LaTeX is installed, you'll see version info. Otherwise, you'll get a "command not found" error.

## 2.3. Install LaTeX on Windows

1. Download the installer:[https://www.tug.org/texlive/windows.html](https://www.tug.org/texlive/windows.html)
2. Run `install-tl-windows.exe`.
3. During installation:

   - Accept defaults or customize.
   - Make sure it adds LaTeX to your system `PATH`.
4. After install, restart PowerShell and check:

```bash
pdflatex --version
```

> Recommended for full compatibility with LaTeX Workshop in Windows.

## 2.4. Install LaTeX on WSL (Ubuntu/Debian)

### 2.4.1. Option 1: Using apt (Simpler, but might be outdated)

```bash
sudo apt update
sudo apt install texlive-full -y
```

> This installs an older version (e.g. TeX Live 2022), but works fine in most cases.

### 2.4.2. Option 2: Install Latest TeX Live (Advanced, for latest features)

```bash
# Remove old version (optional)
sudo apt remove texlive*
sudo apt autoremove

# Download and extract latest TeX Live installer
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar -xvzf install-tl-unx.tar.gz
cd install-tl-*

# Launch installer (interactive)
sudo ./install-tl
```

Add TeX Live to your shell config (e.g. `.zshrc` or `.bashrc`):

```bash
export PATH=/usr/local/texlive/2024/bin/x86_64-linux:$PATH
```

Reload shell and confirm:

```bash
source ~/.zshrc   # or source ~/.bashrc
pdflatex --version
```

## 2.5. Do You Need LaTeX on Both Windows and WSL?

| VS Code Environment    | LaTeX Required In |
| ---------------------- | ----------------- |
| Windows (native)       | Windows           |
| WSL (Remote mode)      | WSL               |
| Dev Container (Docker) | Inside container  |

- If you're editing LaTeX files using **Windows VS Code**, you only need LaTeX on Windows.
- If you're editing files using **WSL VS Code**, you need LaTeX installed in WSL.
- If using **Docker**, LaTeX must be installed inside the Docker image.

> Check VS Code's bottom-left corner to see whether you're in WSL, Windows, or a container.

## 2.6. Best LaTeX Extension for VS Code

Use the **[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)** extension:

### 2.6.1. Extension Info:

- **Name:** LaTeX Workshop
- **ID:** `James-Yu.latex-workshop`
- **Marketplace:** [View on VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)

### 2.6.2. Features:

- Live PDF preview with sync (forward/inverse search)
- Auto build on save
- Syntax highlighting and snippet support
- IntelliSense for citations, labels, and refs
- Works with both Windows and WSL backends

# 3. Applicant Tracking Systems (ATS)

## 3.1. What is an ATS?

An **Applicant Tracking System (ATS)** is software that employers use to manage job applications and screen candidates. Key facts:

- **95%+ of Fortune 500 companies** use ATS software
- ATS filters out **75% of resumes** before a human sees them
- Average corporate job posting receives **250+ applications**
- Most resumes are reviewed for only **6-7 seconds** by humans (if they pass ATS)

Think of an ATS as a **digital gatekeeper** that determines if your resume reaches human reviewers.

## 3.2. How ATS Systems Process Resumes

1. **Resume Parsing**: ATS extracts text from your document and categorizes information into predefined fields (name, work history, education, skills).
2. **Keyword Matching**: Compares your resume against job description keywords and qualification requirements.
3. **Ranking**: Assigns scores to candidates based on matching criteria.
4. **Database Storage**: Saves your resume and information in searchable format.
5. **Filtering**: Screens out candidates who don't meet minimum requirements.

## 3.3. Key Strategies for ATS Optimization

| Strategy                            | Implementation                                                             |
| ----------------------------------- | -------------------------------------------------------------------------- |
| **Match the Job Description** | Tailor resume keywords to match each specific job posting                  |
| **Use Standard Sections**     | Include clearly labeled sections for Experience, Skills, Education         |
| **Include Hard Skills**       | List relevant technical skills, certifications, and software proficiencies |
| **Format Simply**             | Use clean, standard fonts and straightforward layouts                      |
| **Keyword Placement**         | Include key terms in work experience (not just skills section)             |

# 4. Best Examples

- [rover-resume](https://github.com/subidit/rover-resume)
- [GitHub Search: Popular LaTeX Resumes](https://github.com/search?q=stars%3A%3E10+forks%3A%3E10+language%3ATeX+resume&type=repositories&ref=advsearch&s=stars&o=desc)

# LaTeX Environment for Cursor AI

This project provides a full-featured LaTeX environment that works seamlessly with Cursor AI's assistance features. It uses Docker containers to provide a consistent development experience with all necessary LaTeX packages pre-installed.

## Features

- **Full TeXLive Installation**: Complete LaTeX environment similar to Overleaf
- **Cursor AI Integration**: Works with Cursor's AI assistant for code completion and generation
- **Real-time Compilation**: Documents compile automatically on save
- **PDF Preview**: Built-in PDF viewer
- **Syntax Highlighting and Formatting**: Advanced LaTeX editing features
- **Spell and Grammar Checking**: Integrated spelling and grammar tools

## Getting Started

### Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running
- [Cursor](https://cursor.sh/) IDE installed
- [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension installed in Cursor

### Opening the Project

1. Clone this repository to your local machine
2. Open the folder in Cursor IDE
3. When prompted, click "Reopen in Container" or use the command palette:
   - Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac)
   - Type "Remote-Containers: Reopen in Container" and select it

The first time you open the container, it may take several minutes to download and set up the environment.

### Writing LaTeX

1. Open or create `.tex` files in the editor
2. Save the file to automatically compile it
3. View the PDF in the built-in viewer (opens automatically)
4. Use Cursor's AI features for assistance:
   - `Ctrl+K` or `Cmd+K` for inline AI completions
   - `Ctrl+L` or `Cmd+L` for AI chat with context about your LaTeX code

## Customizing the Environment

- Add additional LaTeX packages in `.devcontainer/devcontainer.json` under `postCreateCommand`
- Modify LaTeX Workshop settings in `.devcontainer/devcontainer.json`
- Change compilation parameters in the LaTeX Workshop configuration

## Troubleshooting

- **Container won't start**: Make sure Docker is running
- **Compilation errors**: Check the LaTeX Workshop output panel for details
- **Missing packages**: Add them using `tlmgr install package-name` in terminal or in postCreateCommand

## Learning Resources

- [LaTeX Documentation](https://www.latex-project.org/help/documentation/)
- [Overleaf LaTeX Learning Resources](https://www.overleaf.com/learn)
- [LaTeX Workshop Documentation](https://github.com/James-Yu/LaTeX-Workshop/wiki)

## How to Use Your New LaTeX Environment with Cursor AI

I've created a complete LaTeX development environment integrated with Cursor's AI features. Here's how to use it:

### Getting Started

1. Make sure you have **Docker Desktop** installed and running on your system
2. Install the **Remote - Containers** extension in Cursor
3. Open the project folder in Cursor
4. When prompted, select "Reopen in Container" (or use Cmd/Ctrl+Shift+P and search for "Reopen in Container")

This will start building and running the Docker container with a full TeXLive installation. It may take several minutes the first time, as it needs to download the Docker image.

### Features of This Setup

- **Complete LaTeX Environment**: The full TeXLive distribution with all packages
- **Auto-Compilation**: Documents compile when you save
- **Built-in PDF Viewer**: View PDFs directly in Cursor
- **LaTeX-Specific Tools**: Formatting, spell checking, and syntax validation
- **Cursor AI Integration**: Use Cmd/Ctrl+K for AI assistance with your LaTeX code

### Working with LaTeX and AI

The real power comes from combining LaTeX with Cursor's AI features:

1. Edit the `example.tex` file to see how the environment works
2. Save the file to trigger automatic compilation
3. Use Cursor's AI to help with LaTeX:
   - Ask for help with complex formulas: "Show me how to create a matrix in LaTeX"
   - Get help with document structure: "Help me create a bibliography section"
   - Debug errors: "Why is my equation not compiling?"

### Benefits Over Overleaf

This setup gives you several advantages over Overleaf:

1. **Local Development**: Work offline with all your files
2. **Powerful AI Integration**: Get AI assistance that understands your entire codebase
3. **Customization**: Easily add packages or modify the build process
4. **Version Control**: Seamlessly use Git for collaboration
5. **Performance**: Better performance for large documents than web-based editors

All this while still having the same complete LaTeX environment you'd get with Overleaf, plus AI assistance to make writing LaTeX significantly easier.

To get started, just open your example.tex file and begin editing!
