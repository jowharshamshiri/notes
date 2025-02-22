---
---


## Definition

A **homogeneous system** of linear equations is a system that can be written in the form:

Ax = 0

Where:
- A is an m×n coefficient matrix
- x is an n×1 vector of variables
- 0 is an m×1 zero vector

In component form, a homogeneous system looks like:
a₁₁x₁ + a₁₂x₂ + ... + a₁ₙxₙ = 0
a₂₁x₁ + a₂₂x₂ + ... + a₂ₙxₙ = 0
...
aₘ₁x₁ + aₘ₂x₂ + ... + aₘₙxₙ = 0

## Key Properties

1. **Trivial Solution**: Every homogeneous system always has at least one solution: the **trivial solution** where x = 0 (all variables equal zero).

2. **Solution Structure**: If x₁ and x₂ are solutions to a homogeneous system, then:
   - Any linear combination c₁x₁ + c₂x₂ is also a solution
   - The set of all solutions forms a subspace of ℝⁿ, called the **null space** or **kernel** of A

3. **Solution Uniqueness**: A homogeneous system Ax = 0 has:
   - Only the trivial solution if and only if rank(A) = n (full column rank)
   - Infinitely many solutions if and only if rank(A) < n

4. **Solution Dimension**: The dimension of the solution space equals n - rank(A)

## Solution Methods

### Method 1: Gaussian Elimination

1. Form the augmented matrix [A | 0]
2. Perform row operations to get row echelon form
3. Back-substitute to find the general solution

### Method 2: Null Space Calculation

1. Transform A to reduced row echelon form (RREF)
2. Identify the free variables (corresponding to non-pivot columns)
3. Express basic variables in terms of free variables
4. Write the general solution as a linear combination of basis vectors for the null space

## General Solution Format

If the system has infinitely many solutions, the general solution can be written as:

x = c₁v₁ + c₂v₂ + ... + cₖvₖ

Where:
- v₁, v₂, ..., vₖ form a basis for the null space of A
- c₁, c₂, ..., cₖ are arbitrary constants (free parameters)
- k = n - rank(A) (the number of free variables)

## Examples

### Example 1: Simple Homogeneous System

Consider the system:
```
2x - y = 0
3x + y = 0
5x + 2y = 0
```

Step 1: Form the augmented matrix
```
[2  -1 | 0]
[3   1 | 0]
[5   2 | 0]
```

Step 2: Row reduction
R₂ = R₂ - (3/2)R₁:
```
[2  -1 | 0]
[0  5/2 | 0]
[5   2 | 0]
```

R₃ = R₃ - (5/2)R₁:
```
[2  -1 | 0]
[0  5/2 | 0]
[0  9/2 | 0]
```

R₃ = R₃ - (9/5)R₂:
```
[2  -1 | 0]
[0  5/2 | 0]
[0   0 | 0]
```

Step 3: Back-substitution
From the second row: 5/2 y = 0, so y = 0
From the first row: 2x - 0 = 0, so x = 0

The only solution is the trivial solution (0,0)

### Example 2: System with Infinitely Many Solutions

Consider the system:
```
2x - 3y - 2z - t = 0
4x + y + 4z - 2t = 0
x + y + z + t = 0
```

Step 1: Form the augmented matrix
```
[2  -3  -2  -1 | 0]
[4   1   4  -2 | 0]
[1   1   1   1 | 0]
```

Step 2: Row reduction (to RREF)
After full row reduction:
```
[1   0   1   0 | 0]
[0   1   0   1 | 0]
[0   0   0   0 | 0]
```

Step 3: Identify free variables
The pivot columns are 1 and 2, so x and y are basic variables
The non-pivot columns are 3 and 4, so z and t are free variables

Step 4: Express basic variables in terms of free variables
From the RREF:
x = -z
y = -t

Step 5: Write the general solution
For any values of z and t:
```
x = -z
y = -t
z = z (free)
t = t (free)
```

The general solution can be written as:
```
⎡x⎤   ⎡-z⎤   ⎡-1⎤     ⎡ 0⎤
⎢y⎥ = ⎢-t⎥ = ⎢ 0⎥·z + ⎢-1⎥·t
⎢z⎥   ⎢ z⎥   ⎢ 1⎥     ⎢ 0⎥
⎣t⎦   ⎣ t⎦   ⎣ 0⎦     ⎣ 1⎦
```

The solution space is a 2-dimensional subspace of ℝ⁴ with basis {(-1,0,1,0), (0,-1,0,1)}.

## Special Cases and Techniques

### 1. Homogeneous Systems with Parameters

For systems with parameters:
1. Perform row reduction keeping parameters symbolic
2. Analyze how the rank of the coefficient matrix changes with different parameter values
3. Determine conditions on parameters for unique or infinitely many solutions

### 2. Large Systems with Patterns

Look for patterns that allow simplification:
- Equations that are linear combinations of others (redundant equations)
- Variables that appear in specific patterns
- Symmetries in the coefficient matrix

### 3. Connection to Linear Transformations

A homogeneous system Ax = 0 can be interpreted as:
- Finding vectors x in the domain of the linear transformation T(x) = Ax that map to the zero vector
- Finding the kernel (null space) of the transformation T

## Solving Techniques for Exercises

