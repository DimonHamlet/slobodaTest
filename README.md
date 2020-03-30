# Sloboda Studio Test task

### 1. Candies

Candy weighs X grams, tangerine - Y grams and apple - Z grams.
Need to write a program that will determine how many different versions of gifts weighing exactly W grams can make Santa Claus.

##### Input data

 - Function should receive four integers X, Y, Z and W.

##### Output data

 - Function should return a single integer - the number of gift options.

##### Example:

 - X = 10
 - Y = 25
 - Z = 15
 - W = 40
 - Result: 3

### 2. Secretary Jeniffer

Jenifer, our secretary, went to the office late today, and it is urgently necessary to save time to have a dinner, but she needs N copies of the same document.
There are two Xerox, one of which copies the list of paper for x seconds, and the other one - for y seconds. (You may use one Xerox machine, or both at the same time. You can not only copy from the original, but also use a copy.)
To help her to find out what is the minimum time it will take.

##### Input data

 - Function should receive three integers: N, x and y

##### Output data

 - Function should return a single number - the minimum time in seconds required for the preparation of N copies.

##### Example:

 - N = 4
 - x = 1
 - y = 1
 - Result: 3

### 3. Sloboda friends

Sloboda has N people. Many of them are friends. Also, interesting fact is that friends of friends are also friends.
You need to find out how much friends has a particular person in the company.

##### Input data

 - Function should receive next params:
N - number of people in the company
S - a specific number of person
Matrix N lines contain N numbers consisting of ones and zeros. And the unit standing in the i-th row and j-th column ensures that people with numbers i and j - friends, and 0 - expresses uncertainty.

##### Output data

 - Function should return number of the certain friends of the person with the S number, remembering transitive friendship.

##### Example:

 - N = 3
 - S = 1
 - Matrix =
0  1  0
1   0  1
0  1  0
 - Result: 2
##### Example2:
 - N = 5
 - S = 2
 - Matrix =
0  0 0  0  0
0  0  1   0 0
0   1  0  0  1
0  0  0  0  1
0  0  1   1  0
 - Result: 3
