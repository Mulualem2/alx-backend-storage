-- List all bands with Glam rock as their main style

SELECT band_name,
CASE WHEN split is NULL THEN
	(YEAR(CURDATE()) - formed) ELSE 
	(split - formed) END AS lifespan
FROM metal_bands
WHERE FIND_IN_SET('Glam rock', style)
ORDER BY lifespan DESC;
