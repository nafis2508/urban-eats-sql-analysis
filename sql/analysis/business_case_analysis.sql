# BUSINESS CONCERN 1 SALES AND PROFITABILITY
-- Revenue by product category (total $ = qty * price)
SELECT pc.Product_Category_Name,
       SUM(op.Quantity * op.Price) AS Revenue
FROM Order_Product op
JOIN Product p           ON p.Product_ID = op.Product_ID
JOIN Product_Category pc ON pc.Product_Category_ID = p.Category_ID
GROUP BY pc.Product_Category_Name
ORDER BY Revenue DESC;

-- Orders by outlet and status (volume + health of pipeline)
SELECT o.Outlet_Name,
       ord.Order_Status,
       COUNT(*) AS Num_Orders
FROM Orders ord
JOIN Outlet o ON o.Outlet_ID = ord.Outlet_ID
GROUP BY o.Outlet_Name, ord.Order_Status
ORDER BY o.Outlet_Name, Num_Orders DESC;

-- Total revenue by outlet (paid amounts)
SELECT o.Outlet_Name,
       SUM(p.Payment_Amount) AS Total_Revenue
FROM Payment p
JOIN Orders ord ON p.Order_ID = ord.Order_ID
JOIN Outlet o   ON ord.Outlet_ID = o.Outlet_ID
GROUP BY o.Outlet_Name
ORDER BY Total_Revenue DESC;

-- Category revenue by outlet (find which branches carry which profit buckets)
SELECT o.Outlet_Name,
       pc.Product_Category_Name,
       SUM(op.Quantity * op.Price) AS Revenue
FROM Orders ord
JOIN Outlet o           ON o.Outlet_ID = ord.Outlet_ID
JOIN Order_Product op   ON op.Order_ID = ord.Order_ID
JOIN Product p          ON p.Product_ID = op.Product_ID
JOIN Product_Category pc ON pc.Product_Category_ID = p.Category_ID
GROUP BY o.Outlet_Name, pc.Product_Category_Name
ORDER BY o.Outlet_Name, Revenue DESC;

# BUSINESS CONCERN 2 CUSTOMER RETENTION 

-- Customers loyal to a category (2+ orders in same category)
SELECT c.Customer_ID,
       c.First_Name,
       c.Last_Name,
       pc.Product_Category_Name,
       COUNT(*) AS Orders_In_Category
FROM Orders o
JOIN Order_Product op   ON op.Order_ID = o.Order_ID
JOIN Product p          ON p.Product_ID = op.Product_ID
JOIN Product_Category pc ON pc.Product_Category_ID = p.Category_ID
JOIN Customer c         ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID, c.First_Name, c.Last_Name, pc.Product_Category_Name
HAVING COUNT(*) >= 2
ORDER BY Orders_In_Category DESC;


-- Loyal vs one-timer by outlet (customer order counts per outlet)
SELECT o.Outlet_Name,
       c.Customer_ID,
       c.First_Name,
       c.Last_Name,
       COUNT(*) AS Orders_At_Outlet,
       CASE WHEN COUNT(*) >= 2 THEN 'Loyal' ELSE 'One-timer' END AS Segment
FROM Orders ord
JOIN Outlet o   ON o.Outlet_ID = ord.Outlet_ID
JOIN Customer c ON c.Customer_ID = ord.Customer_ID
GROUP BY o.Outlet_Name, c.Customer_ID, c.First_Name, c.Last_Name
ORDER BY o.Outlet_Name, Orders_At_Outlet DESC;


-- Failed / no-show signals tied to churn risk
SELECT c.Customer_ID,
       c.First_Name,
       c.Last_Name,
       ord.Order_ID,
       COALESCE(p.Payment_Status, 'No Payment') AS Payment_Status,
       ord.Order_Status
FROM Orders ord
LEFT JOIN Payment p ON p.Order_ID = ord.Order_ID
JOIN Customer c     ON c.Customer_ID = ord.Customer_ID
WHERE COALESCE(p.Payment_Status, 'No Payment') IN ('Failed','Refunded','Pending','No Payment')
   OR ord.Order_Status IN ('Cancelled','No-show')
ORDER BY c.Customer_ID, ord.Order_ID;


-- Reservation → order conversion rate by outlet (loyalty signal)
-- Assumes Reservation has Customer_ID and an Order can be linked via Customer + date window or a Reservation_ID if present.
SELECT o.Outlet_Name,
       SUM(CASE WHEN r.Status = 'Completed' THEN 1 ELSE 0 END)                  AS Reservations_Completed,
       SUM(CASE WHEN r.Status IN ('No-show','Cancelled') THEN 1 ELSE 0 END)     AS Reservations_Failed,
       COUNT(*)                                                                  AS Reservations_Total,
       ROUND(100.0 * SUM(CASE WHEN r.Status='Completed' THEN 1 ELSE 0 END)
             / NULLIF(COUNT(*),0), 1)                                           AS Reservation_Completion_Pct
FROM Reservation r
JOIN Outlet o ON o.Outlet_ID = r.Outlet_ID
GROUP BY o.Outlet_Name
ORDER BY Reservation_Completion_Pct DESC;


# BUSINESS CONCERN 3 - MENU OPTIMISATION 
-- Underperforming categories (low order count)
SELECT pc.Product_Category_Name,
       COUNT(*) AS Times_Ordered
FROM Order_Product op
JOIN Product p           ON p.Product_ID = op.Product_ID
JOIN Product_Category pc ON pc.Product_Category_ID = p.Category_ID
GROUP BY pc.Product_Category_Name
ORDER BY Times_Ordered ASC;














