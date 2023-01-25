/*  This file contains the source code to verify the result set is correct in table vehicle after updates

	1. The letters following the table names are aliases to simplify the source code in place of typing the entire table name
	2. The WHERE/AND clauses join multiple tables together based on the primary and foreign keys used in the table data
*/

/* Test case source code  */

SELECT v.id, ty.type, ma.make, mo.model, co.color, e.engine, cy.cylinders, tr.transmission, v.vin, v.odometer, v.retail, v.year
  FROM color co, cylinders cy, engine e, make ma, model mo, transmission tr, type ty, vehicle v
 WHERE  v.color = co.id
   AND  v.cylinders = cy.id
   AND  v.engine = e.id
   AND  v.make = ma.id
   AND  v.model = mo.id
   AND  v.transmission = tr.id
   AND  v.type = ty.id
ORDER BY v.id;