You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.

![image](https://github.com/user-attachments/assets/0655bff5-7e40-4b76-9984-bc21c4db3108)


Grades contains the following data:

![image](https://github.com/user-attachments/assets/314cd470-8461-4b5a-944f-fe46444730df)


Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.

Sample Input

![image](https://github.com/user-attachments/assets/f8067e00-822a-4ab0-99ab-2b277bda43a0)


Sample Output

Maria 10 99
Jane 9 81
Julia 9 88 
Scarlet 8 78
NULL 7 63
NULL 7 68

Note

Print "NULL"  as the name if the grade is less than 8.

Explanation

Consider the following table with the grades assigned to the students:

![image](https://github.com/user-attachments/assets/45d48d8a-424e-4100-ab59-b7bad4dafea2)


So, the following students got 8, 9 or 10 grades:

Maria (grade 10)
Jane (grade 9)
Julia (grade 9)
Scarlet (grade 8)
