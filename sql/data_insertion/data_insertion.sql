# Inserting Dummy Data into OUTLET Table 

INSERT INTO Outlet (Outlet_ID, Outlet_Name, Address, Phone, Email) VALUES
(1, 'Urban Eats Central', '100 George St, Sydney NSW 2000', '02 8000 1001', 'central@urbaneats.com.au'),
(2, 'Urban Eats Harbour', '22 Wharf Rd, Sydney NSW 2000',   '02 8000 1002', 'harbour@urbaneats.com.au'),
(3, 'Urban Eats Campus',  '15 University Ave, Macquarie NSW 2109', '02 8000 1003', 'campus@urbaneats.com.au');

# Inserting Dummy Data into CUSTOMER Table 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Contact) VALUES
(101, 'Ava',     'Brown',    'ava.brown@gmail.com',        '0411 234 567'), -- Central repeater + reservation (Challenges Associated) 
(102, 'Liam',    'Ng',       'liam.ng@outlook.com',        '0412 345 678'), -- one-timer (at risk)
(103, 'Noah',    'Khan',     'noah.khan@gmail.com',        '0413 456 789'), -- Harbour delivery loyalist
(104, 'Mia',     'Chen',     'mia.chen@proton.me',         '0414 567 890'), -- Harbour dine-in + reservation
(105, 'Olivia',  'Taylor',   'olivia.taylor@gmail.com',    '0415 678 901'), -- Campus no-show risk
(106, 'Lucas',   'White',    'lucas.white@outlook.com',    '0416 789 012'), -- Central takeaway repeater
(107, 'Grace',   'Park',     'grace.park@gmail.com',       '0417 890 123'), -- Central occasional (desserts)
(108, 'Ethan',   'Rao',      'ethan.rao@gmail.com',        '0418 901 234'), -- Harbour cold-drinks fan
(109, 'Sofia',   'Gonzalez', 'sofia.gonzalez@outlook.com', '0419 012 345'), -- Campus student; low frequency
(110, 'Arjun',   'Singh',    'arjun.singh@gmail.com',      '0420 123 456'), -- Central repeater (coffee)
(111, 'Zara',    'Haddad',   'zara.haddad@gmail.com',      '0421 234 567'), -- Harbour dessert buyer
(112, 'Ben',     'Wilson',   'ben.wilson@company.com',     '0422 345 678'), -- delivery-only occasional
(113, 'Isabella','Lopez',    'isabella.lopez@gmail.com',   '0423 111 111'), -- Central brunch group; repeat
(114, 'Jack',    'O’Connor', 'jack.oconnor@outlook.com',   '0424 222 222'), -- one-time Harbour tourist
(115, 'Yuki',    'Tanaka',   'yuki.tanaka@gmail.com',      '0425 333 333'), -- student at Campus; cheap orders
(116, 'Carlos',  'Martinez', 'carlos.martinez@gmail.com',  '0426 444 444'), -- Harbour; repeat desserts
(117, 'Amira',   'Ali',      'amira.ali@outlook.com',      '0427 555 555'), -- Central; reservation & repeat
(118, 'Daniel',  'Green',    'dan.green@gmail.com',        '0428 666 666'), -- Harbour; cold drinks only
(119, 'Priya',   'Sharma',   'priya.sharma@gmail.com',     '0429 777 777'), -- Central; takeaway loyalist
(120, 'Mohammed','Saleh',    'm.saleh@company.com',        '0430 888 888'), -- delivery only; mixed outlets
(121, 'Ella',    'Nguyen',   'ella.nguyen@gmail.com',      '0431 999 999'), -- Campus; rarely orders
(122, 'George',  'Patel',    'george.patel@outlook.com',   '0432 101 010'), -- Central; high-value family orders
(123, 'Chloe',   'Anderson', 'chloe.anderson@gmail.com',   '0433 202 020'), -- Harbour + reservations
(124, 'Mateo',   'Silva',    'mateo.silva@gmail.com',      '0434 303 030'), -- Central coffee repeat
(125, 'Hannah',  'Kim',      'hannah.kim@outlook.com',     '0435 404 040'), -- Harbour; churn risk
(126, 'Oliver',  'Wright',   'oliver.wright@gmail.com',    '0436 505 050'), -- Central; repeat latte buyer
(127, 'Emily',   'Davis',    'emily.davis@gmail.com',      '0437 606 060'), -- Campus; only 1 order
(128, 'Jacob',   'Foster',   'jacob.foster@company.com',   '0438 707 070'), -- Central + Harbour orders
(129, 'Sara',    'Hassan',   'sara.hassan@gmail.com',      '0439 808 080'), -- Harbour; loyal customer
(130, 'Leo',     'Baker',    'leo.baker@gmail.com',        '0440 909 090'); -- Central + delivery

