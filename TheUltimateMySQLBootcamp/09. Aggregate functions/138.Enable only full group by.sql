-- Use following in case full group by is disabled.

	SET @@sql_mode = '';
    SET @old_sql_mode = @@sql_mode;
    SET @@sql_mode = '';