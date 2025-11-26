/* Task 2 */

-- Show rows do not have title inside context

SELECT
    title,
    context, 
    INSTR(context, title)  -- no match if there is no match
FROM staging.squad
WHERE NOT regexp_matches(context, title); -- two arguments are string and substring


/* Task 3 */

-- Show rows if context starting with title

-- Use LIKE operator with wildcard %
SELECT
    *
FROM staging.squad
WHERE context LIKE CONCAT(title, '%');
-- check the results for Southern_California
-- the results are not ok due to the wildcard

-- if u use regular expression functions, underscore will be a literal character

SELECT *
FROM staging.squad
WHERE regexp_matches(context, CONCAT('^', title));


/* ====== Task 4 ===== */

-- Show a new column which is the first answer from the AI model
-- without pattern matching
SELECT
  answers[18:],  -- slicing
  answers[18],   -- indexing
  CASE 
   WHEN answers[18] = ',' THEN NULL
   ELSE answers[18:]
   END AS striped_answers,
   INSTR(striped_answers, '''') AS first_quotation_index,  -- a single quotation needs to be typed as '' (escape character)
   striped_answers[:first_quotation_index] AS first_answers,
  answers
  FROM stagingsql_squad;


  /* ===== Task 5 ====== */

  -- Generate the same results from task 4

  SELECT
  -- dont allow single quotation inside ' and', 
 regexp_extract(answers, '''([^'']+)'',') AS first_answer,
 -- Allows upper and lower case letters, digits, space, comma
 regexp_extract(answers, '''([A-Za-z0-9  ,]+)'',') AS first_answer_1,
 -- Use the grouping optional argument in regexp_extract function
 regexp_extract(answers, '''([A-Za-z0-9  ,]+)'',', 1) AS first_answer_2,
 answers
FROM staging.squad;
