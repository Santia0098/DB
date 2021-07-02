SELECT * 
FROM posts
ORDER BY fecha_publicacion asc; 


SELECT * 
FROM posts
ORDER BY titulo desc; 

SELECT * 
FROM posts
ORDER BY id desc 
LIMIT 2; 

/*--------------------------------*/
/*HAVING*/

SELECT MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) as post_quantity
FROM posts
group by estatus, post_month
HAVING post_quantity >= 1
order by post_month;


/*---------------------*/

SELECT new_table_projection.date, COUNT(*) AS posts_count
FROM (
	SELECT DATE(MIN(fecha_publicacion)) AS date, YEAR(fecha_publicacion) AS post_year
    FROM posts
    GROUP BY post_year
) AS new_table_projection
GROUP BY new_table_projection.date
ORDER BY new_table_projection.date desc;

SELECT *
FROM posts
WHERE fecha_publicacion = (
SELECT MAX(fecha_publicacion)
FROM posts
);