# Inserting Dummy Data into PRODUCT_CATEGORY Table 

INSERT INTO Product_Category (Product_Category_ID, Product_Category_Name, Product_Category_Description) VALUES
(1,  'Espresso Classics',     'Short black, long black, doppio'),
(2,  'Milk Coffees',          'Latte, cappuccino, flat white'),
(3,  'Specialty Coffees',     'Mocha and flavoured coffee drinks'),
(4,  'Teas',                  'Black, green, chai, herbal'),
(5,  'Hot Chocolate',         'Cocoa-based hot drinks'),
(6,  'Iced Coffees',          'Iced latte, iced mocha'),
(7,  'Cold Brew',             'Slow-brewed chilled coffees'),
(8,  'Smoothies',             'Fruit and yoghurt smoothies'),
(9,  'Fresh Juices',          'Pressed and blended juices'),
(10, 'Breakfast Meals',       'Eggs, toasties, pancakes, granola'),
(11, 'Sandwiches & Wraps',    'Panini, baguettes, wraps'),
(12, 'Salads & Bowls',        'Healthy bowls and salad plates'),
(13, 'Cakes & Pastries',      'Cakes, croissants, tarts'),
(14, 'Cookies & Brownies',    'Cookies, brownies and slices'),
(15, 'Seasonal Specials',     'Limited-time flavours and promotions');

# Inserting Dummy Data into PRODUCT Table 

INSERT INTO Product (Product_ID, Product_Name, Price, Category_ID) VALUES
-- Espresso Classics (Category 1)
(1001, 'Short Black',         3.50, 1),
(1002, 'Long Black',          3.80, 1),

-- Milk Coffees (Category 2)
(1003, 'Latte',               4.90, 2),
(1004, 'Cappuccino',          4.90, 2),
(1005, 'Flat White',          4.90, 2),

-- Specialty Coffees (Category 3)
(1006, 'Mocha',               5.20, 3),
(1007, 'Caramel Latte',       5.50, 3),

-- Teas (Category 4)
(1008, 'English Breakfast Tea', 4.00, 4),
(1009, 'Green Tea',             4.20, 4),

-- Hot Chocolate (Category 5)
(1010, 'Classic Hot Chocolate', 5.00, 5),

-- Iced Coffees (Category 6)
(1011, 'Iced Latte',           6.50, 6),
(1012, 'Iced Mocha',           7.00, 6),

-- Cold Brew (Category 7)
(1013, 'Cold Brew Coffee',     6.50, 7),

-- Smoothies (Category 8)
(1014, 'Mango Smoothie',       7.50, 8),
(1015, 'Berry Smoothie',       7.50, 8),

-- Fresh Juices (Category 9)
(1016, 'Orange Juice',         6.00, 9),
(1017, 'Apple Juice',          6.00, 9),

-- Breakfast Meals (Category 10)
(1018, 'Avocado Toast',        10.50, 10),
(1019, 'Pancakes Stack',       12.00, 10),

-- Sandwiches & Wraps (Category 11)
(1020, 'Chicken Wrap',         11.00, 11),
(1021, 'Veggie Panini',        10.50, 11),

-- Salads & Bowls (Category 12)
(1022, 'Caesar Salad',         13.50, 12),
(1023, 'Quinoa Bowl',          14.00, 12),

