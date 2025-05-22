# ByteWise-Assembly-Lab
A collection of beginner-friendly Assembly language programs designed for Computer Organization &amp; Architecture lab tasks. Includes examples for sorting values, conditional branching, and computing absolute values using register-level logic. Ideal for students or enthusiasts exploring low-level programming concepts.

# COA [C] Lab Task 1

### 1. Write an assembly program that sorts two numbers in ascending order.
If the first number is greater than the second, swap them. Otherwise, leave them as is. After the program, the smaller number should be first and the bigger number second.

| Sample Input | Sample Output |
|--------------|----------------|
| 8 2          | 2 8            |
| 3 7          | 3 7            |

---

### 2. Write an assembly program that checks if a number is between two limits
(for example, between 10 and 20 exclusive). If it is, jump to `inside_label`, otherwise jump to `outside_label`.

| Sample Input | Sample Output |
|--------------|----------------|
| 15           | Inside         |
| 23           | Outside        |

---

### 3. Write an assembly program that takes a signed number stored in memory and computes its absolute value.
If the number is negative, change it to positive. If it's already positive or zero, leave it as is. Store the result back into a register.

| Sample Input | Sample Output |
|--------------|----------------|
| -7           | 7              |
| 8            | 8              |
| 0            | 0              |
