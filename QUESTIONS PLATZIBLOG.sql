SELECT posts.titulo, COUNT(*) num_etiquetas
FROM posts
INNER JOIN posts_etiquetas
ON posts.id = posts_etiquetas.post_id
INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id
ORDER BY num_etiquetas DESC
;

SELECT posts.titulo, group_concat(nombre_etiqueta) AS nombre_etiquetas
FROM posts
INNER JOIN posts_etiquetas
ON posts.id = posts_etiquetas.post_id
INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id
;

SELECT * 
FROM etiquetas
LEFT JOIN posts_etiquetas 
ON etiquetas.id = posts_etiquetas.etiqueta_id
WHERE posts_etiquetas.etiqueta_id IS NULL
;

SELECT c.nombre_categoria, COUNT(*) AS cant_posts
FROM categorias AS c
INNER JOIN posts AS p
ON c.id = p.categoria_id
GROUP BY c.id
ORDER BY cant_posts DESC
;

SELECT u.nickname, COUNT(*) AS cant_posts
FROM usuarios AS u
INNER JOIN posts AS p
ON u.id = p.usuario_id
GROUP BY u.id
ORDER BY cant_posts DESC
;

SELECT u.nickname, COUNT(*) AS cant_posts, GROUP_CONCAT(nombre_categoria) AS nombre_categoria
FROM usuarios AS u
INNER JOIN posts AS p
ON u.id = p.usuario_id
INNER JOIN categorias AS c
ON c.id = p.categoria_id
GROUP BY u.id
ORDER BY cant_posts DESC
;




SELECT *
FROM usuarios AS u
LEFT JOIN posts 
ON u.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;
