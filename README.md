# Overview

This repository provides the R code for the manuscript titled "A meta-analysis of the long-term efficacy of Amantadine for Levodopa-induced dyskinesia in Parkinson’s Disease", authored by Williams, K., Curtis, M. A., Gombinsky, L., and Parmar, P.
The code was developed to be specific to the analyses conducted in the above manuscript and is not intended for use in any other context. Each script is specific to one of the Parkinson’s Disease motor outcomes of the analysis, including:

- The Unified Parkinson’s Disease Rating Scale (UPDRS) or Movement Disorder Society Unified Parkinson’s Disease Rating Scale (MDS-UPDRS) score for Part III, IV, and IVa (exploratory subset)
- The Unified Dyskinesia Rating Scale (UDysRS) total score
- Daily “ON” time in hours, with and without troublesome dyskinesia
- Daily “OFF” time in hours

The script contains code for all time-points (“up to 13 weeks”, “up to 16 weeks”, “12 to 16 weeks” and “38 to 101 weeks”) for the given outcome. There is also a separate script for the sensitivity analyses performed for UPDRS IV at “up to 16 weeks”.


# R Version and Packages

All analyses were conducted using R version 2024.12.0+467. The following packages were used: `readxl v_1.4.3`, `meta v_8.0-1`, `metafor v_4.6-0`, and `metasens v_1.5-2`.
