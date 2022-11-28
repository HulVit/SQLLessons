USE Sales;

-- SELECT * FROM dbo.goods g, dbo.purchases p WHERE g.id = p.good_id;

SELECT * FROM dbo.goods g
LEFT JOIN (SELECT good_id, sum(quantity) quantity
FROM dbo.purchases
GROUP BY good_id) p
ON g.id = p.good_id
;


-- SELECT * FROM dbo.goods g
-- LEFT JOIN dbo.purchases p
-- ON g.id = p.good_id;