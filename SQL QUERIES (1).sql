SELECT *
FROM inflation_repo
LIMIT 5;
SELECT COUNT(*) AS total_records
FROM inflation_repo;
SELECT
ROUND(AVG([YOY inflation %]),2) AS average_inflation
FROM inflation_repo;
SELECT
ROUND(AVG([Repo Rate (%)]),2) AS average_repo_rate
FROM inflation_repo;
SELECT *
FROM inflation_repo
LIMIT 10;
SELECT COUNT(*) AS total_records
FROM inflation_repo;
SELECT
ROUND(AVG([CPI index]),2) AS average_cpi
FROM inflation_repo;
SELECT
ROUND(AVG([YOY inflation %]),2) AS average_inflation
FROM inflation_repo;
SELECT
ROUND(AVG([Repo Rate (%)]),2) AS average_repo_rate
FROM inflation_repo;
SELECT
Date,
[YOY inflation %]
FROM inflation_repo
ORDER BY [YOY inflation %] DESC
LIMIT 5;
SELECT
Date,
[YOY inflation %]
FROM inflation_repo
ORDER BY [YOY inflation %] ASC
LIMIT 5;
SELECT
MAX([Repo Rate (%)]) AS highest_repo_rate
FROM inflation_repo;
SELECT
MIN([Repo Rate (%)]) AS lowest_repo_rate
FROM inflation_repo;
SELECT
substr(Date, -4) AS Year,
ROUND(AVG([Repo Rate (%)]),2) AS Avg_Repo_Rate,
ROUND(AVG([YOY inflation %]),2) AS Avg_Inflation
FROM inflation_repo
GROUP BY substr(Date, -4)
ORDER BY Year;
SELECT
Date,
[YOY inflation %]
FROM inflation_repo
WHERE [YOY inflation %] > 4
ORDER BY Date;
SELECT
Date,
[Repo Rate (%)]
FROM inflation_repo
WHERE [Repo Rate (%)] >= 6.5
ORDER BY Date;
SELECT
CASE
    WHEN [Repo Rate (%)] < 5 THEN 'Low (<5%)'
    WHEN [Repo Rate (%)] < 6.5 THEN 'Medium (5%-6.5%)'
    ELSE 'High (6.5%+)'
END AS Repo_Category,

COUNT(*) AS Number_of_Months,

ROUND(AVG([YOY inflation %]),2) AS Average_Inflation

FROM inflation_repo

GROUP BY Repo_Category

ORDER BY Average_Inflation DESC;
SELECT
Date,
[Repo Rate (%)] AS Repo_Rate,
[YOY inflation %] AS Current_Inflation,

LEAD([YOY inflation %],12)
OVER (ORDER BY Date) AS Inflation_12_Months_Later

FROM inflation_repo;
SELECT
MAX([YOY inflation %]) AS Highest_Inflation,
MIN([YOY inflation %]) AS Lowest_Inflation
FROM inflation_repo;