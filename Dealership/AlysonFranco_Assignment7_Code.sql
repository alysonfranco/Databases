USE dealership;

UPDATE employee
SET email =
REPLACE(email, 'renovations', 'dealership');

ALTER TABLE sale MODIFY COLUMN salePrice decimal(8,2) NOT NULL DEFAULT 0.0;

INSERT INTO sale (employeeID, customerID, vehicleID)
VALUES
(1, 14, 3),
(2, 30, 32),
(3, 8, 15),
(5, 18, 21),
(8, 12, 8),
(10, 31, 35);

UPDATE sale
SET salePrice = 
(
    SELECT retail
    FROM vehicle
    WHERE id = 3
)
WHERE vehicleID = 3;

UPDATE sale
SET salePrice = 
(    
    SELECT retail
    FROM vehicle
    WHERE id = 32
)
WHERE vehicleID = 32;

UPDATE sale
SET salePrice = 
(
    SELECT retail
    FROM vehicle
    WHERE id = 15
)
WHERE vehicleID = 15;

UPDATE sale
SET salePrice = 
(
    SELECT retail
    FROM vehicle
    WHERE id = 21
)
WHERE vehicleID = 21;

UPDATE sale
SET salePrice = 
(
    SELECT retail
    FROM vehicle
    WHERE id = 8
)
WHERE vehicleID = 8;

UPDATE sale
SET salePrice = 
(
    SELECT retail
    FROM vehicle
    WHERE id = 35
)
WHERE vehicleID = 35;

CREATE VIEW saleView AS
SELECT CONCAT(c.firstName, ' ', c.lastName) AS 'Customer Name', 
CONCAT(c.address, ' ', cs.city, ' ', cs.state, ' ', c.zipCode) AS 'Customer Address',
c.phone AS 'Customer Phone', 
c.email AS 'Customer Email',
CONCAT(e.firstName, ' ', e.lastName) AS 'Sales Associate',
e.phone AS 'Sales Associate Phone', 
e.email AS 'Sales Associate Email',
v.year AS 'Year',
ma.make AS 'Make',
mo.model AS 'Model',
co.color AS 'Color',
ty.type AS 'Type',
v.vin AS 'VIN',
s.salePrice AS 'Sale Price'
FROM customer c, employee e, cityState cs, vehicle v, make ma, model mo, color co, type ty, sale s
WHERE c.zipCode = cs.zipCode
    AND v.make = ma.id
    AND v.model = mo.id
    AND v.color = co.id
    AND v.type = ty.id
    AND v.retail = s.salePrice
    AND c.id = s.customerID
    AND e.id = s.employeeID;
  


