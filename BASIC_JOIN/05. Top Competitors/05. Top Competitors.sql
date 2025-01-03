select h.Hacker_Id, h.Name
from submissions s
inner join Challenges c on c.challenge_id = s.challenge_id 
inner join Difficulty d on d.difficulty_level = c.difficulty_level and d.score = s.score
inner join Hackers h on s.hacker_id = h.hacker_id 
group by h.hacker_id, h.name
having count(s.score) > 1
order by count(s.score) desc, h.hacker_Id

-- Soruda, birden fazla zorlukta tam puan alan hacker'ların hacker_id ve isimlerini, 
-- tam puan aldıkları zorluk sayısına göre azalan sırada (eşitlik durumunda hacker_id'ye göre artan sırada) listelememiz isteniyor.

-- ilk inner join: submissions tablosundaki hangi challenge_id, hangi zorluk seviyesine denk geldigini gosterir 

-- ikinci inner join: her zorluğun kendine özel bir tam puanı var. Kolay zorlukta tam puan: 10, Zor zorlukta tam puan: 100

-- Difficulty tablosu zorluk seviyelerinin hangi tam puana denk geldigini gosteriyor

-- Hacker'ın submission'dan aldığı puan (s.score), diffiuclty tablosundan aldigi puana (d.score) eşitse, 
-- Hacker, o zorluktan alınabilecek en yüksek puanı yani "tam puan"i almıştır.

-- ucuncu inner join: hacker_id'leri birlestirerek hangi isme denk geldigini ogrenmis olduk

-- COUNT(s.score) her hacker için tam puan aldığı zorlukların toplam sayısını hesaplar.
-- HAVING ifadesi, bu toplamın 1'den büyük olduğu grupları (hacker'ları) seçer.
