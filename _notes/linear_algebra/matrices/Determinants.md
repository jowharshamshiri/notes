---
---

![[Screenshot 2025-02-20 at 15.14.34.png]]

![[Screenshot 2025-02-20 at 15.28.20.png]]

# Determinants

## Definition and Basic Properties

The determinant is a scalar value that can be calculated from the elements of a square matrix. It provides important information about the matrix, such as whether it is invertible.

### Notation
For a matrix A, the determinant is denoted det(A) or |A|.

### 2×2 Determinant
For a 2×2 matrix $A = \begin{bmatrix} a & b \\ c & d \end{bmatrix}$:
- det(A) = ad - bc

### 3×3 Determinant
For a 3×3 matrix $A = \begin{bmatrix} a_{11} & a_{12} & a_{13} \\ a_{21} & a_{22} & a_{23} \\ a_{31} & a_{32} & a_{33} \end{bmatrix}$:

det(A) = a₁₁(a₂₂a₃₃ - a₂₃a₃₂) - a₁₂(a₂₁a₃₃ - a₂₃a₃₁) + a₁₃(a₂₁a₃₂ - a₂₂a₃₁)

This can also be computed using the Sarrus rule (diagonals method):

1. Extend the matrix by copying the first two columns to the right
2. Multiply along the diagonals going down-right and add these products
3. Multiply along the diagonals going down-left and subtract these products

### n×n Determinant
For larger matrices, determinants can be calculated using:

1. **Cofactor expansion**: Select a row or column and expand along it
2. **Row/column operations**: Transform the matrix to upper triangular form

## Properties of Determinants

1. **Transpose**: det(A) = det(A^T)

2. **Scalar multiplication**: det(kA) = k^n · det(A) where n is the size of the matrix

3. **Product**: det(AB) = det(A) · det(B)

4. **Inverse**: If A is invertible, det(A^(-1)) = 1/det(A)

5. **Row/Column operations**:
   - Swapping two rows/columns multiplies the determinant by -1
   - Multiplying a row/column by a scalar k multiplies the determinant by k
   - Adding a multiple of one row/column to another doesn't change the determinant

6. **Triangular matrices**: For triangular matrices (upper or lower), the determinant is the product of the diagonal elements

7. **Singular matrices**: A matrix is singular (non-invertible) if and only if its determinant is zero

## Calculation Methods

### Cofactor Expansion (Laplace Expansion)

The determinant can be calculated by expanding along any row or column:

det(A) = Σⱼ (-1)^(i+j) · aᵢⱼ · Mᵢⱼ

Where:
- aᵢⱼ is the element in row i, column j
- Mᵢⱼ is the minor (determinant of the submatrix formed by removing row i and column j)
- (-1)^(i+j) · Mᵢⱼ is the cofactor of aᵢⱼ

### Row Reduction (Gaussian Elimination)

1. Convert the matrix to upper triangular form using row operations
2. The determinant is the product of the diagonal elements, adjusted by the factor (-1)^s where s is the number of row swaps

### Special Cases

1. **Diagonal matrix**: det(diag(d₁, d₂, ..., dₙ)) = d₁ · d₂ · ... · dₙ

2. **Identity matrix**: det(I) = 1

3. **Zero matrix**: det(0) = 0

4. **Matrix with a zero row/column**: det(A) = 0

5. **Matrix with two identical rows/columns**: det(A) = 0

6. **Matrix with a row/column that's a linear combination of others**: det(A) = 0

## Example Calculations

### 2×2 Determinant
For $A = \begin{bmatrix} 3 & 2 \\ 4 & 5 \end{bmatrix}$:
- det(A) = 3×5 - 2×4 = 15 - 8 = 7

### 3×3 Determinant
For $A = \begin{bmatrix} 3 & 1 & 2 \\ -3 & -4 & 6 \\ 0 & -3 & 8 \end{bmatrix}$:

Using cofactor expansion along the first row:
- det(A) = 3·det($\begin{bmatrix} -4 & 6 \\ -3 & 8 \end{bmatrix}$) - 1·det($\begin{bmatrix} -3 & 6 \\ 0 & 8 \end{bmatrix}$) + 2·det($\begin{bmatrix} -3 & -4 \\ 0 & -3 \end{bmatrix}$)
- det(A) = 3·(-4·8 - 6·(-3)) - 1·(-3·8 - 6·0) + 2·(-3·(-3) - (-4)·0)
- det(A) = 3·(-32 + 18) - 1·(-24) + 2·(9)
- det(A) = 3·(-14) + 24 + 18
- det(A) = -42 + 24 + 18 = 0

