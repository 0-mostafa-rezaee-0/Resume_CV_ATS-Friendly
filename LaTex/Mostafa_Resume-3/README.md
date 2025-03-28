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