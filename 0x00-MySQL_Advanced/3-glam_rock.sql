QL script that lists all bands with Glam rock as their main style, ranked by their longevity
SELECT band_name,
ABS(IFNULL(split, 2022) - formed) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%' 
ORDER BY lifespan DESC;
