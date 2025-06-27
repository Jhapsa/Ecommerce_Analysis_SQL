
-- A. SELECT, WHERE, ORDER BY, GROUP BY

-- A1. Select users from the US with >150 products sold
SELECT identifierHash, country, productsSold
FROM users_data
WHERE country = 'Etats-Unis' AND productsSold > 150
ORDER BY productsSold DESC;

-- A2. Average product pass rate by country
SELECT country, AVG(productsPassRate) AS avg_pass_rate
FROM users_data
GROUP BY country
ORDER BY avg_pass_rate DESC;


-- B. JOINS (Simulated using a dummy countries table)

-- B1. Create a dummy countries table
CREATE TABLE countries (
    code TEXT,
    name TEXT
);

-- B2. Insert sample values
INSERT INTO countries (code, name) VALUES
('us', 'United States'),
('gb', 'United Kingdom'),
('fr', 'France'),
('mc', 'Monaco');

-- B3. INNER JOIN users with country names
SELECT u.identifierHash, u.countryCode, c.name AS country_name
FROM users_data u
INNER JOIN countries c ON u.countryCode = c.code;


-- C. SUBQUERY

-- C1. Users with product pass rate above global average
SELECT identifierHash, productsPassRate
FROM users_data
WHERE productsPassRate > (
    SELECT AVG(productsPassRate)
    FROM users_data
)
ORDER BY productsPassRate DESC;


-- D. AGGREGATE FUNCTIONS (SUM, AVG)

-- D1. Total followers and average follows by language
SELECT language,
       SUM(socialNbFollowers) AS total_followers,
       AVG(socialNbFollows) AS avg_follows
FROM users_data
GROUP BY language
ORDER BY total_followers DESC;


-- E. CREATE VIEW FOR ANALYSIS

-- E1. Create a view for high engagement users
CREATE VIEW high_engagement_users AS
SELECT identifierHash,
       country,
       socialNbFollowers,
       socialProductsLiked,
       productsSold
FROM users_data
WHERE socialNbFollowers > 100 AND productsSold > 100;

-- E2. Use the view
SELECT * FROM high_engagement_users;


-- F. INDEX OPTIMIZATION

-- F1. Create indexes for faster filtering
CREATE INDEX idx_country ON users_data(country);
CREATE INDEX idx_products_sold ON users_data(productsSold);
CREATE INDEX idx_language ON users_data(language);
