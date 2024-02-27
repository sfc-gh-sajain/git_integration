CREATE OR REPLACE TABLE my_inventory(
  sku VARCHAR,
  price NUMBER
);

EXECUTE IMMEDIATE FROM './insert-inventory.sql';

SELECT sku, price
  FROM my_inventory
  ORDER BY price DESC;