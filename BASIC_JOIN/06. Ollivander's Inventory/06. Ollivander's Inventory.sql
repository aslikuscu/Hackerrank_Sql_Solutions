SELECT W.ID, WP.AGE, W.COINS_NEEDED, W.POWER
FROM WANDS W
JOIN WANDS_PROPERTY WP ON W.CODE = WP.CODE
WHERE WP.IS_EVIL = 0
AND W.COINS_NEEDED = (
    SELECT MIN(W1.COINS_NEEDED)
    FROM WANDS W1
    JOIN WANDS_PROPERTY WP1 ON W1.CODE = WP1.CODE
    WHERE W1.POWER = W.POWER AND WP1.AGE = WP.AGE
)
ORDER BY W.POWER DESC, WP.AGE DESC


-- Eğer bu koşulu eklemezsek, aynı power ve age değerlerine sahip tüm asalar sorguya dahil edilir. 
-- Biz sadece her grup için en ucuz asayı istediğimizden, bu filtreleme gereklidir.
-- W1.POWER = W.POWER → Aynı güç seviyesindeki (power) asalar seçiliyor.
-- WP1.AGE = WP.AGE → Aynı yaşa (age) sahip asalar seçiliyor.
-- MIN(W1.COINS_NEEDED) → Bu eşleşmeler arasından en düşük coins_needed (fiyat) değeri seçiliyor.