-- Underperforming products (identify items to prune)
SELECT p.Product_Name,
       COUNT(*) AS Times_Ordered
FROM Order_Product op
JOIN Product p ON p.Product_ID = op.Product_ID
GROUP BY p.Product_Name
ORDER BY Times_Ordered ASC, p.Product_Name;








-- Product sales by outlet (see where each item actually sells)
SELECT o.Outlet_Name,
       p.Product_Name,
       SUM(op.Quantity) AS Units_Sold,
       SUM(op.Quantity * op.Price) AS Revenue
FROM Orders ord
JOIN Outlet o         ON o.Outlet_ID = ord.Outlet_ID
JOIN Order_Product op ON op.Order_ID = ord.Order_ID
JOIN Product p        ON p.Product_ID = op.Product_ID
GROUP BY o.Outlet_Name, p.Product_Name
ORDER BY o.Outlet_Name, Revenue DESC;






# BUSINESS CONCERN 4 - STAFF SCHEDULING AND PERFORMANCE 

-- Shift utilisation: how full were shifts staffed vs Max_Staff
SELECT s.Shift_ID,
       s.Outlet_ID,
       s.Max_Staff,
       COUNT(ss.Staff_ID) AS Assigned,
       ROUND(100.0 * COUNT(ss.Staff_ID) / NULLIF(s.Max_Staff,0), 1) AS Utilisation_Pct
FROM Shift s
LEFT JOIN Staff_Shift ss ON ss.Shift_ID = s.Shift_ID
GROUP BY s.Shift_ID, s.Outlet_ID, s.Max_Staff
ORDER BY Utilisation_Pct ASC;






-- Active vs total staff by outlet (capacity view)
SELECT o.Outlet_Name,
       COUNT(*) AS Total_Staff,
       SUM(CASE WHEN s.Employment_Status='Active' THEN 1 ELSE 0 END) AS Active_Staff
FROM Staff s
JOIN Outlet o ON s.Outlet_ID = o.Outlet_ID
GROUP BY o.Outlet_Name
ORDER BY Active_Staff DESC;







-- Active vs total staff by outlet (capacity view)
SELECT o.Outlet_Name,
       COUNT(*) AS Total_Staff,
       SUM(CASE WHEN s.Employment_Status='Active' THEN 1 ELSE 0 END) AS Active_Staff
FROM Staff s
JOIN Outlet o ON s.Outlet_ID = o.Outlet_ID
GROUP BY o.Outlet_Name
ORDER BY Active_Staff DESC;





-- Category skills vs outlet demand (barista vs chef vs baker)
-- Map category groups to roles for mismatch checks.
SELECT o.Outlet_Name,
       CASE
         WHEN pc.Product_Category_Name IN ('Espresso Classics','Milk Coffees','Iced Coffees','Cold Drinks','Smoothies','Juices') THEN 'Barista'
         WHEN pc.Product_Category_Name IN ('Breakfast','Bowls & Salads','Meals') THEN 'Chef'
         WHEN pc.Product_Category_Name IN ('Cakes & Pastries','Cookies & Desserts') THEN 'Server/Baker'
         ELSE 'Other'
       END AS Role_Group,
       SUM(op.Quantity) AS Units_Sold
FROM Orders ord
JOIN Outlet o           ON o.Outlet_ID = ord.Outlet_ID
JOIN Order_Product op   ON op.Order_ID = ord.Order_ID
JOIN Product p          ON p.Product_ID = op.Product_ID
JOIN Product_Category pc ON pc.Product_Category_ID = p.Category_ID
GROUP BY o.Outlet_Name, Role_Group
ORDER BY o.Outlet_Name, Units_Sold DESC;





# BUSINESS CONCERN 5 - BRANCH LEVEL OPERATIONAL EFFICIENCY 

-- Available vs Unavailable products per outlet (menu breadth)
SELECT o.Outlet_Name,
       op.Outlet_Status,
       COUNT(*) AS Product_Count
FROM Outlet_Product op
JOIN Outlet o ON op.Outlet_ID = o.Outlet_ID
GROUP BY o.Outlet_Name, op.Outlet_Status
ORDER BY o.Outlet_Name, op.Outlet_Status;





-- Count of AVAILABLE products by outlet (quick capacity proxy)
SELECT o.Outlet_Name,
       COUNT(*) AS Available_Products
FROM Outlet_Product op
JOIN Outlet o ON op.Outlet_ID = o.Outlet_ID
WHERE op.Outlet_Status = 'Available'
GROUP BY o.Outlet_Name
ORDER BY Available_Products DESC;



-- Reservation conversion quality by outlet (service reliability)
SELECT o.Outlet_Name,
       r.Status,
       COUNT(*) AS Cnt
FROM Reservation r
JOIN Outlet o ON r.Outlet_ID = o.Outlet_ID
GROUP BY o.Outlet_Name, r.Status
ORDER BY o.Outlet_Name, Cnt DESC;



-- Orders and payments by outlet (end-to-end flow)
SELECT o.Outlet_Name,
       COUNT(DISTINCT ord.Order_ID)                                  AS Total_Orders,
       SUM(CASE WHEN ord.Order_Status='Completed' THEN 1 ELSE 0 END) AS Completed_Orders,
       SUM(p.Payment_Amount)                                         AS Total_Revenue
FROM Orders ord
LEFT JOIN Payment p ON p.Order_ID = ord.Order_ID
JOIN Outlet o       ON o.Outlet_ID = ord.Outlet_ID
GROUP BY o.Outlet_Name
ORDER BY Total_Revenue DESC;


