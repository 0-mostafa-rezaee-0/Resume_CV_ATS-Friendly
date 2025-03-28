# Resume Formatting Best Practices for a Tech Company

## Table of Contents
<details>
  <summary><a href="#latex-on-windows-wsl-and-vs-code"><i><b>1. LaTeX on Windows, WSL, and VS Code</b></i></a></summary>
  <div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#windows-and-wsl-setup">1.1. Windows and WSL Setup</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#check-if-latex-is-installed">1.2. Check if LaTeX is Installed</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#install-latex-on-windows">1.3. Install LaTeX on Windows</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#install-latex-on-wsl-ubuntu-debian">1.4. Install LaTeX on WSL (Ubuntu/Debian)</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#do-you-need-latex-on-both-windows-and-wsl">1.5. Do You Need LaTeX on Both Windows and WSL?</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#best-latex-extension-for-vs-code">1.6. Best LaTeX Extension for VS Code</a>
  </div>
</details>
&nbsp;

<details>
  <summary><a href="#applicant-tracking-systems-ats"><i><b>2. Applicant Tracking Systems (ATS)</b></i></a></summary>
  <div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#what-is-an-ats">2.1. What is an ATS?</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#how-ats-systems-process-resumes">2.2. How ATS Systems Process Resumes</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#key-strategies-for-ats-optimization">2.3. Key Strategies for ATS Optimization</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#formatting-best-practices-for-ats">2.4. Formatting Best Practices for ATS</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#section-headers-that-ats-recognizes">2.5. Section Headers that ATS Recognizes</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#keyword-optimization-for-ats">2.6. Keyword Optimization for ATS</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#ats-friendly-file-formats">2.7. ATS-Friendly File Formats</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#testing-your-resume-against-ats">2.8. Testing Your Resume Against ATS</a>
  </div>
</details>
&nbsp;

<details>
  <summary><a href="#fonts-strategy"><i><b>3. Fonts Strategy</b></i></a></summary>
  <div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#top-font-recommendation">3.1. Top Font Recommendation</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#why-inter--montserrat">3.2. Why Inter + Montserrat?</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#avoid-these-for-resumes">3.3. Avoid These for Resumes</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#modern-fonts-for-tech--startups">3.4. Modern Fonts for Tech & Startups</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#classic--safe-resume-fonts">3.5. Classic & Safe Resume Fonts</a>
  </div>
</details>
&nbsp;

## LaTeX on Windows, WSL, and VS Code

### Windows and WSL Setup

This guide helps you check, install, and configure LaTeX on both **Windows** and **WSL (Windows Subsystem for Linux)**, tailored for smooth integration with **VS Code** and the **LaTeX Workshop** extension.

---

### Check if LaTeX is Installed

#### On Windows (PowerShell or CMD)
```bash
pdflatex --version
```

#### On WSL (Ubuntu/Debian)
```bash
pdflatex --version
```

If LaTeX is installed, you'll see version info. Otherwise, you'll get a "command not found" error.

---

### Install LaTeX on Windows

