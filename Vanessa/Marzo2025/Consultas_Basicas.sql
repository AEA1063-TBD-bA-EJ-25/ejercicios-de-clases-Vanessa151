use Northwind;

SELECT * from Employees;
SELECT * from Products;
SELECT * from Suppliers;
SELECT * from Orders;
SELECT * from [Order Details];

select employeeid, lastname, FirstName
    from Employees;

select productname, unitPrice 
    from Products;

select productname, unitPrice 
    from Products
    where ProductID=1;

select productname, unitPrice 
    from Products
    where ProductID=4;

select productname, unitPrice, categoryid
    from Products
    where not (UnitPrice=30);

select productname, unitPrice, categoryid
    from Products
    where UnitPrice<=30;


select productname, unitPrice, categoryid
    from Products
    where UnitPrice BETWEEN 30 and 40;


select productname, unitPrice, categoryid
    from Products
    where Productid in (4,8,2,3,6,1,5,32);


select productname, unitPrice, categoryid
    from Products
    where Productname like '%C%';


select productname, unitPrice, categoryid
    from Products
    where Productname like '_a%';

select productname, unitPrice, categoryid
    from Products
    where Productname like '[a-c]%';

select productname, unitPrice, categoryid
    from Products
    where Productname like '[a,c]%';

select * from Employees 
    where Region is null;

select productname, unitPrice, categoryid
    from Products
    where Productname like '%C%'
        or 
        UnitPrice = 30;

select productname, unitPrice, categoryid
    from Products
    where Productname like '%C%'
        and 
        UnitPrice = 30;

select * from Products
    where UnitPrice = 30 or unitprice=40;

select * from Products
    where UnitPrice in (30, 40);

select productid, productname, unitPrice, categoryid
    from Products
    where UnitPrice BETWEEN 30 and 40
        and CategoryID=2;

select orderid, lastname, companyname, orderdate, shippeddate,datediff(DAY, orderdate, shippeddate) from orders
    join Employees on employees.EmployeeID= orders.EmployeeID
    join Customers on Customers.CustomerId= orders.CustomerId
    where orderId= 10252

select max(UnitPrice) from Products;
select min(UnitPrice) from Products;
select avg(UnitPrice) from Products;
select sum(UnitPrice) from Products;

Select CategoryID, avg(Unitprice) from Products
    GROUP BY CategoryID

Select CategoryID, avg(Unitprice) AS PrecioPromedio from Products
    GROUP BY CategoryID
    ORDER BY PrecioPromedio DESC

 
Select CategoryID, count(*) from Products
    GROUP BY CategoryID

Select unitprice * 1.10 from Products

select COUNT(*) from Products
    where Discontinued=1

select count(*) from [Order Details]
    WHERE [orderid] = 10250;

select sum(UnitPrice*Quantity- discount*UnitPrice*Quantity)from [Order Details]
    where OrderID=10250

select sum(UnitPrice*Quantity- discount*UnitPrice*Quantity)from [Order Details] ;

select sum(UnitPrice*Quantity- discount*UnitPrice*Quantity)from [Order Details] 
    where orderDate= 1999;

select sum([Order Details].UnitPrice*Quantity- discount*[Order Details].UnitPrice*Quantity)  from [Order Details] 
 Join Products on [Order Details].ProductID=Products.ProductID
 WHERE CategoryID=1;

select sum(OD.UnitPrice*Quantity- discount*OD.UnitPrice*Quantity) AS mango from [Order Details]OD
 Join Products P  on OD.ProductID=P.ProductID
 WHERE CategoryID=1;

SELECT CategoryID from Categories
    where CategoryName like '%Beverages';

select sum(OD.UnitPrice*Quantity- discount*OD.UnitPrice*Quantity)as  mango from [Order Details]OD
    join Orders O on O.OrderID =OD.OrderID
    WHERE Year(OrderDate)= 1997;

select sum(OD.UnitPrice*Quantity- discount*OD.UnitPrice*Quantity)as  mango from [Order Details]OD
    join Orders O on O.OrderID =OD.OrderID
    WHERE Year(OrderDate)= 1997;


select datename(MONTH,[Order Details].orderDate) , categories.categotyname, sum([OD.UnitPrice*Quantity- discount*OD.UnitPrice*Quantity) from [Order Details]
     join orders on orders.OrderID= [Order Details].[OrderID]
     join products on Products.ProductID= [Order Details].[ProductID]
     join Categories on Categories.CategoryID= products.CategoryID
      WHERE Year(OrderDate)= 1997;
    group by datename(MONTH,[Order Details].orderDate), categories.categotyname
    group by datepart (MONTH, [Order Details].orderDate), categories.categotyname ASC


SELECT datename(month, O.OrderDate) MES, c.CategoryName, sum(OD.UnitPrice*Quantity- discount*OD.UnitPrice*Quantity) AS TOTAL_DE_VENTAS from [Order Details] as OD
    join orders AS O on O.OrderID= OD.[OrderID]
    join products as P on P.ProductID= OD.[ProductID]
    join Categories as c on c.CategoryID= P.CategoryID
    WHERE Year(OrderDate)= 1997;
    group by datepart (MONTH, OD.orderDate),datename(MONTH,OD.orderDate), c.CategoryName
    group by datepart (MONTH, OD.orderDate), c.CategoryName ASC;


select ProductID, ProductName, c.CategoryID, CategoryName from Products
    JOIN Categories c on Products.CategoryID = c.CategoryID;

SELECT FirstName, LastName, City from Employees  
    where DATEDIFF(YEAR, BirthDate, SYSDATETIME() )<60;


select OrderID, sum(Quantity*(1-discount)*[Order Details].UnitPrice) AS Importe from [Order Details]
    GROUP BY OrderID
    HAVING sum(Quantity*(1-discount)*[Order Details].UnitPrice) < 500
    ORDER by Importe

--con variable
declare @maximo money;
select @maximo= max(UnitPrice) from Products;

select ProductName from Products
    where UnitPrice=@maximo;
--Sin variable
select ProductName, UnitPrice from Products
    where UnitPrice= (select max(UnitPrice) from Products)

select companyName, Orders.CustomerID from Customers
Join Orders on Customers.CustomerID= Orders.CustomerID
where OrderDate>'1/01/1995'

select