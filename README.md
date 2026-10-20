# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Aprameya Koushik Sarukkai And Jay Berry

## Summary
In this lab we created a half subtractor, ones compliment, and twos compliment. The main trouble we ran into came from trying to implement the logic in verilog code. 

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The difference between the two is that the subtractor uses a borrow instead of a carry. In this case the borrow from the MSB will be applied to the LSB. The half adder uses a and b, while the subtractor was not a and b.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end around means that we end up taking from the LSB. This is difficult to explicitly reference if you do not know if it will end with a borrow of 1 or not. It might also lead to a cycle where the lsb and msb continue to draw from each other.


### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case is that there is 1 more negative number than positive for the same amount of bits. This means for 4 bits it covers -8 through to 7, which causes signed overflow.

