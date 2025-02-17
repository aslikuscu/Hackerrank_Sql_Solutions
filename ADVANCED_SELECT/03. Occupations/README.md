Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Input Format

The OCCUPATIONS table is described as follows:

![](https://s3.amazonaws.com/hr-challenge-images/12889/1443816414-2a465532e7-1.png)

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

Sample Input

![](https://s3.amazonaws.com/hr-challenge-images/12890/1443817648-1b2b8add45-2.png)

Sample Output

Jenny    Ashley     Meera  Jane <br>
Samantha Christeen  Priya  Julia <br>
NULL     Ketty      NULL   Maria <br>
Explanation

The first column is an alphabetically ordered list of Doctor names. <br>
The second column is an alphabetically ordered list of Professor names. <br>
The third column is an alphabetically ordered list of Singer names. <br>
The fourth column is an alphabetically ordered list of Actor names. <br>
The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with NULL values.
