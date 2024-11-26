SELECT 
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END),
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END),
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END),
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END)
    
FROM (
    SELECT Name, Occupation, ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) AS RowNum 
    FROM OCCUPATIONS
) AS RankedOccupations

GROUP BY RowNum
ORDER BY RowNum;

--ROW_NUMBER(): Bu fonksiyon, her satıra benzersiz bir sıra numarası atar.

--OVER(): ROW_NUMBER() fonksiyonunun nasıl uygulanacağını belirler. Bu kısım, sıralama ve gruplama kriterlerini içerir.

--PARTITION BY Occupation: Bu ifade, Occupation (Meslek) sütununa göre gruplama yapar. Yani, her meslek için sıralama başlatılır. Örneğin, "Doktor" mesleğine sahip tüm kişiler için 1'den başlayarak sıralama yapılır, ardından "Mühendis" mesleğine sahip kişiler için sıralama yeniden başlar.

--ORDER BY Name: Bu ifade, her meslek grubu içinde sıralamanın nasıl yapılacağını belirtir. Name sütununa göre sıralama yapılır (bu örnekte isme göre artan sıralama yapılır).

--AS RowNum: Bu, ROW_NUMBER() fonksiyonunun sonucunu RowNum adıyla döndürür. Yani her kişiye, o meslek grubu içindeki sırasını belirleyen bir numara atanır.
