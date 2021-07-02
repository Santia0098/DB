SELECT estatus, COUNT(*) as post_quantity
FROM posts 
GROUP BY estatus;

SELECT YEAR(fecha_publicacion) as post_year, COUNT(*) AS post_quantity 
FROM posts
Group BY post_year;

SELECT monthname(fecha_publicacion) as post_month, COUNT(*) AS post_quantity 
FROM posts
Group BY post_month;

SELECT estatus, monthname(fecha_publicacion) as post_month, COUNT(*) AS post_quantity 
FROM posts
Group BY estatus, post_month;