-- Cakes & Pastries (Category 13)
(1024, 'Cheesecake Slice',     6.50, 13),
(1025, 'Croissant',            4.50, 13),

-- Cookies & Brownies (Category 14)
(1026, 'Chocolate Brownie',    5.00, 14),
(1027, 'Oatmeal Cookie',       3.80, 14),

-- Seasonal Specials (Category 15)
(1028, 'Pumpkin Spice Latte',  6.80, 15),
(1029, 'Gingerbread Latte',    6.80, 15),
(1030, 'Summer Berry Frappe',  7.20, 15);

# Inserting Dummy data into SHIFT Table 

INSERT INTO Shift (Shift_ID, Outlet_ID, Start_Time, End_Time, Max_Staff) VALUES
-- Central Outlet (ID = 1) → busiest, high Max_Staff (4–6)
(1001, 1, '06:00', '10:00', 5),
(1002, 1, '10:00', '14:00', 6),
(1003, 1, '14:00', '18:00', 6),
(1004, 1, '18:00', '22:00', 5),
(1005, 1, '07:00', '11:00', 5),
(1006, 1, '11:00', '15:00', 6),
(1007, 1, '15:00', '19:00', 5),
(1008, 1, '19:00', '23:00', 4),
(1009, 1, '08:00', '12:00', 6),
(1010, 1, '12:00', '16:00', 6),

-- Harbour Outlet (ID = 2) → moderate demand, Max_Staff (3–5)
(2001, 2, '07:00', '11:00', 4),
(2002, 2, '11:00', '15:00', 5),
(2003, 2, '15:00', '19:00', 4),
(2004, 2, '19:00', '23:00', 3),
(2005, 2, '08:00', '12:00', 4),
(2006, 2, '12:00', '16:00', 4),
(2007, 2, '16:00', '20:00', 5),
(2008, 2, '20:00', '00:00', 3),
(2009, 2, '09:00', '13:00', 5),
(2010, 2, '13:00', '17:00', 4),

-- Campus Outlet (ID = 3) → least busy, often under-staffed (Max_Staff 2–3)
(3001, 3, '07:00', '11:00', 3),
(3002, 3, '11:00', '15:00', 3),
(3003, 3, '15:00', '19:00', 2),
(3004, 3, '09:00', '13:00', 3),
(3005, 3, '13:00', '17:00', 2),
(3006, 3, '10:00', '14:00', 3),
(3007, 3, '14:00', '18:00', 2),
(3008, 3, '08:00', '12:00', 3),
(3009, 3, '12:00', '16:00', 2),
(3010, 3, '16:00', '20:00', 2);

# Inserting Dummy Data into RESERVATION Table 

INSERT INTO Reservation (Reservation_ID, Outlet_ID, Customer_ID, Date, Time, Number_of_People, Status) VALUES
-- Central Outlet (ID = 1) – busiest, mix of completed, booked, repeaters
(5001, 1, 101, '2025-09-20', '12:30', 2, 'Completed'),
(5002, 1, 101, '2025-09-27', '18:30', 3, 'Completed'),
(5003, 1, 106, '2025-09-21', '09:00', 1, 'Completed'),
(5004, 1, 110, '2025-09-22', '14:00', 2, 'Booked'),
(5005, 1, 117, '2025-09-23', '19:00', 4, 'Completed'),
(5006, 1, 122, '2025-09-24', '11:00', 5, 'Completed'),
(5007, 1, 124, '2025-09-25', '10:00', 1, 'Cancelled'),
(5008, 1, 126, '2025-09-26', '08:30', 2, 'Completed'),
(5009, 1, 128, '2025-09-27', '13:30', 2, 'Completed'),
(5010, 1, 130, '2025-09-28', '12:00', 3, 'Booked'),

