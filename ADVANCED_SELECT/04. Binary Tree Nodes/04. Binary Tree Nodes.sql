SELECT N,
    CASE 
        WHEN P IS NULL THEN 'Root' 
        WHEN N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
        ELSE 'Inner'
    END 
FROM BST
ORDER BY N;



-- Aciklamadaki [ P is the parent of N ] kismindan dolayi [ WHEN P IS NULL THEN 'Root' ] yazdik
-- P IS NULL: Ebeveyni olmayan düğüm kök düğümdür (Root).


-- WHEN N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
-- yani P'de null olmayan degerlere bakiyoruz. eger n'deki degerler p'de yoksa 'leaf' diyoruz. 
-- eger n'deki degerler p'de varsa Inner (İç Düğüm) diyoruz yani bir ikili ağaçta hem ebeveyni (parent) olan hem de çocuğu (child) bulunan düğümlere verilen isimdir. Yani, Root veya Leaf olmayan tüm düğümler Inner olarak adlandırılır.
