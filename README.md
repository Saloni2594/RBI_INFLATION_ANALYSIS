RBI Repo Rate & CPI Inflation Correlation Analysis (2016–2024)
Overview
This project examines whether RBI repo rate changes influence retail inflation (CPI) in India, and whether the impact is immediate or delayed. Using 108 months of real macroeconomic data (Jan 2016 – Dec 2024), the analysis combines SQL-based exploratory queries with Python-based Pearson correlation at multiple lag periods.
Key Finding
Repo rate changes show a weak negative correlation with inflation that strengthens with time — from -0.18 (no lag) to -0.26 at 12-month lag — confirming that monetary policy transmission to inflation takes approximately 12 months, consistent with RBI's documented policy stance.
Tools Used

SQL (SQLite / DB Browser) — exploratory analysis, year-wise trends, CASE bucketing, LEAD window function for lag queries
Python (pandas, scipy, matplotlib) — Pearson correlation at 0, 3, 6, 12-month lags and lag visualization
Excel — data cleaning and preparation

Files
FileDescriptionRBI VS CPI.csvRaw dataset — CPI index, YOY inflation %, repo rate (Jan 2016–Dec 2024)SQL_QUERIES.sqlAll SQL queries run in SQLiterbi_analysis.pyPython script for correlation and lag chartlag_correlation.pngVisualization of correlation at different lag periodsRBI_Correlation_Report.docxFull project report with findings and interpretation
Data Sources

CPI & Inflation: FRED / OECD
Repo Rate: Reserve Bank of India
