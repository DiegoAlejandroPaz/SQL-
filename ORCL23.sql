SELECT
    table_name,
    index_name,
    column_name
FROM
    user_ind_columns
WHERE
    table_name = 'OHISTORY';