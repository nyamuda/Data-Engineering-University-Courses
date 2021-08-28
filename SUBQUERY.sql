SELECT 
    title
FROM
    film
WHERE
    film_id IN (SELECT 
            fc.film_id
        FROM
            film_category fc
                JOIN
            category c USING (category_id)
        WHERE
            c.name = 'Action')