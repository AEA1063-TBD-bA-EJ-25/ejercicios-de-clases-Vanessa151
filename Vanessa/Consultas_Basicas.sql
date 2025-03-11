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
    where UnitPrice=30;

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
    where Productname like 'C%';
    