### 4×4 Determinant

For a 4×4 matrix, it's often easiest to use row reduction:
1. Convert to upper triangular form using Gaussian elimination
2. Multiply the diagonal elements

## Strategies for Determinant Exercises

1. **Choose the easiest expansion path**: Look for rows or columns with many zeros

2. **Use properties to simplify**:
   - Factor out common terms from rows/columns
   - Add/subtract rows to create zeros

3. **Recognize patterns**:
   - Triangular matrices: product of diagonal elements
   - Matrices with repeated rows/columns: determinant is zero

4. **For parametric problems**:
   - Calculate the determinant keeping the parameter(s)
   - Analyze when the resulting expression equals zero

## Practice Examples

### Example 1: Parameter Determinant
For $A = \begin{bmatrix} a & 3a & 2a \\ -a & -4a & 6 \\ a-1 & 2a & a+1 \end{bmatrix}$:

Factor out a from the first row and -a from the second row:
$\begin{bmatrix} a & 3a & 2a \\ -a & -4a & 6 \\ a-1 & 2a & a+1 \end{bmatrix} = a \cdot \begin{bmatrix} 1 & 3 & 2 \\ -1 & -4 & \frac{6}{-a} \\ \frac{a-1}{a} & 2 & \frac{a+1}{a} \end{bmatrix}$

The determinant is a³ times the determinant of the new matrix. Continue using cofactor expansion.

### Example 2: Vandermonde Determinant
For $A = \begin{bmatrix} 1 & 1 & 1 \\ x & y & z \\ x^2 & y^2 & z^2 \end{bmatrix}$:

This is a Vandermonde matrix with determinant (z-y)(z-x)(y-x)

### Example 3: Using Row Operations
For $\begin{bmatrix} 1 & 3 & -2 & -1 \\ 0 & 4 & 2 & 5 \\ 3 & 1 & 0 & 2 \\ -4 & 6 & -5 & 2 \end{bmatrix}$:

Use row operations to create more zeros and transform the matrix to upper triangular form.


### Exercises
Calculate the following determinants:
  1. $\begin{vmatrix} 3 & 2 \\ 4 & 5 \end{vmatrix}$

  2. $\begin{vmatrix} -4 & 6 \\ 5 & -1 \end{vmatrix}$

  3. $\begin{vmatrix} 0 & -5 \\ 4 & 8 \end{vmatrix}$

  4. $\begin{vmatrix} 3 & 6 \\ 9 & 18 \end{vmatrix}$

  5. $\begin{vmatrix} -4 & 1 \\ 8 & -2 \end{vmatrix}$

  6. $\begin{vmatrix} 3 & 1 & 2 \\ -3 & -4 & 6 \\ 0 & -3 & 8 \end{vmatrix}$

  7. $\begin{vmatrix} 3 & -1 & 2 \\ 71 & -47 & 61 \\ 6 & -2 & 4 \end{vmatrix}$

  8. $\begin{vmatrix} a & 3a & 2a \\ -a & -4a & 6 \\ a-1 & 2a & a+1 \end{vmatrix}$

  9. $\begin{vmatrix} 1 & 1 & 1 \\ x & y & z \\ x^2 & y^2 & z^2 \end{vmatrix}$

  10. $\begin{vmatrix} 1 & 3 & -2 & -1 \\ 0 & 4 & 2 & 5 \\ 3 & 1 & 0 & 2 \\ -4 & 6 & -5 & 2 \end{vmatrix}$

  11. $\begin{vmatrix} 1 & 4 & 3 & \frac{1}{2} \\ 2 & 1 & 0 & 6 \\ -2 & 5 & 0 & -3 \\ 4 & \frac{1}{5} & 5 & \frac{2}{3} \end{vmatrix}$

  12. $\begin{vmatrix} 1 & 3 & 2 & 5 \\ 1 & 4 & -2 & 6 \\ 2 & 7 & 0 & 11 \\ -41 & 6 & 15 & 0 \end{vmatrix}$

  13. $\begin{vmatrix} 1 & 4 & -3 & 2 \\ 2 & 1 & 1 & 3 \\ -2 & 1 & 0 & -2 \\ 1 & 6 & -2 & 3 \end{vmatrix}$

  14.  $\begin{vmatrix} 1 & 0 & 0 & 0 \\ 10 & 1 & 100 & 1000 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{vmatrix}$