-- Harbour Outlet (ID = 2) – more tourists, cold drinks/desserts, some no-shows
(5011, 2, 103, '2025-09-20', '18:00', 2, 'Completed'),
(5012, 2, 104, '2025-09-21', '19:00', 4, 'Completed'),
(5013, 2, 108, '2025-09-22', '20:00', 3, 'Completed'),
(5014, 2, 111, '2025-09-23', '15:00', 2, 'Completed'),
(5015, 2, 114, '2025-09-24', '13:00', 2, 'No-show'),
(5016, 2, 116, '2025-09-25', '17:00', 2, 'Completed'),
(5017, 2, 118, '2025-09-26', '14:00', 1, 'Completed'),
(5018, 2, 123, '2025-09-27', '19:00', 5, 'Completed'),
(5019, 2, 125, '2025-09-28', '11:00', 2, 'Cancelled'),
(5020, 2, 129, '2025-09-29', '12:30', 3, 'Completed'),

-- Campus Outlet (ID = 3) – fewer bookings, more no-shows/cancellations
(5021, 3, 105, '2025-09-20', '10:00', 2, 'No-show'),
(5022, 3, 109, '2025-09-21', '09:30', 1, 'Completed'),
(5023, 3, 115, '2025-09-22', '12:00', 2, 'Cancelled'),
(5024, 3, 121, '2025-09-23', '11:30', 1, 'Completed'),
(5025, 3, 127, '2025-09-24', '14:00', 2, 'No-show'),
(5026, 3, 121, '2025-09-25', '10:00', 1, 'Booked'),
(5027, 3, 105, '2025-09-26', '12:30', 2, 'Cancelled'),
(5028, 3, 109, '2025-09-27', '15:00', 2, 'Completed'),
(5029, 3, 115, '2025-09-28', '13:30', 3, 'No-show'),
(5030, 3, 127, '2025-09-29', '16:00', 2, 'Completed');

# Inserting Dummy Data into ORDER Table 

INSERT INTO Orders (Order_ID, Outlet_ID, Customer_ID, Order_Date, Order_Type, Order_Status) VALUES
-- Central Outlet (ID = 1) – busiest, mix of dine-in/takeaway
(9001, 1, 101, '2025-09-20', 'Dine-in',  'Completed'),
(9002, 1, 101, '2025-09-27', 'Dine-in',  'Completed'),
(9003, 1, 106, '2025-09-21', 'Takeaway', 'Completed'),
(9004, 1, 110, '2025-09-22', 'Dine-in',  'Pending'),
(9005, 1, 117, '2025-09-23', 'Dine-in',  'Completed'),
(9006, 1, 122, '2025-09-24', 'Dine-in',  'Completed'),
(9007, 1, 124, '2025-09-25', 'Takeaway', 'Cancelled'),
(9008, 1, 126, '2025-09-26', 'Dine-in',  'Completed'),
(9009, 1, 128, '2025-09-27', 'Delivery', 'Completed'),
(9010, 1, 130, '2025-09-28', 'Dine-in',  'Pending'),

-- Harbour Outlet (ID = 2) – strong desserts/cold drinks, tourists, evening bias
(9011, 2, 103, '2025-09-20', 'Delivery', 'Completed'),
(9012, 2, 104, '2025-09-21', 'Dine-in',  'Completed'),
(9013, 2, 108, '2025-09-22', 'Dine-in',  'Completed'),
(9014, 2, 111, '2025-09-23', 'Dine-in',  'Completed'),
(9015, 2, 114, '2025-09-24', 'Dine-in',  'No-show'),
(9016, 2, 116, '2025-09-25', 'Dine-in',  'Completed'),
(9017, 2, 118, '2025-09-26', 'Takeaway', 'Completed'),
(9018, 2, 123, '2025-09-27', 'Dine-in',  'Completed'),
(9019, 2, 125, '2025-09-28', 'Dine-in',  'Cancelled'),
(9020, 2, 129, '2025-09-29', 'Delivery', 'Completed'),

