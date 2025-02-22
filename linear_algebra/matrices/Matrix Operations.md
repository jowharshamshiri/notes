
## Matrix Addition
For matrices A and B of the same dimensions m × n:
- (A + B)ᵢⱼ = Aᵢⱼ + Bᵢⱼ
- Add corresponding elements
- Example: 
  ```
  [a b]   [e f]   [a+e b+f]
  [c d] + [g h] = [c+g d+h]
  ```

## Scalar Multiplication
For a scalar k and a matrix A:
- (kA)ᵢⱼ = k × Aᵢⱼ
- Multiply each element by k
- Example: 
  ```
  2 × [3 1]   [6 2]
      [4 2] = [8 4]
  ```

## Matrix Multiplication
For matrices A (m × n) and B (n × p):
- (AB)ᵢⱼ = Σₖ₌₁ⁿ Aᵢₖ × Bₖⱼ
- Multiply row i of A by column j of B
- Dimensions must be compatible: columns of A = rows of B
- Result is a matrix of size m × p
- Example:
  ```
  [a b]   [e f]   [ae+bg af+bh]
  [c d] × [g h] = [ce+dg cf+dh]
  ```

### Dot Product View of Matrix Multiplication
- Each entry (i,j) in the product is the dot product of row i from the first matrix and column j from the second matrix.

### Properties of Matrix Multiplication
- Not commutative: AB ≠ BA generally
- Associative: (AB)C = A(BC)
- Distributive: A(B + C) = AB + AC and (A + B)C = AC + BC
- Identity: AI = IA = A, where I is the identity matrix

## Matrix Transpose
For a matrix A:
- (A^T)ᵢⱼ = Aⱼᵢ
- Reflect elements across the main diagonal
- Example:
  ```
  [a b c]^T   [a d]
  [d e f]   = [b e]
                [c f]
  ```

### Properties of Transpose
- (A^T)^T = A
- (A + B)^T = A^T + B^T
- (AB)^T = B^T A^T (note the order reversal)
- (kA)^T = k(A^T)

## Entry Notation
- Aᵢⱼ is the element in row i, column j of matrix A
- A(i) is the i-th row of matrix A
- A^(j) is the j-th column of matrix A

## Special Matrices

### Identity Matrix
- Has 1s on the main diagonal and 0s elsewhere
- Denoted by I or Iₙ for an n × n matrix
- AI = IA = A for any matrix A of compatible dimensions

### Zero Matrix
- All elements are 0
- Denoted by 0 or 0ₘₙ for an m × n matrix
- A + 0 = 0 + A = A
- A × 0 = 0 × A = 0

### Diagonal Matrix
- All non-diagonal elements are 0
- Denoted by diag(d₁, d₂, ..., dₙ)
- Special case: scalar matrix where all diagonal entries are equal

### Triangular Matrices
- Upper triangular: all elements below the main diagonal are 0
- Lower triangular: all elements above the main diagonal are 0

## Matrix Powers
For a square matrix A:
- A² = A × A
- A³ = A × A × A = A² × A
- A⁰ = I (identity matrix)

## Examples for Your Exercises

### Example 1: Matrix Addition and Scalar Multiplication
For matrices A = [2 1; 3 0; 1 4] and B = [1 2; 0 1], the expression A(B + C) requires:
1. Calculate B + C first
2. Then multiply A by the result
3. Make sure the dimensions are compatible

### Example 2: Computing (A^T + C)B
1. Calculate A^T
2. Add C to A^T
3. Multiply the result by B, checking compatibility

### Example 3: Computing a Specific Matrix Entry
To find the entry (2,3) of M² where M = [1 0 0; 0 1 2; 0 1 1]:
1. Calculate M² = M × M
2. Then identify the element in row 2, column 3

### Example 4: Computing M·M^T
For M = [1 0 0; 0 1 2; 0 1 1]:
1. Calculate M^T
2. Multiply M by M^T

### Example 5: Calculating Matrix Expressions
For expressions like 3A · (2B + 4C^T):
1. Calculate 2B
2. Calculate 4C^T
3. Add them to get (2B + 4C^T)
4. Calculate 3A
5. Multiply 3A and (2B + 4C^T)

### Example 6: Matrix Polynomials
For expressions like A² - B² or (A - B) · (B + A):
1. Calculate A² and B² separately
2. For (A - B) · (B + A), first calculate (A - B) and (B + A), then multiply

