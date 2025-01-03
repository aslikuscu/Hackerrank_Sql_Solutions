Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

Input Format

The following tables contain contest data:

Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker. 
![image](https://github.com/user-attachments/assets/61e88568-3422-4cda-8212-512a1fe97233)

Difficulty: The difficult_level is the level of difficulty of the challenge, and score is the score of the challenge for the difficulty level. 
![image](https://github.com/user-attachments/assets/0961afc6-d8fb-452f-a645-c4772f73665e)

Challenges: The challenge_id is the id of the challenge, the hacker_id is the id of the hacker who created the challenge, and difficulty_level is the level of difficulty of the challenge. 
![image](https://github.com/user-attachments/assets/ace14d96-e511-4338-9381-ae9b753e7706)

Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id is the id of the challenge that the submission belongs to, and score is the score of the submission. 
![image](https://github.com/user-attachments/assets/37bc8df5-ff21-4870-8820-db7266735907)

Sample Input

Hackers Table:  
![image](https://github.com/user-attachments/assets/c9bf918f-c680-42ae-938d-c4005f8ac547)

Difficulty Table:  
![image](https://github.com/user-attachments/assets/befcf40d-300d-4884-8874-07cadeb0b5ab)

Challenges Table:  
![image](https://github.com/user-attachments/assets/83deb2a2-acdf-4416-8045-87962cc629aa)

Submissions Table: 
![image](https://github.com/user-attachments/assets/77722492-a9c5-4b51-9e41-3390486ce015)

Sample Output

90411 Joe

Explanation

Hacker 86870 got a score of 30 for challenge 71055 with a difficulty level of 2, so 86870 earned a full score for this challenge.

Hacker 90411 got a score of 30 for challenge 71055 with a difficulty level of 2, so 90411 earned a full score for this challenge.

Hacker 90411 got a score of 100 for challenge 66730 with a difficulty level of 6, so 90411 earned a full score for this challenge.

Only hacker 90411 managed to earn a full score for more than one challenge, so we print the their hacker_id and name as  space-separated values