-- Campus Outlet (ID = 3) – fewer, small size orders, high cancellation rate
(9021, 3, 105, '2025-09-20', 'Dine-in',  'No-show'),
(9022, 3, 109, '2025-09-21', 'Takeaway', 'Completed'),
(9023, 3, 115, '2025-09-22', 'Dine-in',  'Cancelled'),
(9024, 3, 121, '2025-09-23', 'Dine-in',  'Completed'),
(9025, 3, 127, '2025-09-24', 'Takeaway', 'No-show'),
(9026, 3, 121, '2025-09-25', 'Dine-in',  'Pending'),
(9027, 3, 105, '2025-09-26', 'Takeaway', 'Cancelled'),
(9028, 3, 109, '2025-09-27', 'Dine-in',  'Completed'),
(9029, 3, 115, '2025-09-28', 'Delivery', 'No-show'),
(9030, 3, 127, '2025-09-29', 'Dine-in',  'Completed');

# Inserting Dummy Data into PAYMENT Table 

INSERT INTO Payment (Payment_ID, Order_ID, Payment_Amount, Payment_Method, Payment_Status) VALUES
-- Central Outlet (9001–9010)
(7001, 9001, 25.80, 'Card',   'Paid'),
(7002, 9002, 32.40, 'Cash',   'Paid'),
(7003, 9003, 12.90, 'Card',   'Paid'),
(7004, 9004, 15.60, 'Card',   'Pending'),
(7005, 9005, 45.00, 'Online', 'Paid'),
(7006, 9006, 52.20, 'Card',   'Paid'),
(7007, 9007, 18.50, 'Cash',   'Refunded'),   -- cancelled order
(7008, 9008, 20.00, 'Card',   'Paid'),
(7009, 9009, 28.70, 'Online', 'Paid'),
(7010, 9010, 17.90, 'Card',   'Pending'),

-- Harbour Outlet (9011–9020)
(7011, 9011, 22.50, 'Online', 'Paid'),
(7012, 9012, 38.20, 'Card',   'Paid'),
(7013, 9013, 30.00, 'Cash',   'Paid'),
(7014, 9014, 27.50, 'Card',   'Paid'),
(7015, 9015, 0.00,  'Card',   'Failed'),     -- no-show
(7016, 9016, 40.00, 'Card',   'Paid'),
(7017, 9017, 12.00, 'Cash',   'Paid'),
(7018, 9018, 55.80, 'Online', 'Paid'),
(7019, 9019, 0.00,  'Card',   'Refunded'),   -- cancelled
(7020, 9020, 23.40, 'Card',   'Paid'),

-- Campus Outlet (9021–9030)
(7021, 9021, 0.00,  'Cash',   'Failed'),     -- no-show
(7022, 9022, 8.90,  'Card',   'Paid'),
(7023, 9023, 0.00,  'Online', 'Refunded'),   -- cancelled
(7024, 9024, 6.50,  'Cash',   'Paid'),
(7025, 9025, 0.00,  'Card',   'Failed'),     -- takeaway no-show
(7026, 9026, 10.20, 'Card',   'Pending'),
(7027, 9027, 0.00,  'Cash',   'Refunded'),   -- cancelled
(7028, 9028, 14.60, 'Online', 'Paid'),
(7029, 9029, 0.00,  'Card',   'Failed'),     -- delivery no-show
(7030, 9030, 18.40, 'Cash',   'Paid');

# Inserting Dummy Data into STAFF Table 

INSERT INTO Staff (Staff_ID, First_Name, Last_Name, Designation, Employment_Status, Manager_ID, Outlet_ID) VALUES
-- Central Outlet (ID = 1) – busiest outlet, bigger team
(201, 'Sarah',  'Lee',      'Manager',   'Active',   NULL, 1),
(202, 'John',   'Smith',    'Barista',   'Active',   201,  1),
(203, 'Emma',   'Jones',    'Server',    'Active',   201,  1),
(204, 'David',  'Brown',    'Chef',      'Active',   201,  1),
(205, 'Maya',   'Nguyen',   'Barista',   'Active',   201,  1),
(206, 'James',  'Wilson',   'Server',    'On Leave', 201,  1),
(207, 'Olivia', 'Taylor',   'Chef',      'Active',   201,  1),
(208, 'Noah',   'White',    'Server',    'Resigned', 201,  1),
(209, 'Grace',  'Martin',   'Barista',   'Active',   201,  1),
(210, 'Leo',    'Thomas',   'Server',    'Part-Time',201,  1),