## Solving Technique for Matrix Calculations
1. Always check matrix dimensions before operations
2. For complex expressions, work from inside parentheses outward
3. Use associativity to efficiently calculate matrix powers
4. Break down calculations into smaller steps
5. Keep track of intermediate results clearly

## Common Mistakes to Avoid
1. Assuming matrix multiplication is commutative
2. Forgetting to check dimensions
3. Incorrect order of operations in complex expressions
4. Errors in calculating individual entries in matrix products
5. Forgetting to apply the transpose correctly in expressions like (AB)^T

### Exercises

1. Given the following matrices:
   $$A = \begin{pmatrix} 2 & 1 & 0 \\ 3 & 0 & 1 \\ 1 & 4 & 2 \end{pmatrix}, \quad B = \begin{pmatrix} 1 & 2 & 0 \\ 0 & 1 & 3 \end{pmatrix}, \quad C = \begin{pmatrix} 4 & 0 & 1 \\ 2 & 3 & 5 \end{pmatrix}$$
   compute the following expressions:
   1. $A(B + C)$
   2. $(A^T + C)B$

2. Given the following matrices:
   $$A = \begin{pmatrix} -2 & 1 & 0 \\ -3 & 0 & 1 \\ -1 & 4 & 2 \end{pmatrix}, \quad B = \begin{pmatrix} 1 & -2 & 0 \\ 0 & -1 & 3 \end{pmatrix}, \quad C = \begin{pmatrix} 2 & 0 & 1 \\ -2 & 3 & 5 \end{pmatrix}$$
   compute the following expressions:
   1. $A(B + C)$
   2. $(A^T + C)B$

3. Determine the entry $(2,3)$ of $M^2$ where
   $$M = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 2 \\ 0 & 1 & 1 \end{pmatrix}$$

4. Determine $M \cdot M^T$ where
   $$M = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 2 \\ 0 & 1 & 1 \end{pmatrix}$$

5. Determine the product, if it is possible, of the following two matrices:
   $$\begin{pmatrix} 0 & 1 & -2 \\ -1 & 2 & 1 \end{pmatrix} \times \begin{pmatrix} 0 & 2 \\ 0 & 1 \end{pmatrix}$$

6. Given the following matrices:
   $$A = \begin{pmatrix} 0 & 0 & 2 \\ 1 & 2 & 1 \\ 0 & 3 & 0 \end{pmatrix}, \quad B = \begin{pmatrix} 0 & 0 \\ 1 & 2 \\ 0 & 1 \end{pmatrix}, \quad C = \begin{pmatrix} 2 & 0 & 1 \\ 2 & 0 & 1 \end{pmatrix}$$
   compute $(A + C)B$ and $A(C^T + B)$.


7. Calculate the following matrix operations:
  - $\frac{1}{3}\begin{pmatrix} 2 & 9 & 5 \\ 4 & 3 & 6 \end{pmatrix}$
  - $4\begin{pmatrix} 0 & \frac{1}{3} & -1 \\ 0 & \frac{3}{2} & 1 \end{pmatrix}$
  - $2\begin{pmatrix} 2 & 6 & 0 \\ \frac{4}{5} & -1 & 3 \end{pmatrix}$
  - $\frac{1}{3}A + 4B - 2C$ where $A$, $B$ and $C$ are given matrices

8. Calculate $A \cdot B$ where:
  - $A = \begin{pmatrix} 2 & 3 \\ -1 & 5 \end{pmatrix}$, $B = \begin{pmatrix} 2 & 1 \\ 0 & 3 \end{pmatrix}$

9. Calculate the following matrix expressions:
  - $A^T \cdot A$ and $A \cdot A^T$ where $A = \begin{pmatrix} 3 & -\frac{1}{2} & 0 \\ \frac{3}{4} & 2 & -4 \end{pmatrix}$
  - $3A \cdot (2B + 4C^T)$ where $A$, $B$ and $C$ are given matrices
  - $A^2 - B^2$ and $(A - B) \cdot (B + A)$ where $A = \begin{pmatrix} 2 & 3 \\ -1 & 5 \end{pmatrix}$ and $B = \begin{pmatrix} 3 & -1 \\ 4 & 2 \end{pmatrix}$
  - $A^3 - B^3$ and $(A - B) \cdot (B^2 + A^2 + A \cdot B)$ where $A$ and $B$ are given matrices
  - $A \cdot B - B \cdot A$ where $A$ and $B$ are given matrices
