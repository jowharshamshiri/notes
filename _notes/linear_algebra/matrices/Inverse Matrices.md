---
---


## Definition

For a square matrix A, the inverse matrix A⁻¹ is a matrix such that:
- A⁻¹A = AA⁻¹ = I (where I is the identity matrix)

A matrix has an inverse if and only if it is non-singular (i.e., det(A) ≠ 0).

## Properties of Inverse Matrices

1. **Uniqueness**: If A is invertible, its inverse A⁻¹ is unique.

2. **Inverse of product**: (AB)⁻¹ = B⁻¹A⁻¹ (Note the order reversal)

3. **Inverse of transpose**: (A^T)⁻¹ = (A⁻¹)^T

4. **Inverse of inverse**: (A⁻¹)⁻¹ = A

5. **Determinant relationship**: det(A⁻¹) = 1/det(A)

6. **Scalar multiplication**: (kA)⁻¹ = (1/k)A⁻¹ for k ≠ 0

7. **Invertibility criteria**:
   - A is invertible iff det(A) ≠ 0
   - A is invertible iff rank(A) = n (for an n×n matrix)
   - A is invertible iff it has n linearly independent rows/columns
   - A is invertible iff the homogeneous system Ax = 0 has only the trivial solution

## Methods for Finding the Inverse

### 1. Adjoint Method (for smaller matrices)

For an n×n matrix A:
- A⁻¹ = (1/det(A)) × adj(A)

Where adj(A) is the adjoint (or adjugate) of A, a matrix whose (i,j) entry is:
- adj(A)ᵢⱼ = (-1)^(i+j) × Mⱼᵢ

Where Mⱼᵢ is the determinant of the submatrix formed by removing row j and column i from A.

Note that for the adjoint, the indices are swapped (this is equivalent to finding the cofactor matrix and then transposing it).

### 2. Gauss-Jordan Elimination (preferred for larger matrices)

1. Form the augmented matrix [A | I]
2. Apply row operations to transform A into the identity matrix I
3. The result will be [I | A⁻¹]

### 3. Formula for 2×2 Matrices

For A = $\begin{bmatrix} a & b \\ c & d \end{bmatrix}$ with det(A) = ad - bc ≠ 0:

A⁻¹ = $\frac{1}{ad - bc} \begin{bmatrix} d & -b \\ -c & a \end{bmatrix}$

## Examples

### Example 1: 2×2 Matrix

For A = $\begin{bmatrix} 4 & -3 \\ 2 & -1 \end{bmatrix}$:

1. Calculate det(A) = 4×(-1) - (-3)×2 = -4 - (-6) = 2 ≠ 0, so A is invertible.

2. Using the formula for 2×2 matrices:
   A⁻¹ = $\frac{1}{2} \begin{bmatrix} -1 & 3 \\ -2 & 4 \end{bmatrix} = \begin{bmatrix} -1/2 & 3/2 \\ -1 & 2 \end{bmatrix}$

3. Verify: A×A⁻¹ = $\begin{bmatrix} 4 & -3 \\ 2 & -1 \end{bmatrix} \times \begin{bmatrix} -1/2 & 3/2 \\ -1 & 2 \end{bmatrix} = \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$ = I

### Example 2: 3×3 Matrix Using Gauss-Jordan

For A = $\begin{bmatrix} 1 & 2 & 0 \\ 3 & 5 & 1 \\ 5 & -8 & -3/4 \end{bmatrix}$:

1. Form the augmented matrix [A | I]:
   $\begin{bmatrix} 1 & 2 & 0 & | & 1 & 0 & 0 \\ 3 & 5 & 1 & | & 0 & 1 & 0 \\ 5 & -8 & -3/4 & | & 0 & 0 & 1 \end{bmatrix}$

2. Apply row operations to get I on the left side:
   - R₂ = R₂ - 3R₁
   - R₃ = R₃ - 5R₁
   - ...continue with other row operations...

