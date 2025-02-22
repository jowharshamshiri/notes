---
---

![[Screenshot 2025-02-20 at 15.24.14.png]]

## Overview
Gaussian elimination is a method for solving systems of linear equations by transforming the system's augmented matrix into row echelon form.

## Steps for Gaussian Elimination

1. Write the augmented matrix [A|b] for the system of equations Ax = b.
2. Apply elementary row operations to transform the matrix into row echelon form:
   - Swap rows (if necessary)
   - Multiply a row by a non-zero scalar
   - Add a multiple of one row to another
3. Use back-substitution to find the solution.

## Row Echelon Form
A matrix is in row echelon form if:
1. All rows consisting of only zeros are at the bottom.
2. The first non-zero entry in each non-zero row (the pivot) is to the right of the pivot in the row above it.
3. All entries in a column below a pivot are zeros.

## Reduced Row Echelon Form (Gauss-Jordan Elimination)
A matrix is in reduced row echelon form if:
1. It is in row echelon form.
2. Each pivot is 1.
3. All entries in a column above a pivot are zeros.

## Types of Solutions

After performing Gaussian elimination, we can identify the solution type:
1. **Unique solution**: The system has exactly one solution (same number of pivots as variables).
2. **Infinitely many solutions**: The system has infinitely many solutions (fewer pivots than variables).
3. **No solution**: The system is inconsistent (a row with all zeros except the last entry).

## Rank of a Matrix
The rank of a matrix is the number of pivots after transforming it to row echelon form. It represents:
- The dimension of the column space (span of the columns)
- The dimension of the row space (span of the rows)
- The maximum number of linearly independent rows or columns

## Example: Solving a Linear System

Consider the system:
```
x - y - 4z = 2
2x - 6z + t = 2
x + y - 2z + t = 0
```

Step 1: Write the augmented matrix
```
[1  -1  -4   0 | 2]
[2   0  -6   1 | 2]
[1   1  -2   1 | 0]
```

Step 2: Perform row operations to get row echelon form

Row 2 = Row 2 - 2×Row 1:
```
[1  -1  -4   0 | 2]
[0   2   2   1 | -2]
[1   1  -2   1 | 0]
```

Row 3 = Row 3 - Row 1:
```
[1  -1  -4   0 | 2]
[0   2   2   1 | -2]
[0   2   2   1 | -2]
```

Row 3 = Row 3 - Row 2:
```
[1  -1  -4   0 | 2]
[0   2   2   1 | -2]
[0   0   0   0 | 0]
```

Step 3: Convert to reduced row echelon form

Row 2 = Row 2 ÷ 2:
```
[1  -1  -4   0 | 2]
[0   1   1   1/2 | -1]
[0   0   0   0 | 0]
```

Row 1 = Row 1 + Row 2:
```
[1   0  -3   1/2 | 1]
[0   1   1   1/2 | -1]
[0   0   0   0 | 0]
```

Step 4: Back-substitution
From the matrix, we get:
```
x - 3z + (1/2)t = 1
y + z + (1/2)t = -1
```

This gives the general solution:
```
x = 1 + 3z - (1/2)t
y = -1 - z - (1/2)t
```

where z and t are free variables. This means the system has infinitely many solutions.

## Example: Homogeneous System

For the system:
```
3x + 4y - 5z + 2t = 0
2x - 5y + z - t = 0
-2x + y + 6z - 2t = 0
7x - 2y - 10z + 3t = 0
```

The augmented matrix is:
```
[3   4  -5   2 | 0]
[2  -5   1  -1 | 0]
[-2  1   6  -2 | 0]
[7  -2 -10   3 | 0]
```

After Gaussian elimination, we might get:
```
[1   0   a   b | 0]
[0   1   c   d | 0]
[0   0   0   0 | 0]
[0   0   0   0 | 0]
```

This system has rank 2, meaning we have 2 free variables. The general solution would be:
```
x = -az₃ - bt
y = -cz₃ - dt
```
where z₃ and t are free parameters.

## Application to Finding Rank

To find the rank of a matrix A, perform Gaussian elimination and count the number of non-zero rows in the resulting row echelon form.

For a matrix A with parameter h, we:
1. Perform Gaussian elimination keeping h as a variable
2. Analyze the resulting matrix to identify conditions on h that affect the rank
3. Typically, certain values of h will cause pivots to become zero, changing the rank

## Tips for Solving Exercises

1. Always track your row operations carefully.
2. For systems with parameters, keep the parameters as variables during elimination.
3. Check your answers by substituting back into the original equations.
4. For homogeneous systems, remember that the zero vector is always a solution.
5. When finding the rank, make sure to get the matrix into proper row echelon form before counting pivots.


### Exercises

1. Using the Gaussian elimination method solve the following linear system:
   $$\begin{cases}
   x - y - 4z = 2 \\
   2x - 6z + t = 2 \\
   x + y - 2z + t = 0
   \end{cases}$$
   and, if there exist, find two particular solutions.

2. Solve the following system of equations using the Gaussian elimination method:
   $$\Sigma: \begin{cases}
   3x - 4y + 5z = 7, \\
   x + 2y - 3z = -1, \\
   2x - y + z = 3.
   \end{cases}$$

3. Solve the following system with Gaussian elimination method:
   $$\Sigma: \begin{cases}
   2x - 3y + z + t = 3 \\
   2x - 5y + t = 2
   \end{cases}$$

4. Solve the following system of equations in the indeterminates $x$, $y$, $z$ and $t$ using the Gaussian elimination method:
   $$\Sigma: \begin{cases}
   3x - 4y + 5z + t = 7, \\
   x + 2y - 3z = -1, \\
   2x - y + z + t = 3.
   \end{cases}$$

5. Solve the following system with Gaussian elimination method:
   $$\Sigma: \begin{cases}
   2x-2y-8z=4 \\
   2x-5y+t=2 \\
   x+y-2z+t=0
   \end{cases}$$

6. Solve the following linear systems using Gaussian elimination:
  - $\begin{cases} x - y + 3z = 1 \\ 4x + 2y - z = 3 \\ 2x + 4y - 7z = 1 \end{cases}$
  - $\begin{cases} x + y - z + t = 1 \\ 3x + 3y - 3z + 3t = 3 \\ 2x + 2y - 2z + t = 0 \\ 4x + 4y - 4z + 3t = 2 \end{cases}$
  - $\begin{cases} x - z + t = 1 \\ 2x + y - 2z + t = 0 \\ y + 2z - t = 2 \\ -x + 3y + 3t = 4 \end{cases}$
  - $\begin{cases} x - y + z = 8 \\ 3x + y - z = 2 \\ -3x + 2z = 1 \end{cases}$

7. Find the values of $h \in \mathbb{R}$ for which the following homogeneous system is solvable:
  $\begin{cases} x + (h - 1)y - 2z = 0 \\ 2x + 3hy - 4z = 0 \\ 6x + (h + 5)y + 2z = 0 \end{cases}$

8. Discuss, for the parameter $\beta$, the rank of the following matrix:
  $A = \begin{pmatrix} 2\beta & -\beta & 3\beta & 4 \\ 5 & 2 & 0 & 1 \\ 1 & 4 & -6 & -3 \end{pmatrix}$

9. Discuss, for the parameter $\beta$, the rank of the following matrix:
  $A = \begin{pmatrix} 1 & 3 & \beta & 5 \\ -4 & 2 & 3\beta & 1 \\ 0 & 1 & -2\beta & 4 \\ 6 & 4 & -4 & 0 \end{pmatrix}$
