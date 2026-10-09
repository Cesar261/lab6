# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - How might you add more than two bits together?
Just chain a bunch of full adders together. You basically take the carry-out from the first one and plug it straight into the carry-in of the next one down the line.
### 2 - What is the importance of the XOR gate in an adder?
It's the part that actually does the sum. Just like the stairway light switch from the first part of the lab, it only outputs a 1 if exactly one switch is flipped. If both are 1, it outputs 0 and makes the AND gate handle the carry.
### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
The max input is 3 or 11 in binary, so the biggest math it can do is 3 + 3 = 6. If it goes over what two bits can hold, it just overflows and spits the extra value out into the final carry-out pin
