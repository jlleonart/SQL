SELECT * 
FROM Major m
JOIN MajorClass mc
on Majorid =m.Id
JOIN Class c
on c.Id = mc.ClassId
JOIN Instructor i
on i.Id = c.InstructorId