-- Harbour Outlet (ID = 2) – balanced team, tourist-heavy
(211, 'Marco',  'Diaz',     'Manager',   'Active',   NULL, 2),
(212, 'Chloe',  'Nguyen',   'Barista',   'Active',   211,  2),
(213, 'Daniel', 'Kim',      'Server',    'Active',   211,  2),
(214, 'Sophia', 'Hernandez','Chef',      'Active',   211,  2),
(215, 'Lucas',  'Patel',    'Barista',   'Active',   211,  2),
(216, 'Aria',   'Ali',      'Server',    'On Leave', 211,  2),
(217, 'Ethan',  'Wong',     'Chef',      'Active',   211,  2),
(218, 'Mila',   'Singh',    'Server',    'Resigned', 211,  2),
(219, 'Liam',   'Garcia',   'Barista',   'Active',   211,  2),
(220, 'Isla',   'Rodriguez','Server',    'Part-Time',211,  2),

-- Campus Outlet (ID = 3) – smaller, under-staffed
(221, 'Henry',  'Park',     'Manager',   'Active',   NULL, 3),
(222, 'Zoe',    'Lopez',    'Barista',   'Active',   221,  3),
(223, 'Ryan',   'Khan',     'Server',    'Active',   221,  3),
(224, 'Lily',   'Adams',    'Chef',      'On Leave', 221,  3),
(225, 'Eli',    'Sharma',   'Barista',   'Active',   221,  3),
(226, 'Ava',    'Baker',    'Server',    'Active',   221,  3),
(227, 'Omar',   'Davies',   'Chef',      'Resigned', 221,  3),
(228, 'Ella',   'Ng',       'Server',    'Part-Time',221,  3),
(229, 'Adam',   'Hassan',   'Barista',   'Active',   221,  3),
(230, 'Nora',   'Scott',    'Server',    'Active',   221,  3);


# Inserting Dummy Data into OUTLET-PRODUCT Table 

INSERT INTO Outlet_Product (Product_ID, Outlet_ID, Outlet_Status) VALUES
-- Central (ID = 1) → wide menu, everything available
(1001, 1, 'Available'),
(1002, 1, 'Available'),
(1003, 1, 'Available'),
(1004, 1, 'Available'),
(1005, 1, 'Available'),
(1006, 1, 'Available'),
(1018, 1, 'Available'),
(1020, 1, 'Available'),
(1022, 1, 'Available'),
(1024, 1, 'Available'),

-- Harbour (ID = 2) → strong in Cold Drinks/Desserts, some meals missing
(1011, 2, 'Available'),
(1012, 2, 'Available'),
(1013, 2, 'Unavailable'),   -- Cold Brew not offered
(1014, 2, 'Available'),
(1016, 2, 'Available'),
(1024, 2, 'Available'),
(1025, 2, 'Available'),
(1026, 2, 'Available'),
(1019, 2, 'Unavailable'),   -- Pancakes not served
(1023, 2, 'Available'),

-- Campus (ID = 3) → limited to Beverages & Desserts
(1001, 3, 'Available'),
(1003, 3, 'Available'),
(1004, 3, 'Available'),
(1010, 3, 'Available'),
(1011, 3, 'Unavailable'),   -- Iced Latte not sold
(1018, 3, 'Unavailable'),   -- Meals not sold at campus
(1020, 3, 'Unavailable'),   -- Wraps not offered
(1022, 3, 'Unavailable'),   -- Salads not offered
(1024, 3, 'Available'),
(1025, 3, 'Available');


# Inserting Dummy Data into ORDER_PRODUCT Table 