1. Download the installer:  
   [https://www.tug.org/texlive/windows.html](https://www.tug.org/texlive/windows.html)

2. Run `install-tl-windows.exe`.

3. During installation:
   - Accept defaults or customize.
   - Make sure it adds LaTeX to your system `PATH`.

4. After install, restart PowerShell and check:
```bash
pdflatex --version
```

> Recommended for full compatibility with LaTeX Workshop in Windows.

---

### Install LaTeX on WSL (Ubuntu/Debian)

#### Option 1: Using apt (Simpler, but might be outdated)  

```bash
sudo apt update
sudo apt install texlive-full -y
```

> This installs an older version (e.g. TeX Live 2022), but works fine in most cases.

#### Option 2: Install Latest TeX Live (Advanced, for latest features)
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

---

### Do You Need LaTeX on Both Windows and WSL?

| VS Code Environment      | LaTeX Required In |
|--------------------------|-------------------|
| Windows (native)         | Windows          |
| WSL (Remote mode)        | WSL              |
| Dev Container (Docker)   | Inside container |

- If you're editing LaTeX files using **Windows VS Code**, you only need LaTeX on Windows.
- If you're editing files using **WSL VS Code**, you need LaTeX installed in WSL.
- If using **Docker**, LaTeX must be installed inside the Docker image.

> Check VS Code's bottom-left corner to see whether you're in WSL, Windows, or a container.

---

### Best LaTeX Extension for VS Code

Use the **[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)** extension:

#### Extension Info:
- **Name:** LaTeX Workshop  
- **ID:** `James-Yu.latex-workshop`  
- **Marketplace:** [View on VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)

#### Features:
- Live PDF preview with sync (forward/inverse search)
- Auto build on save
- Syntax highlighting and snippet support
- IntelliSense for citations, labels, and refs
- Works with both Windows and WSL backends

---

## Applicant Tracking Systems (ATS)

### What is an ATS?

An **Applicant Tracking System (ATS)** is software that employers use to manage job applications and screen candidates. Key facts:

- **95%+ of Fortune 500 companies** use ATS software
- ATS filters out **75% of resumes** before a human sees them
- Average corporate job posting receives **250+ applications**
- Most resumes are reviewed for only **6-7 seconds** by humans (if they pass ATS)

Think of an ATS as a **digital gatekeeper** that determines if your resume reaches human reviewers.

---

### How ATS Systems Process Resumes

1. **Resume Parsing**: ATS extracts text from your document and categorizes information into predefined fields (name, work history, education, skills).
2. **Keyword Matching**: Compares your resume against job description keywords and qualification requirements.
3. **Ranking**: Assigns scores to candidates based on matching criteria.
4. **Database Storage**: Saves your resume and information in searchable format.
5. **Filtering**: Screens out candidates who don't meet minimum requirements.

---

### Key Strategies for ATS Optimization

| Strategy | Implementation |
|----------|----------------|
| **Match the Job Description** | Tailor resume keywords to match each specific job posting |
| **Use Standard Sections** | Include clearly labeled sections for Experience, Skills, Education |
| **Include Hard Skills** | List relevant technical skills, certifications, and software proficiencies |
| **Format Simply** | Use clean, standard fonts and straightforward layouts |
| **Keyword Placement** | Include key terms in work experience (not just skills section) |

---

### Formatting Best Practices for ATS

- **Use Standard Fonts**: Stick with ATS-friendly fonts (Arial, Calibri, Helvetica, Times New Roman)
- **Simple Formatting**: Avoid tables, text boxes, headers/footers, images, columns in most cases
- **File Type**: Submit in PDF (when allowed) or .docx format
- **Avoid Headers/Footers**: Don't put important information in headers/footers
- **Standard Bullet Points**: Use simple, standard bullet points (•) rather than custom symbols
- **No Graphics**: Skip logos, icons, photos, or charts that ATS can't interpret
- **Avoid Templates**: Many pre-made templates use ATS-unfriendly formatting
- **Reasonable Margins**: Use 0.5-1 inch margins (no extreme adjustments)

---

### Section Headers that ATS Recognizes

Use these standard section titles for optimal ATS parsing:

| Standard Section Titles | Avoid These Variations |
|-------------------------|------------------------|
| **Professional Experience** | Work History, Career Achievements |
| **Education** | Academic Background, Studies |
| **Skills** | Core Competencies, Proficiencies |
| **Professional Summary** | Career Profile, About Me |
| **Technical Skills** | Tech Proficiencies, Technologies |
| **Publications** | Published Works, Research |
| **Certifications** | Professional Development, Credentials |
| **Contact Information** | Personal Details |

---

### Keyword Optimization for ATS

1. **Job Description Analysis**: Identify both hard skills (technical) and soft skills (interpersonal) from the job listing.

2. **Include exact match keywords**: Use the exact terminology from the job listing where possible.

3. **Use both acronyms and full terms**: Include both "UI/UX" and "User Interface/User Experience"

4. **Context matters**: Use keywords in context of achievements:
   - Weak: "Used Python"
   - Strong: "Developed automated reporting system using Python that reduced processing time by 40%"

5. **Keyword density**: Include important terms 2-3 times naturally throughout your resume

6. **Tech stack details**: List specific tools, technologies, methodologies (React, DevOps, Agile)

---

### ATS-Friendly File Formats

| Format | ATS Compatibility | Notes |
|--------|-------------------|-------|
| **.docx** | Excellent | Most universal format for ATS systems |
| **.pdf** | Good (with caveats) | Must be text-based PDF (not scanned) and simply formatted |
| **.txt** | Good | Lacks formatting but highly compatible |
| **.rtf** | Variable | Some ATS handle well, others don't |
| **.html/.odt/.pages** | Poor | Avoid these formats |

**PDF Tips:** If using PDF, ensure it's:
- Created directly from a digital document (not scanned)
- Text-selectable (you can highlight text with cursor)
- Free of unusual fonts or heavy graphics

---

### Testing Your Resume Against ATS

Try these methods to verify your resume is ATS-friendly:

1. **Free ATS Checkers**:
   - [JobScan](https://www.jobscan.co/) (limited free scans)
   - [Resume Worded](https://resumeworded.com/) (limited free analysis)

2. **DIY Method**: Copy text from your PDF resume and paste into a plain text document. If information is missing or appears jumbled, your ATS readability needs improvement.

3. **Keyword Test**: Highlight all keywords from the job description in your resume using different color. This visual check helps ensure you've covered key requirements.

4. **The "6-Second Test"**: Have someone review your resume for just 6 seconds, then ask what they remember. This simulates the human review after ATS screening.

---

## Fonts Strategy

### Top Font Recommendation
Use a **modern, clean, and ATS-friendly** combination:

- **Body Font**: [**Inter**](https://fonts.google.com/specimen/Inter)
  - Optimized for screen readability
  - Clean, neutral, and professional
- **Headings Font**: [**Montserrat**](https://fonts.google.com/specimen/Montserrat)
  - Geometric and contemporary
  - Adds visual structure without being distracting

---

| Element | Font | Size | Style |
|--------|------|------|--------|
| **Name** | Montserrat | 18–22 pt | Bold |
| **Section Titles** | Montserrat | 13–14 pt | Bold, All Caps |
| **Job Titles** | Montserrat | 12–13 pt | Bold |
| **Company, Dates** | Inter | 11–12 pt | Regular or Italic |
| **Descriptions/Bullets** | Inter | 11–11.5 pt | Regular |
| **Line Spacing** | — | 1.25–1.4 | Improves readability |
| **Margins** | — | 0.5–0.75 inch | Efficient use of space |

---

### Why Inter + Montserrat?
- **Modern look** ideal for startups and tech companies
- **Highly readable** on screen and in print
- **ATS-compliant** (friendly for resume scanners)
- **Free and open-source** via Google Fonts:
  - [Inter](https://fonts.google.com/specimen/Inter)
  - [Montserrat](https://fonts.google.com/specimen/Montserrat)

---

### Avoid These for Resumes
- **Times New Roman** – Overused and outdated
- **Comic Sans / Papyrus** – Not professional
- **Fancy display fonts** – Bad for ATS, hard to read

---

### Modern Fonts for Tech & Startups
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

### Classic & Safe Resume Fonts
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


# Best Examples

[rover-resume](https://github.com/subidit/rover-resume)
[stars:>10 forks:>10 language:TeX resume](https://github.com/search?q=stars%3A%3E10+forks%3A%3E10+language%3ATeX+resume&type=repositories&ref=advsearch&s=stars&o=desc)