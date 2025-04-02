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