WITH OrderedData AS (
    SELECT
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rowIndex,
        COUNT(*) OVER () AS totalRows
    FROM STATION
)
SELECT
    ROUND(AVG(LAT_N), 4) AS Median
FROM OrderedData
WHERE
    rowIndex IN (FLOOR((totalRows + 1) / 2), CEIL((totalRows + 1) / 2));



--ROW_NUMBER() OVER (ORDER BY LAT_N) her bir satıra sıralı bir indeks numarası (rowIndex) atar.
--COUNT(*) OVER () toplam satır sayısını (totalRows) hesaplar ve her satıra ekle
--Eğer toplam satır sayısı tek ise sadece bir satır seçilir. Çift ise iki satır seçilir ve bunların ortalaması alınır.
