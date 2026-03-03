WITH RankingUtworow AS (
    SELECT 
        track_name, 
        "artist(s)_name", 
        released_year, 
        CAST(streams AS INTEGER) AS streams_liczbowo,
        row_number() OVER(PARTITION BY released_year ORDER BY CAST(streams AS INTEGER) DESC) AS miejsce_w_roku 
    FROM utwory
)

SELECT * FROM RankingUtworow
WHERE miejsce_w_roku <= 3
ORDER BY released_year DESC
