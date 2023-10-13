-- QUES 4 : 
-- +-----------------------+
-- | unreviewed_series     |
-- +-----------------------+
-- | Malcolm In The Middle |
-- | Pushing Daisies       |
-- +-----------------------+

SELECT title FROM series LEFT JOIN reviews ON series.id=reviews.series_id WHERE rating is NULL;

-- NOTE := We do not use  rating=NULL ==> This simply does not work

