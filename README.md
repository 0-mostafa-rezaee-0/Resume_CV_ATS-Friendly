## 🧰 How to Use This Template    
Click the green **"Use this template"** button at the top of the page, then choose **"Create a new repository"**.   
This will create your own copy of this project, which you can modify freely — no need to fork!   

---


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
  <summary><a href="#2-latex-environment-options"><i><b>2. LaTeX Environment Options</b></i></a></summary>
  <div>
              <a href="#21-latex-environment-choices">2.1. LaTeX Environment Choices</a><br>
              <a href="#22-recommended-docker-image">2.2. Recommended Docker Image</a><br>
              <a href="#23-best-latex-extension-for-vs-code">2.3. Best LaTeX Extension for VS Code</a><br>
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

<details>
  <summary><a href="#4-best-examples"><i><b>4. Best Examples</b></i></a></summary>
</details>

<details>
  <summary><a href="#5-resume-font-guide"><i><b>5. Resume Font Guide</b></i></a></summary>
  <div>
              <a href="#51-why-inter--montserrat">5.1. Why Inter + Montserrat?</a><br>
              <a href="#52-avoid-these-for-resumes">5.2. Avoid These for Resumes</a><br>
              <a href="#53-modern-fonts-for-tech--startups">5.3. Modern Fonts for Tech & Startups</a><br>
              <a href="#54-classic--safe-resume-fonts">5.4. Classic & Safe Resume Fonts</a><br>
  </div>
</details>

<details>
  <summary><a href="#6-latex-environment-for-cursor-ai"><i><b>6. LaTeX Environment for Cursor AI</b></i></a></summary>
  <div>
              <a href="#61-features">6.1. Features</a><br>
              <a href="#62-getting-started">6.2. Getting Started</a><br>
              <a href="#63-writing-latex">6.3. Writing LaTeX</a><br>
              <a href="#64-customizing-the-environment">6.4. Customizing the Environment</a><br>
              <a href="#65-troubleshooting">6.5. Troubleshooting</a><br>
              <a href="#66-learning-resources">6.6. Learning Resources</a><br>
              <a href="#67-how-to-use-your-new-latex-environment-with-cursor-ai">6.7. How to Use Your New LaTeX Environment with Cursor AI</a><br>
  </div>
</details>
 
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

# 2. LaTeX Environment Options

## 2.1. LaTeX Environment Choices

Based on our experience, we recommend two primary approaches for working with LaTeX for your resume projects. Local installations of LaTeX on Windows and WSL can be problematic and time-consuming, so we recommend these more reliable options:

### 2.1.1. Docker-Based LaTeX Environment

- **Full Capabilities:** Docker-based LaTeX provides **complete functionality** equivalent to traditional installations
- **Environment Control:** Offers **full control** over package installation and configuration
- **Consistency:** Ensures **identical behavior** across different machines and operating systems
- **Integration:** Works seamlessly with **local development tools** like Cursor Copilot
- **Collaboration:** Can be paired with **GitHub workflows** for version control and team collaboration
- **Isolation:** Keeps LaTeX environment **separate from host system**, preventing conflicts
- **Portability:** Easy to replicate environment on different machines without lengthy setup

**Best For:** Users who need AI assistance with Cursor Copilot, need offline capabilities, or prefer working in their own development environment.

### 2.1.2. Overleaf Platform

- **Accessibility:** **Web-based interface** accessible from any device with internet connection
- **Zero Setup:** Eliminates need for local installation or configuration
- **Built-in Collaboration:** Supports **real-time editing** with multiple users simultaneously
- **User-Friendly:** Designed with **intuitive interface** for both beginners and advanced users
- **Templates:** Provides extensive library of pre-designed templates
- **Limited Offline Use:** Requires internet connection for most functionality

**Best For:** Users who prioritize ease of use, frequent collaboration, or need to access documents from multiple devices without setup.

## 2.2. Recommended Docker Image

Our repository uses the **qdm12/latexdevcontainer** Docker image (`ghcr.io/qdm12/latexdevcontainer:latest-full`), specifically configured for Cursor Copilot integration. This image was chosen for several important reasons:

### 2.2.1. Why We Chose This Image

- **Complete TeXLive Distribution:** Includes the full TeX Live 2023 distribution with all LaTeX packages
- **Optimized for Dev Containers:** Built specifically for VS Code/Cursor dev container workflows
- **Pre-configured LaTeX Workshop:** Comes with settings for the LaTeX Workshop extension
- **Auto-Updates:** Updates all TeX packages on container startup
- **Lightweight Base:** Built on Alpine Linux for faster startup times
- **Regular Maintenance:** Actively maintained with frequent updates

