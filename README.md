# EMEA Netflix Content & Production Finance Analysis

**Portfolio project for Data Analyst, EMEA Production Finance role at Netflix**

This repository presents an end-to-end analysis of Netflix's EMEA (Europe, Middle East & Africa) content using publicly available datasets. The project demonstrates SQL proficiency, data cleaning, exploratory analysis, and business storytelling through visualization — skills aligned with rapid, high-impact show-level analysis for Production Finance and regional teams.

### Project Goal

Explore trends in Netflix EMEA productions (2015+), highlight regional focus, genre popularity, production growth, and proxy financial performance (ROI, budget vs return) using public data.

### Tools & Technologies

- **Python**: pandas, duckdb (for SQL execution)
- **SQL**: CTEs, window functions (LAG, ROW_NUMBER), aggregations
- **Visualization**: Tableau Public

### Data Sources

- Netflix Titles (~8,800 entries): [Kaggle – shivamb/netflix-shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)
- TMDB 5000 Movies (budgets, revenues, production info): [Kaggle – tmdb/tmdb-movie-metadata](https://www.kaggle.com/datasets/tmdb/tmdb-movie-metadata)
- Filtered to EMEA countries (UK, France, Germany, Spain, Italy, South Africa, Nigeria, Turkey, etc.)
- Finance data merged only for movies (TV budgets rarely public)

**Important note**: Exact title + year matching yielded only **14 EMEA movies** with usable budget/revenue data — reflecting public-data constraints.

### Key Analyses

- Filtered & cleaned Netflix data for EMEA region and 2015+ releases
- Exploded multi-genre titles for accurate genre insights
- Merged with TMDB to calculate ROI proxy: `(revenue - budget) / budget`
- Advanced SQL queries (via DuckDB):
  - Top EMEA countries by content volume
  - Year-over-year production growth (using LAG)
  - Top-rated titles per country (using ROW_NUMBER)
  - ROI trends (relaxed budget thresholds due to limited matches)

### Interactive Tableau Dashboard

**EMEA Netflix Production Trends**  
[View live dashboard →](https://public.tableau.com/views/NETFLIX-EMEAProductionTrends/NETFLIX-EMEAProductionTrends?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

Includes:
- Top 10 EMEA countries by number of titles
- Year-over-year production growth (2015+)
- Movies vs TV Shows trend over time
- Genre distribution (treemap & bar)
- Budget vs ROI scatter (limited matches – public proxy)

**Note**: Detailed ROI by genre bar chart (Chart 4) skipped due to very low number of matched high-budget titles.

### Repository Structure
```text
emea-netflix-production-finance-analysis/
├── data/                    # Raw downloaded CSVs (gitignore recommended)
├── data_export/             # Cleaned & summary CSVs for Tableau
├── notebooks/
│   └── eda_notebook.ipynb   # Full Python + SQL workflow
├── sql/
│   └── queries.sql          # Standalone SQL examples
├── viz/                     # Screenshots / exports (optional)
└── README.md
```

### Limitations & Learnings

- Only 14 movies matched with finance data → used relaxed thresholds ($5M+ budget) for broader insights
- Observed 2021 production dip (likely COVID-related + dataset cutoff)
- Public datasets lack full Netflix proprietary production spend → results are illustrative proxies

Last updated: February 2026
