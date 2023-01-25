USE dealership; 

CREATE TABLE cityState (
    city varchar(90) NOT NULL,
    state char(2) NOT NULL,
    zipCode char(5) NOT NULL UNIQUE,
    PRIMARY KEY (zipCode)
);

INSERT INTO cityState (city, state, zipCode)
VALUES ('Piscataway', 'NJ', '08854'),
('Clover', 'SC', '29710'),
('Duluth', 'GA', '30096'),
('Nashville', 'TN', '37205'),
('Willoughby', 'OH', '44094'),
('Jupiter', 'FL', '33458'),
('Huntington Beach', 'CA', '92647'),
('Memphis', 'TN', '38117'),
('Abingdon', 'VA', '24210'),
('San Marcos', 'CA', '92078'),
('Jefferson', 'LA', '70121'),
('Covington', 'LA', '70433'),
('Ontario', 'CA', '91764'),
('Cuyahoga Falls', 'OH', '44223'),
('Battle Creek', 'MI', '49016'),
('Scottsdale', 'AZ', '85260'),
('Glenarden', 'MD', '20706');

ALTER TABLE employee ADD FOREIGN KEY (zipCode) REFERENCES cityState(zipCode);
ALTER TABLE customer ADD FOREIGN KEY (zipCode) REFERENCES cityState(zipCode);

CREATE VIEW customerView AS 
SELECT c.firstName, c.lastName, c.address, cs.city, cs.state, c.zipcode, c.phone, c.email
FROM customer AS c, cityState AS cs
WHERE c.zipCode = cs.zipcode;

CREATE VIEW employeeView AS
SELECT e.firstName, e.lastName, e.address, cs.city, cs.state, e.zipcode, e.phone, e.email
FROM employee AS e, cityState AS cs
WHERE e.zipCode = cs.zipCode;

CREATE TABLE sale (
    employeeID int NOT NULL,
    customerID int NOT NULL,
    vehicleID int NOT NULL,
    salePrice decimal(8,2) NOT NULL,
    PRIMARY KEY (employeeID, customerID, vehicleID),
    FOREIGN KEY (employeeID) REFERENCES employee(ID),
    FOREIGN KEY (customerID) REFERENCES customer(ID),
    FOREIGN KEY (vehicleID) REFERENCES vehicle(ID)
);