### 2.2.2. How to Use the Docker Image

1. **Prerequisites:**
   - Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
   - Install [Cursor](https://cursor.sh/) IDE
   - Install the [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension

2. **Getting Started:**
   - Clone this repository
   - Open it in Cursor
   - When prompted, select "Reopen in Container" (or use the Command Palette: `Ctrl+Shift+P` or `Cmd+Shift+P` → `Remote-Containers: Reopen in Container`)
   - The container will build automatically with all LaTeX packages installed

3. **Using the Environment:**
   - Edit .tex files directly in Cursor
   - Save to trigger automatic compilation (configured in LaTeX Workshop)
   - View the PDF in the built-in tab viewer
   - Use Cursor AI (`Ctrl+K` or `Cmd+K`) for LaTeX assistance

This approach removes all the headaches of local LaTeX installation while providing a full-featured environment that works perfectly with AI assistance.

### 2.2.3. Technical Details

Our container setup includes:
- **LaTeX Workshop** extension for compilation and preview
- **LaTeX Utilities** for enhanced LaTeX editing
- **LTeX** for grammar checking in LaTeX documents
- **Code Spell Checker** for spell checking
- **Copilot** integration for AI assistance

The container is configured to:
- Automatically build LaTeX documents on save
- Clean auxiliary files after successful builds
- Use SyncTeX for synchronized PDF viewing
- Update all TeX packages on container startup

You can see the full configuration in the `.devcontainer/devcontainer.json` file.

### 2.2.4. Image Size and Performance Considerations

The Docker image (`ghcr.io/qdm12/latexdevcontainer:latest-full`) is large due to the comprehensive nature of the full TeX Live distribution:

- **Download size:** Approximately 4-5 GB
- **Installed size:** Approximately 7-9 GB on disk

This is normal for a complete LaTeX environment that includes thousands of packages, fonts, and documentation. Some key points to understand:

- The image is only downloaded once and cached locally by Docker
- Subsequent project openings reuse the cached image without re-downloading
- The container is created when you open the project and removed when you close your editor
- Docker only downloads updates when the base image changes

If you're concerned about disk space, smaller alternatives like `ghcr.io/qdm12/latexdevcontainer:latest-basic` (around 2-3 GB) are available, but they include fewer LaTeX packages and may not support all advanced resume templates.

## 2.3. Best LaTeX Extension for VS Code

Use the **[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)** extension:

### 2.3.1. Extension Info:

- **Name:** LaTeX Workshop
- **ID:** `James-Yu.latex-workshop`
- **Marketplace:** [View on VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)

### 2.3.2. Features:

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

# 5. Resume Font Guide

## 5.1. Why Inter + Montserrat?
- **Modern look** ideal for startups and tech companies
- **Highly readable** on screen and in print
- **ATS-compliant** (friendly for resume scanners)
- **Free and open-source** via Google Fonts:
  - [Inter](https://fonts.google.com/specimen/Inter)
  - [Montserrat](https://fonts.google.com/specimen/Montserrat)

---

## 5.2. Avoid These for Resumes
- **Times New Roman** – Overused and outdated
- **Comic Sans / Papyrus** – Not professional
- **Fancy display fonts** – Bad for ATS, hard to read

---

## 5.3. Modern Fonts for Tech & Startups
Perfect for innovation-driven, digital-first environments.

| Font              | Style       | Why It's Great                                  |
|-------------------|-------------|-------------------------------------------------|
| **Roboto**        | Sans-serif  | Clean, modern, used in Android & Google tools   |
| **Lato**          | Sans-serif  | Friendly, sleek, and balanced                   |
| **Inter**         | Sans-serif  | Optimized for digital UI, open and readable     |
| **Montserrat**    | Sans-serif  | Bold, geometric, stylish for headers            |
| **Source Sans Pro**| Sans-serif | Adobe-designed, clean and modern                |

**Tips:**
- Use **Inter** or **Roboto** for body, **Montserrat** or **Lato** for headers  
- Line spacing: **1.25–1.5**  
- Margins: **0.5–0.75 inch**  
- Keep layout clean and ATS-friendly

---

## 5.4. Classic & Safe Resume Fonts
Great for general, traditional, or academic roles.

| Font         | Style       | Why Use It                          |
|--------------|-------------|-------------------------------------|
| **Calibri**  | Sans-serif  | Microsoft default, modern, ATS-safe |
| **Helvetica**| Sans-serif  | Clean, professional, widely respected |
| **Georgia**  | Serif       | Screen-friendly, elegant classic    |
| **Cambria**  | Serif       | Print-optimized, balanced            |
| **Garamond** | Serif       | Elegant and traditional (great for CVs) |

**Tips:**
- Font size: **10–12 pt** body, **12–14 pt** headers  
- Stick to one font for consistency  
- Avoid outdated or playful fonts like Comic Sans or Times New Roman

# 6. LaTeX Environment for Cursor AI

This project provides a full-featured LaTeX environment that works seamlessly with Cursor AI's assistance features. It uses Docker containers to provide a consistent development experience with all necessary LaTeX packages pre-installed.

## 6.1. Features

- **Full TeXLive Installation**: Complete LaTeX environment similar to Overleaf
- **Cursor AI Integration**: Works with Cursor's AI assistant for code completion and generation
- **Real-time Compilation**: Documents compile automatically on save
- **PDF Preview**: Built-in PDF viewer
- **Syntax Highlighting and Formatting**: Advanced LaTeX editing features
- **Spell and Grammar Checking**: Integrated spelling and grammar tools

## 6.2. Getting Started

### 6.2.1. Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running
- [Cursor](https://cursor.sh/) IDE installed
- [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension installed in Cursor

### 6.2.2. Opening the Project

1. Clone this repository to your local machine
2. Open the folder in Cursor IDE
3. When prompted, click "Reopen in Container" or use the command palette:
   - Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac)
   - Type `Remote-Containers: Reopen in Container` and select it

The first time you open the container, it may take several minutes to download and set up the environment.

## 6.3. Writing LaTeX

1. Open or create `.tex` files in the editor
2. Save the file to automatically compile it
3. View the PDF in the built-in viewer (opens automatically)
4. Use Cursor's AI features for assistance:
   - `Ctrl+K` or `Cmd+K` for inline AI completions
   - `Ctrl+L` or `Cmd+L` for AI chat with context about your LaTeX code

## 6.4. Customizing the Environment

- Add additional LaTeX packages in `.devcontainer/devcontainer.json` under `postCreateCommand`
- Modify LaTeX Workshop settings in `.devcontainer/devcontainer.json`
- Change compilation parameters in the LaTeX Workshop configuration

## 6.5. Troubleshooting

- **Container won't start**: Make sure Docker is running
- **Compilation errors**: Check the LaTeX Workshop output panel for details
- **Missing packages**: Add them using `tlmgr install package-name` in terminal or in postCreateCommand

## 6.6. Learning Resources

- [LaTeX Documentation](https://www.latex-project.org/help/documentation/)
- [Overleaf LaTeX Learning Resources](https://www.overleaf.com/learn)
- [LaTeX Workshop Documentation](https://github.com/James-Yu/LaTeX-Workshop/wiki)

## 6.7. How to Use Your New LaTeX Environment with Cursor AI

I've created a complete LaTeX development environment integrated with Cursor's AI features. Here's how to use it:

### 6.7.1. Getting Started

1. Make sure you have **Docker Desktop** installed and running on your system
2. Install the **Remote - Containers** extension in Cursor
3. Open the project folder in Cursor
4. When prompted, select "Reopen in Container" (or use `Cmd+Shift+P` or `Ctrl+Shift+P` and search for `Remote-Containers: Reopen in Container`)

This will start building and running the Docker container with a full TeXLive installation. It may take several minutes the first time, as it needs to download the Docker image.

### 6.7.2. Features of This Setup

- **Complete LaTeX Environment**: The full TeXLive distribution with all packages
- **Auto-Compilation**: Documents compile when you save
- **Built-in PDF Viewer**: View PDFs directly in Cursor
- **LaTeX-Specific Tools**: Formatting, spell checking, and syntax validation
- **Cursor AI Integration**: Use `Cmd+K` or `Ctrl+K` for AI assistance with your LaTeX code

### 6.7.3. Working with LaTeX and AI

The real power comes from combining LaTeX with Cursor's AI features:

1. Edit the `example.tex` file to see how the environment works
2. Save the file to trigger automatic compilation
3. Use Cursor's AI to help with LaTeX:
   - Ask for help with complex formulas: "Show me how to create a matrix in LaTeX"
   - Get help with document structure: "Help me create a bibliography section"
   - Debug errors: "Why is my equation not compiling?"

### 6.7.4. Benefits Over Overleaf

This setup gives you several advantages over Overleaf:

1. **Local Development**: Work offline with all your files
2. **Powerful AI Integration**: Get AI assistance that understands your entire codebase
3. **Customization**: Easily add packages or modify the build process
4. **Version Control**: Seamlessly use Git for collaboration
5. **Performance**: Better performance for large documents than web-based editors

All this while still having the same complete LaTeX environment you'd get with Overleaf, plus AI assistance to make writing LaTeX significantly easier.

To get started, just open your example.tex file and begin editing!