### Strategy 1: Row-Echelon Form Approach

1. Convert to row-echelon form using elementary row operations
2. Count the number of non-zero rows (r) to find rank(A)
3. The dimension of the solution space is n - r
4. Back-substitute to find the general solution

### Strategy 2: Determinant Approach (for Square Matrices)

For a square n×n homogeneous system:
- If det(A) ≠ 0, there is only the trivial solution
- If det(A) = 0, there are infinitely many solutions

### Strategy 3: Matrix Properties

Use matrix properties to determine the nature of solutions:
- If columns of A are linearly independent, only the trivial solution exists
- If A has a zero row, the system always has infinitely many solutions
- If there are more variables than equations (n > m), the system always has infinitely many solutions

## Example of Solving Exercises

### Example: Homogeneous System with Parameter

Consider the system:
```
x + (h - 1)y - 2z = 0
2x + 3hy - 4z = 0
6x + (h + 5)y + 2z = 0
```

Step 1: Form the augmented matrix
```
[1   h-1  -2 | 0]
[2   3h   -4 | 0]
[6  h+5    2 | 0]
```

Step 2: Row reduction (keeping h as a parameter)
R₂ = R₂ - 2R₁:
```
[1   h-1  -2 | 0]
[0   h+2   0 | 0]
[6  h+5    2 | 0]
```

R₃ = R₃ - 6R₁:
```
[1   h-1  -2 | 0]
[0   h+2   0 | 0]
[0  -6h+11  14 | 0]
```

Step 3: Analyze how rank changes with h

Case 1: If h ≠ -2, then the second row is non-zero
- R₃ = R₃ - [(-6h+11)/(h+2)]R₂ gives a third independent equation
- Rank = 3, so there's only the trivial solution

Case 2: If h = -2, then the second row becomes all zeros
- For the third row, we get [-6(-2)+11, 14] = [23, 14]
- Rank = 2, so there's a 1-dimensional solution space

Step 4: Find the solution for h = -2
For h = -2:
```
[1  -3  -2 | 0]
[0   0   0 | 0]
[0  23  14 | 0]
```

Further row reduction:
```
[1  -3  -2 | 0]
[0   1   14/23 | 0]
[0   0   0 | 0]
```

Back-substitution:
y = -14z/23
x = 3y + 2z = 3(-14z/23) + 2z = -42z/23 + 2z = (2 - 42/23)z = (46 - 42)/23 · z = 4z/23

The general solution for h = -2 is:
```
x = 4z/23
y = -14z/23
z = z (free)
```

or written as:
```
⎡x⎤   ⎡ 4/23⎤
⎢y⎥ = ⎢-14/23⎥·z
⎣z⎦   ⎣   1  ⎦
```

## Common Mistakes to Avoid

1. Forgetting that a homogeneous system always has the trivial solution
2. Incorrectly identifying basic and free variables
3. Errors in row operations, especially with parameters
4. Forgetting to check special cases when parameters equal specific values
5. Not verifying solutions by substituting back into the original equations

## Connection to Other Topics

Homogeneous systems are fundamental to many concepts in linear algebra:

1. **Null Space**: The solution set is exactly the null space of the coefficient matrix

2. **Linear Dependence**: A set of vectors {v₁, v₂, ..., vₙ} is linearly dependent if and only if the homogeneous system c₁v₁ + c₂v₂ + ... + cₙvₙ = 0 has non-trivial solutions

3. **Eigenvalues and Eigenvectors**: Finding eigenvectors involves solving the homogeneous system (A - λI)v = 0

4. **Differential Equations**: Homogeneous systems arise naturally when solving systems of linear differential equations

5. **Basis for Subspaces**: The null space basis vectors form a basis for the solution subspace
### Exercises

- Solve the following homogeneous linear systems:
  - $\begin{cases} 2x - y = 0 \\ 3x + y = 0 \\ 5x + 2y = 0 \end{cases}$
  - $\begin{cases} 3x + 4y - z = 0 \\ 2x - y - 5z = 0 \\ 7x + 13y + 2z = 0 \end{cases}$
  - $\begin{cases} 2x - 3y - 2z - t = 0 \\ 4x + y + 4z - 2t = 0 \\ x + y + z + t = 0 \end{cases}$
  - $\begin{cases} x + y + 5z + t = 0 \\ 6x - 6y + z - 8t = 0 \\ 3x - 9y - 14z - 11t = 0 \end{cases}$
  - $\begin{cases} 6x - 3y - 2z + 7t = 0 \\ x + 4z - t = 0 \\ y - z + 3t = 0 \\ x + y + t = 0 \end{cases}$
  - $\begin{cases} 3x + 4y - 5z + 2t = 0 \\ 2x - 5y + z - t = 0 \\ -2x + y + 6z - 2t = 0 \\ 7x - 2y - 10z + 3t = 0 \end{cases}$
  - $\begin{cases} x + 9y + 2z - 4t = 0 \\ 3x - 4y + 5z + 2t = 0 \\ 5x - 17y + 8z + 8t = 0 \\ 9x - 43y + 14z + 20t = 0 \end{cases}$
  - $\begin{cases} -x - y + 3z = 0 \\ 4x + 5y + z = 0 \\ 2x - 3y + 4z = 0 \end{cases}$