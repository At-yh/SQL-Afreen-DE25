SELECT * FROM funny_jokes;

-- Shortcut for select *
FROM funny_jokes;

/* Ascending order */
SELECT
    *
FROM
    funny_jokes
ORDER BY
    rating;


/* Descending order */
SELECT
    *
FROM
    funny_jokes
ORDER BY
    rating
DESC;


-- After updating joke id 7
UPDATE funny_jokes
SET 
    rating = 10
WHERE
    id = 7    