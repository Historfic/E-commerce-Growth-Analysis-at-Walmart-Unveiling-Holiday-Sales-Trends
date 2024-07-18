-- Update the Month column to categorical month names and handle nulls
UPDATE dataset
SET "Month" =
    CASE "Month"
        WHEN '1' THEN 'January'
        WHEN '2' THEN 'February'
        WHEN '3' THEN 'March'
        WHEN '4' THEN 'April'
        WHEN '5' THEN 'May'
        WHEN '6' THEN 'June'
        WHEN '7' THEN 'July'
        WHEN '8' THEN 'August'
        WHEN '9' THEN 'September'
        WHEN '10' THEN 'October'
        WHEN '11' THEN 'November'
        WHEN '12' THEN 'December'
        ELSE NULL  -- Handle any unexpected values with NULL
    END
WHERE "Month" IS NOT NULL;
