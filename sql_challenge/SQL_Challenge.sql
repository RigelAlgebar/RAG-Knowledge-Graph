SELECT
    user_id,
    content_id,
    ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY created_at) AS row_idx
FROM
    user_activity
ORDER BY
    user_id,
    created_at;

SELECT
    r.request_id,
    r.created_at,
    r.user_id,
    STRING_AGG(resp.content_id::text, ', ') AS content_ids
FROM
    requests r
JOIN
    responses resp ON r.request_id = resp.request_id
GROUP BY
    r.request_id,
    r.created_at,
    r.user_id
ORDER BY
    r.created_at;
