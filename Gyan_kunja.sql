create database gyan_kunja;
use gyan_kunja;



CREATE TABLE Userr(
	UsrID	INTEGER NOT NULL,
	Gender	VARCHAR(40),
	date_of_birth	DATE,
	First_name	VARCHAR(40) NOT NULL,
	middle_name	VARCHAR(20),
	last_name	VARCHAR(20) NOT NULL,
	other_details	 VARCHAR(40),
	usr_email	VARCHAR(40) NOT NULL,
	Phn_no	VARCHAR(40),
	payment_details VARCHAR(40) NOT NULL, --we will be making a separate table for payment details

	CONSTRAINT	pk_User PRIMARY KEY (UsrID)
);
drop table Userr;

insert into Userr values
(1,'Male','2021-9-11','Raju','Bahadur','Mandal','man','raju@email.com',9849768654,'esewa')



CREATE TABLE Buyer(
	UsrID	 VARCHAR UNIQUE,
	fk1_UsrID	INTEGER NOT NULL,

	UNIQUE(fk1_UsrID)
);
insert into Buyer values
( )





CREATE TABLE Seller(
	UsrID	 VARCHAR NOT NULL UNIQUE,
	fk1_UsrID	INTEGER NOT NULL,
	
	UNIQUE(fk1_UsrID)
);


CREATE TABLE Product(
	product_Id	INTEGER NOT NULL,
	product_title	VARCHAR(8) NOT NULL,
	product_price	INTEGER,
	product_rating	INTEGER,
	fk1_product_type_id	INTEGER NOT NULL,

	CONSTRAINT	pk_Product PRIMARY KEY (product_Id)
);


CREATE TABLE Product_Type(
	product_type_id	INTEGER NOT NULL,
	product_type_name	VARCHAR(8) NOT NULL,
	
	CONSTRAINT	pk_Product_Type PRIMARY KEY (product_type_id)
);


CREATE TABLE product_status(
	product_Validity	INTEGER NOT NULL,
	fk1_UsrID	INTEGER NOT NULL,
	fk2_product_Id	INTEGER NOT NULL
);




ALTER TABLE Buyer ADD CONSTRAINT fk1_Buyer_to_User FOREIGN KEY(fk1_UsrID) REFERENCES Userr(UsrID);


ALTER TABLE Seller ADD CONSTRAINT fk1_Seller_to_User FOREIGN KEY(fk1_UsrID) REFERENCES Userr(UsrID) ;


ALTER TABLE Product ADD CONSTRAINT fk1_Product_to_Product_Type FOREIGN KEY(fk1_product_type_id) REFERENCES Product_Type(product_type_id);



ALTER TABLE product_status ADD CONSTRAINT fk1_product_status_to_User FOREIGN KEY(fk1_UsrID) REFERENCES Userr(UsrID);



ALTER TABLE product_status ADD CONSTRAINT fk2_product_status_to_Product FOREIGN KEY(fk2_product_Id) REFERENCES Product(product_Id) ;



