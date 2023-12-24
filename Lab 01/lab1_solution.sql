CREATE TABLE product(
        prod_no CHAR(4),
        prod_name CHAR(20),
        price NUMBER(5,2),
        supp_no CHAR(4),
	PRIMARY KEY(prod_no));
/

CREATE TABLE supplier(
        supp_no CHAR(4),
        supp_name CHAR(15),
        town CHAR(15),
        tel_no CHAR(15),
        PRIMARY KEY(supp_no));

select * from tab;

DESC product;

INSERT INTO product VALUES ('P1', 'Lawn Mower', 30.00, 'S3');
INSERT INTO product VALUES ('P2', 'Spade', 25.00, 'S7');
INSERT INTO product VALUES ('P3', 'Brush', 20.99, 'S7');
INSERT INTO product VALUES ('P4', 'Rose Spray Pump', 18.50, 'S5');

INSERT INTO supplier VALUES ('S3', 'Gapes', 'Nottingham', '01780456789');
INSERT INTO supplier VALUES ('S5', 'Hulls', 'Leicester', '01934672341');
INSERT INTO supplier VALUES ('S7', 'Selaby', 'Derby', '01716542974');

SELECT * FROM product;

SELECT supp_name, tel_no FROM supplier;

SELECT * FROM product WHERE price < 20;

SELECT * FROM product, supplier
     WHERE product.supp_no = supplier.supp_no;