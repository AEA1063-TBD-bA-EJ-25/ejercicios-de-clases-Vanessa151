use social

select h.name, h1.name from Highschooler h
    JOIN  Friend F ON h.id = f.ID1
    JOIN Highschooler h1 ON h1.id = f.ID2
    where h.name= 'Gabriel'

select * from Likes

select * from Highschooler H1
    join Likes l on h1.ID=l.ID1
    join Highschooler h2 on h2.ID=l.ID2
    where h2.grade=h1.grade-2
    
H.name, H.grade Grado, h1.name Nombre, h1.grade grado 

select h1.grade Grado,h1.name Nombre,  h1.grade Grado, h2.name Nombre  from Likes L1
    join Highschooler H1 on l1.ID1= h1.ID
    join likes L2 on l1.ID2=l2.ID1
    join Highschooler H2 on L2.ID1= h2.ID
    where l1.ID1= l2.ID2



select * from Highschooler
select * from Likes
select * from Friend