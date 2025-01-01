select
    if(g.Grade<8, NULL, s.Name),
    g.grade,
    s.marks
from
    Students s,
    Grades g 
where
    s.marks between g.Min_Mark and g.Max_Mark
order by 
    g.grade desc,
    s.name
