SELECT COUNT(DISTINCT CATEGORY_ID) FROM PRODUCTS;

SELECT PRODUCT_NAME, CATEGORY_ID,PRICE FROM PRODUCTS
WHERE CATEGORY_ID<4 ORDER BY PRICE DESC;

SELECT * FROM PRODUCTS
LIMIT 10 OFFSET 5;