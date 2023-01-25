/*  This file contains the source code to verify the result set is correct in table makeModel

	1. The letters following the table names are aliases to simplify the source code in place of typing the entire table name
	2. The WHERE/AND clauses join multiple tables together based on the primary and foreign keys used in the table data
*/

/* Test case source code  */

SELECT ma.make, mo.model
  FROM make ma, model mo, makeModel mm
 WHERE  mm.makeId = ma.id
   AND  mm.modelId = mo.id
ORDER BY ma.make, mo.model;