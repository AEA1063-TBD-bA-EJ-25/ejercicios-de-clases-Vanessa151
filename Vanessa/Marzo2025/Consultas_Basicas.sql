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