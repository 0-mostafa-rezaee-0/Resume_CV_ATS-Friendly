<h1 align="center">ATS-Friendly Resume Template</h1>

# Resume Template Guide

This README provides guidance on using the ATS-friendly resume template in this repository.

## 1. Introduction

This LaTeX template is designed to create resumes that are both visually professional and optimized for Applicant Tracking Systems (ATS). The template follows best practices for ATS compatibility while maintaining clean, modern design principles.

## 2. Getting Started

### 2.1 Prerequisites

- A LaTeX environment (this repository comes with a pre-configured Docker container)
- Basic understanding of LaTeX or willingness to learn

### 2.2 How to Use This Template

1. Open the `resume.tex` file in your LaTeX editor
2. Replace the placeholder content with your own information
3. Compile the document to generate a PDF

## 3. Template Structure

The template is organized into the following sections:

- **Header**: Your name and contact information
- **Professional Summary**: A bullet-point summary of your key qualifications
- **Professional Experience**: Your work history in reverse chronological order
- **Education**: Your educational background
- **Technical Skills**: A categorized list of your technical capabilities
- **Certifications**: Any relevant professional certifications
- **Projects**: Optional section for highlighting key projects

## 4. ATS Optimization Tips

For maximum ATS compatibility:

1. **Use Simple Formatting**: The template avoids complex layouts that could confuse ATS
2. **Include Keywords**: Incorporate job-specific keywords from the job description
3. **Use Standard Section Headings**: The template uses conventional section names
4. **Avoid Headers/Footers for Critical Info**: All important information is in the main content
5. **Quantify Achievements**: Use numbers and percentages to highlight impact
6. **Be Specific with Skills**: List specific technical skills rather than vague capabilities

## 5. Customization

The template can be customized in several ways:

- Adjust margins using the `geometry` package parameters
- Change fonts by modifying the font packages
- Add or remove sections based on your specific needs
- Modify spacing with the `baselinestretch` and `parskip` settings

## 6. Building Your Resume

Once your edits are complete:

1. Save the `resume.tex` file
2. The LaTeX Workshop extension (included in the Docker setup) will automatically compile the document
3. View the generated PDF in the preview pane
4. Make additional edits as needed until satisfied with the result

## 7. Testing ATS Compatibility

Before submitting your resume:

1. Ensure all text is selectable in the PDF
2. Try copying and pasting the content to verify it maintains proper order
3. Consider using an online ATS simulator to check compatibility

## 8. Additional Resources

- The project's main README contains further information about ATS optimization
- Check the `examples` directory for sample resumes built with this template 