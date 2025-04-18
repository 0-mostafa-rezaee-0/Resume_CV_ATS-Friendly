# ATS-Optimized Resume Template

This template is designed to be highly compatible with Applicant Tracking Systems (ATS) while maintaining a clean, professional appearance.

## Features

- Uses ATS-friendly fonts (Inter for body text, Montserrat for headings)
- Simple, clean structure that parses well in ATS systems
- Standard section headers that ATS can recognize
- Proper formatting for optimal keyword detection
- Balanced whitespace and clear organization

## Usage

1. Edit the `ats_optimized_resume.tex` file with your information
2. Compile using pdfLaTeX to generate a PDF
3. Submit the generated PDF to job applications

## Customization

You can customize this template by:
- Adjusting the fonts (included in the `fonts` directory)
- Modifying the section order
- Changing colors and styles while maintaining ATS compatibility

For more information on ATS optimization, refer to the main README.md file in the repository root.

# Mostafa Resume - Version 3

## Font Strategy Implementation

| Element | Recommended Font | Implemented Font | Changed? |
|---------|-----------------|------------------|----------|
| **Name** | Montserrat (18-22pt, Bold) | Avant Garde (via `avant` package) | Yes |
| **Section Titles** | Montserrat (13-14pt, Bold, All Caps) | Default sans-serif (via `\bfseries\Large`) | Yes |
| **Job Titles** | Montserrat (12-13pt, Bold) | Default sans-serif (via `\bfseries`) | Yes |
| **Company, Dates** | Inter (11-12pt) | Helvetica (via `helvet` package) | Yes |
| **Descriptions/Bullets** | Inter (11-11.5pt) | Helvetica (via `helvet` package) | Yes |
| **Line Spacing** | 1.25-1.4 | 1.25 (via `\baselinestretch{1.25}`) | No |
| **Margins** | 0.5-0.75 inch | 0.5 inch (via `geometry` package) | No |

This version uses modern sans-serif fonts (Avant Garde and Helvetica) that are available in standard LaTeX distributions to approximate the recommended Montserrat and Inter fonts. 