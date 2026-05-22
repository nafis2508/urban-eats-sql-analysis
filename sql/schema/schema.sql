# Creating OUTLET Table 
CREATE TABLE Outlet (
    Outlet_ID      INT           PRIMARY KEY,
    Outlet_Name    VARCHAR(100)  NOT NULL,
    Address        VARCHAR(200)  NOT NULL,
    Phone          VARCHAR(20),
    Email          VARCHAR(120)
);

# Creating CUSTOMER Table 
CREATE TABLE Customer (
    Customer_ID    INT           PRIMARY KEY,
    First_Name     VARCHAR(60)   NOT NULL,
    Last_Name      VARCHAR(60)   NOT NULL,
    Email          VARCHAR(120),
    Contact          VARCHAR(20)
);

ALTER TABLE Customer
ADD Customer_Address VARCHAR(200);


# Creating PRODUCT_CATEGORY Table 
CREATE TABLE Product_Category (
    Product_Category_ID      INT           PRIMARY KEY,
    Product_Category_Name    VARCHAR(100)  NOT NULL,
    Product_Category_Description VARCHAR(255)
);

# Creating PRODUCT Table
CREATE TABLE Product (
    Product_ID     INT PRIMARY KEY,
    Product_Name   VARCHAR(120) NOT NULL,
    Price          DECIMAL(10,2) NOT NULL,
    Category_ID    INT NOT NULL,
    FOREIGN KEY (Category_ID) REFERENCES Product_Category(Product_Category_ID)
);

# Creating SHIFT Table 
CREATE TABLE Shift (
  Shift_ID   INT PRIMARY KEY,
  Outlet_ID  INT NOT NULL,
  Start_Time TIME NOT NULL,
  End_Time   TIME NOT NULL,
  Max_Staff  INT NOT NULL,
  FOREIGN KEY (Outlet_ID) REFERENCES Outlet(Outlet_ID)
);

# Creating RESERVATION Table 
CREATE TABLE Reservation (
  Reservation_ID    INT PRIMARY KEY,
  Outlet_ID         INT NOT NULL,
  Customer_ID       INT NOT NULL,
  Date              DATE NOT NULL,
  Time              TIME NOT NULL,
  Number_of_People  INT NOT NULL,
  Status            VARCHAR(20),
  FOREIGN KEY (Outlet_ID)   REFERENCES Outlet(Outlet_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

# Creating ORDER Table 
CREATE TABLE Orders (
  Order_ID     INT PRIMARY KEY,
  Outlet_ID    INT NOT NULL,
  Customer_ID  INT NOT NULL,
  Order_Date   DATE NOT NULL,
  Order_Type   VARCHAR(20) NOT NULL,  
  Order_Status VARCHAR(20) NOT NULL,   
  FOREIGN KEY (Outlet_ID)   REFERENCES Outlet(Outlet_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

# Creating PAYMENT Table 
CREATE TABLE Payment (
  Payment_ID      INT PRIMARY KEY,
  Order_ID        INT NOT NULL,
  Payment_Amount  DECIMAL(10,2) NOT NULL,
  Payment_Method  VARCHAR(20),
  Payment_Status  VARCHAR(20),
  FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

# Creating STAFF Table 
CREATE TABLE Staff (
    Staff_ID           INT PRIMARY KEY,
    First_Name         VARCHAR(60) NOT NULL,
    Last_Name          VARCHAR(60) NOT NULL,
    Designation        VARCHAR(50) NOT NULL,
    Employment_Status  VARCHAR(20) NOT NULL,   
    Manager_ID         INT , 
    Outlet_ID          INT NOT NULL,  
    FOREIGN KEY (Outlet_ID)  REFERENCES Outlet(Outlet_ID),
    FOREIGN KEY (Manager_ID) REFERENCES Staff(Staff_ID)
);



# Creating OUTLET-PRODUCT Table 
CREATE TABLE Outlet_Product (
  Product_ID    INT NOT NULL,
  Outlet_ID     INT NOT NULL,
  Outlet_Status VARCHAR(20),
  PRIMARY KEY (Product_ID, Outlet_ID),
  FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
  FOREIGN KEY (Outlet_ID)  REFERENCES Outlet(Outlet_ID)
);


# Creating ORDER-PRODUCT Table 
CREATE TABLE Order_Product (
  Order_ID   INT NOT NULL,
  Product_ID INT NOT NULL,
  Quantity   INT NOT NULL,
  Price      DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (Order_ID, Product_ID),
  FOREIGN KEY (Order_ID)   REFERENCES Orders(Order_ID),
  FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

# Creating STAFF-SHIFT Table 
CREATE TABLE Staff_Shift (
  Staff_ID      INT NOT NULL,
  Shift_ID      INT NOT NULL,
  Staff_Role    VARCHAR(40),
  Working_Hours DECIMAL(5,2),
  PRIMARY KEY (Staff_ID, Shift_ID),
  FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID),
  FOREIGN KEY (Shift_ID) REFERENCES Shift(Shift_ID)
);


