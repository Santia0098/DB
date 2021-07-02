SELECT * FROM
posts WHERE usuario_id IS NULL;

SELECT * FROM
posts WHERE categoria_id IS NULL;

SELECT * FROM
posts WHERE usuario_id IS NOT NULL AND estatus = 'activo'
AND id < 50;