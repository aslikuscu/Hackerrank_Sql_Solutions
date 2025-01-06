Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.

Input Format

The following tables contain data on the wands in Ollivander's inventory:

Wands: The id is the id of the wand, code is the code of the wand, coins_needed is the total number of gold galleons needed to buy the wand, and power denotes the quality of the wand (the higher the power, the better the wand is). 

![image](https://github.com/user-attachments/assets/3af5013a-2f1a-4a0e-892e-06f7a6f1921b)

Wands_Property: The code is the code of the wand, age is the age of the wand, and is_evil denotes whether the wand is good for the dark arts. If the value of is_evil is 0, it means that the wand is not evil. The mapping between code and age is one-one, meaning that if there are two pairs,  and , then  and .

![image](https://github.com/user-attachments/assets/ba4204b9-c558-4de2-9d01-e181a2c6497a)

Sample Input

Wands Table:  

![image](https://github.com/user-attachments/assets/874eb2b5-84a9-4435-9633-e50d38b7b10a)

Wands_Property Table: 

![image](https://github.com/user-attachments/assets/d8d02455-0142-422d-96e9-893ca03eff11)

Sample Output

9 45 1647 10
12 17 9897 10
1 20 3688 8
15 40 6018 7
19 20 7651 6
11 40 7587 5
10 20 504 5
18 40 3312 3
20 17 5689 3
5 45 6020 2
14 40 5408 1