3. After completing all row operations, the result will be:
   $\begin{bmatrix} 1 & 0 & 0 & | & a & b & c \\ 0 & 1 & 0 & | & d & e & f \\ 0 & 0 & 1 & | & g & h & i \end{bmatrix}$

4. The inverse is:
   A⁻¹ = $\begin{bmatrix} a & b & c \\ d & e & f \\ g & h & i \end{bmatrix}$

### Example 3: Non-invertible Matrix

For A = $\begin{bmatrix} 1 & -3 \\ 2 & -6 \end{bmatrix}$:

1. Calculate det(A) = 1×(-6) - (-3)×2 = -6 + 6 = 0

2. Since det(A) = 0, A is singular (non-invertible) and has no inverse.

## Special Cases

### 1. Diagonal Matrices

For a diagonal matrix D = diag(d₁, d₂, ..., dₙ) with all dᵢ ≠ 0:
- D⁻¹ = diag(1/d₁, 1/d₂, ..., 1/dₙ)

### 2. Triangular Matrices

For a triangular matrix (upper or lower) with all diagonal elements non-zero:
- The inverse is also triangular (of the same type)
- Diagonal elements of the inverse are reciprocals of the original diagonal elements

### 3. Elementary Matrices

Elementary matrices (representing a single row operation) are always invertible:
- Row swap: its own inverse
- Row multiplication by k ≠ 0: inverse multiplies the same row by 1/k
- Row addition of multiple of another row: inverse subtracts the same multiple

## Computational Techniques

### Method Selection

1. For 2×2 matrices, use the direct formula
2. For 3×3 matrices, either:
   - Use the adjoint method if exact fractions are needed
   - Use Gauss-Jordan elimination for numerical efficiency
3. For larger matrices, always use Gauss-Jordan elimination

### Verification

Always verify your answer by checking:
- A×A⁻¹ = I
- A⁻¹×A = I

### Common Mistakes to Avoid

1. Forgetting to check if det(A) = 0
2. Arithmetic errors during Gauss-Jordan elimination
3. Not completing the full row reduction (stopping at row echelon form instead of reduced row echelon form)
4. Confusing the order of operations in (AB)⁻¹

## Exercise Strategies

For matrices with specific patterns:

1. **Upper triangular matrix**:
   - Check if diagonal elements are non-zero
   - Inverse is also upper triangular
   - Use back-substitution with [A|I]

2. **Matrices with many zeros**:
   - Choose the method that takes advantage of the sparsity pattern

3. **Symbolic matrices (with parameters)**:
   - Find conditions for invertibility by calculating determinant
   - Solve for the parameter values where det(A) = 0
   - For valid parameter values, find the inverse symbolically
### Exercises

- Find, if there exists, the inverse of the following matrices:
  - $A = \begin{pmatrix} 4 & -3 \\ 2 & -1 \end{pmatrix}$
  - $A = \begin{pmatrix} 1 & -3 \\ 2 & -6 \end{pmatrix}$
  - $A = \begin{pmatrix} -1 & 2 & -4 \\ 3 & -5 & 6 \\ -4 & 3 & -7 \end{pmatrix}$
  - $A = \begin{pmatrix} 11 & 2 & -3 \\ 3 & 5 & 1 \\ 5 & -8 & -5 \end{pmatrix}$
  - $A = \begin{pmatrix} 1 & 2 & 0 \\ 3 & 5 & 1 \\ 5 & -8 & -\frac{3}{4} \end{pmatrix}$
  - $A = \begin{pmatrix} -2 & 0 & 3 & 1 \\ -3 & -1 & 2 & 4 \\ 0 & 2 & 1 & -2 \\ 3 & 1 & 2 & -5 \end{pmatrix}$
  - $A = \begin{pmatrix} 0 & 0 & -1 \\ 1 & 2 & 3 \\ 1 & 0 & 1 \end{pmatrix}$