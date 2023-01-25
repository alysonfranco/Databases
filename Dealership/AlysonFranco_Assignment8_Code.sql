USE dealership;

DELIMITER $$
DROP PROCEDURE IF EXISTS commissionCheck$$
CREATE PROCEDURE commissionCheck(IN employeeNum INT, INOUT commission varchar(4000))
BEGIN 
DECLARE v_finished integer DEFAULT 0;
DECLARE v_lines varchar(100) DEFAULT "--------------------------------------------------------------------------------";
DECLARE v_eFirst varchar(100) DEFAULT "";
DECLARE v_eLast varchar(100) DEFAULT "";
DECLARE v_eAddress varchar(100) DEFAULT "";
DECLARE v_eCity varchar(100) DEFAULT "";
DECLARE v_eState varchar(100) DEFAULT "";
DECLARE v_eZip varchar(100) DEFAULT "";
DECLARE v_retail decimal(8,2) DEFAULT 0.0;
DECLARE v_pay decimal(8,2) DEFAULT 0.0;
DECLARE v_count integer DEFAULT 0;
DECLARE v_eight decimal(3,2) DEFAULT .08;
DECLARE v_ten decimal(3,2) DEFAULT .10;
DECLARE v_fifteen decimal(3,2) DEFAULT .15;
DECLARE v_twenty decimal(3,2) DEFAULT .20;

DEClARE employee_cursor CURSOR FOR 
SELECT e.firstName, e.lastName, e.address, cs.city, cs.state, cs.zipcode, s.salePrice
FROM employee e, cityState cs, sale s
WHERE cs.zipcode = e.zipcode
AND s.employeeId = e.id
AND s.employeeId = employeeNum;

DECLARE CONTINUE HANDLER 
    FOR NOT FOUND SET v_finished = 1;

OPEN employee_cursor;

get_employee: LOOP
FETCH employee_cursor INTO 
v_eFirst,
v_eLast,
v_eAddress,
v_eCity, 
v_eState,
v_eZip,
v_retail;

IF v_finished = 1 THEN 
   LEAVE get_employee;
END IF;
 
SET v_count = v_count + 1;

/*
SELECT v_eFirst;
SELECT v_eLast;
SELECT v_eAddress; 
SELECT v_eCity; 
SELECT v_eZip;
SELECT v_retail;
*/

IF v_count = 1 THEN
    IF v_retail >= 40000 THEN 
        SET v_pay = v_retail * v_twenty;
    ELSEIF v_retail >= 30000 THEN 
        SET v_pay = v_retail * v_fifteen;
    ELSEIF v_retail >= 20000 THEN
        SET v_pay = v_retail * v_ten; 
    ELSE 
        SET v_pay = v_retail * v_eight;
    END IF;

/*SELECT v_pay;
from*/
    SET commission = CONCAT(commission, '\n', v_lines, '\n');
    SET commission = CONCAT(commission, '\From:\n');
    SET commission = CONCAT(commission, '\nCGS2545 Car Dealership\n');
    SET commission = CONCAT(commission, '\UCF\n');
    SET commission = CONCAT(commission, '\MSB 260\n\n');
    SET commission = CONCAT(commission, 'Pay to the order of:\n\n');
    SET commission = CONCAT(commission, v_eFirst, ' ', v_eLast, '\n');
    SET commission = CONCAT(commission, v_eAddress, '\n');
    SET commission = CONCAT(commission, v_eCity, ', ', v_eState, ' ', v_eZip, '\n\n');
    SET commission = CONCAT(commission, 'In the amount of:\n\n');
    SET commission = CONCAT(commission, '$', v_pay, '\n');
    SET commission = CONCAT(commission, '\n', v_lines, '\n');
         
END IF;
/*SELECT commission;*/
 
LEAVE get_employee;
END LOOP get_employee;
CLOSE employee_cursor;
END$$
DELIMITER ;

SET @commission = "";
CALL commissionCheck(1, @commission);
SELECT @commission;

SET @commission = "";
CALL commissionCheck(2, @commission);
SELECT @commission;

SET @commission = "";
CALL commissionCheck(3, @commission);
SELECT @commission;

SET @commission = "";
CALL commissionCheck(5, @commission);
SELECT @commission;

SET @commission = "";
CALL commissionCheck(8, @commission);
SELECT @commission;

SET @commission = "";
CALL commissionCheck(10, @commission);
SELECT @commission;