INSERT INTO Order_Product (Order_ID, Product_ID, Quantity, Price) VALUES
-- Central Orders
(9001, 1003, 2, 4.90),   -- 2 Lattes
(9001, 1024, 1, 6.50),   -- Cheesecake
(9002, 1004, 3, 4.90),   -- 3 Cappuccinos
(9002, 1020, 1, 11.00),  -- Chicken Wrap
(9003, 1005, 2, 4.90),   -- Flat White
(9004, 1010, 2, 5.00),   -- Hot Chocolate
(9005, 1018, 2, 10.50),  -- Avocado Toast
(9005, 1023, 1, 14.00),  -- Quinoa Bowl
(9006, 1019, 2, 12.00),  -- Pancakes
(9006, 1022, 1, 13.50),  -- Caesar Salad

-- Harbour Orders
(9011, 1011, 2, 6.50),   -- Iced Latte
(9012, 1014, 2, 7.50),   -- Mango Smoothie
(9012, 1025, 1, 4.50),   -- Croissant
(9013, 1016, 2, 6.00),   -- Orange Juice
(9014, 1026, 2, 5.00),   -- Brownies
(9015, 1012, 1, 7.00),   -- Iced Mocha (no-show, failed)
(9016, 1023, 2, 14.00),  -- Quinoa Bowl
(9017, 1017, 1, 6.00),   -- Apple Juice
(9018, 1024, 2, 6.50),   -- Cheesecake
(9018, 1026, 1, 5.00),   -- Brownie

-- Campus Orders
(9021, 1003, 1, 4.90),   -- Latte (no-show)
(9022, 1001, 1, 3.50),   -- Short Black
(9022, 1025, 1, 4.50),   -- Croissant
(9023, 1018, 1, 10.50),  -- Avocado Toast (cancelled)
(9024, 1004, 1, 4.90),   -- Cappuccino
(9025, 1003, 1, 4.90),   -- Latte (no-show)
(9026, 1010, 2, 5.00),   -- Hot Chocolate
(9027, 1005, 1, 4.90),   -- Flat White (cancelled)
(9028, 1024, 1, 6.50),   -- Cheesecake
(9030, 1003, 2, 4.90);   -- Lattes


# Inserting Dummy data into SHIFT-STAFF Table 

INSERT INTO Staff_Shift (Staff_ID, Shift_ID, Staff_Role, Working_Hours) VALUES
-- Central Outlet (Staff 201–210, Shifts 1001–1010)
(201, 1001, 'Manager on Duty', 4.00),
(202, 1001, 'Barista',         4.00),
(203, 1002, 'Server',          4.00),
(204, 1002, 'Chef',            5.00),
(205, 1003, 'Barista',         4.00),
(207, 1004, 'Chef',            5.00),
(209, 1005, 'Barista',         4.00),
(210, 1006, 'Server',          3.50),
(206, 1007, 'Server',          0.00),   -- On Leave (under-utilisation)
(208, 1008, 'Server',          0.00),   -- Resigned (gap shown)

-- Harbour Outlet (Staff 211–220, Shifts 2001–2010)
(211, 2001, 'Manager on Duty', 4.00),
(212, 2001, 'Barista',         4.00),
(213, 2002, 'Server',          4.00),
(214, 2002, 'Chef',            5.00),
(215, 2003, 'Barista',         4.00),
(217, 2004, 'Chef',            5.00),
(219, 2005, 'Barista',         4.00),
(220, 2006, 'Server',          3.50),
(216, 2007, 'Server',          0.00),   -- On Leave
(218, 2008, 'Server',          0.00),   -- Resigned

-- Campus Outlet (Staff 221–230, Shifts 3001–3010)
(221, 3001, 'Manager on Duty', 4.00),
(222, 3001, 'Barista',         4.00),
(223, 3002, 'Server',          4.00),
(225, 3002, 'Barista',         4.00),
(226, 3003, 'Server',          3.50),
(229, 3004, 'Barista',         4.00),
(230, 3005, 'Server',          4.00),
(224, 3006, 'Chef',            0.00),   -- On Leave
(227, 3007, 'Chef',            0.00),   -- Resigned
(228, 3008, 'Server',          2.00);   -- Part-Time


