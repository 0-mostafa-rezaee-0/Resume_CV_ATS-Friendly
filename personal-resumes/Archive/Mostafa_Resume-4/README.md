# Mostafa Resume - Version 4

## Font Strategy Implementation

| Element | Recommended Font | Implemented Font | Changed? |
|---------|-----------------|------------------|----------|
| **Name** | Montserrat (18-22pt, Bold) | TeX Gyre Heros (via `tgheros` package) with custom 18/22pt size | No |
| **Section Titles** | Montserrat (13-14pt, Bold, All Caps) | TeX Gyre Heros (via `\Large\bfseries\selectfont`) | No |
| **Job Titles** | Montserrat (12-13pt, Bold) | TeX Gyre Heros (via `\bfseries`) | No |
| **Company, Dates** | Inter (11-12pt) | TeX Gyre Heros | No |
| **Descriptions/Bullets** | Inter (11-11.5pt) | TeX Gyre Heros | No |
| **Line Spacing** | 1.25-1.4 | 1.25 (via `\baselinestretch{1.25}`) | No |
| **Margins** | 0.5-0.75 inch | 0.5 inch (via `geometry` package) | No |

This version uses TeX Gyre Heros, a modern sans-serif font that closely resembles Helvetica Neue, giving a clean contemporary look similar to the recommended Inter/Montserrat combination. Custom font sizes match the recommendations exactly. 