---
---


## Definition

A set of vectors {v₁, v₂, ..., vₙ} in a vector space V is **linearly independent** if the only solution to the vector equation:

c₁v₁ + c₂v₂ + ... + cₙvₙ = 0

is the trivial solution c₁ = c₂ = ... = cₙ = 0.

In other words, no vector in the set can be expressed as a linear combination of the others.

If there exists at least one non-trivial solution (where at least one cᵢ ≠ 0), then the set is **linearly dependent**.

## Testing for Linear Independence

### Method 1: Direct Homogeneous System

1. Write the vectors as columns of a matrix A
2. The set is linearly independent if and only if the only solution to Ax = 0 is the trivial solution
3. Equivalently, the set is linearly independent if and only if rank(A) = n (the number of vectors)

### Method 2: Row Echelon Form

1. Write the vectors as columns of a matrix A
2. Reduce A to row echelon form
3. The set is linearly independent if and only if each column has a pivot
4. Equivalently, the set is linearly independent if and only if there are no free variables

### Method 3: Determinant (for n vectors in ℝⁿ)

1. Form a square matrix A with the vectors as columns
2. The set is linearly independent if and only if det(A) ≠ 0

## Geometric Interpretation

- In ℝ², two vectors are linearly independent if they don't lie on the same line through the origin
- In ℝ³, three vectors are linearly independent if they don't lie on the same plane through the origin
- In general, vectors are linearly independent if they "point in different directions" in a way that spans the full dimensionality of their space

## Properties of Linear Independence

1. A set containing the zero vector is always linearly dependent

2. A set with more vectors than the dimension of the vector space is always linearly dependent:
   - If {v₁, v₂, ..., vₙ} is a set in a vector space V with dim(V) < n, then the set is linearly dependent

3. If a set is linearly dependent, then at least one vector can be expressed as a linear combination of the others

4. Adding a vector to a linearly independent set may or may not preserve independence

5. Removing a vector from a linearly independent set preserves independence

6. If {v₁, v₂, ..., vₙ} is linearly independent and {w₁, w₂, ..., wₘ} is linearly dependent on {v₁, v₂, ..., vₙ}, then {v₁, v₂, ..., vₙ, w₁, w₂, ..., wₘ} is linearly dependent

## Examples

### Example 1: Vectors in ℝ³

Determine if the set of vectors {(2,-1,1), (1,1,0), (3,2,-1)} is linearly independent.

Step 1: Form the matrix with these vectors as columns
A = $\begin{bmatrix} 2 & 1 & 3 \\ -1 & 1 & 2 \\ 1 & 0 & -1 \end{bmatrix}$

Step 2: Test the homogeneous system Ac = 0
This is equivalent to finding if there exist scalars c₁, c₂, c₃ such that:
c₁(2,-1,1) + c₂(1,1,0) + c₃(3,2,-1) = (0,0,0)

Step 3: Row reduce the matrix
$\begin{bmatrix} 2 & 1 & 3 \\ -1 & 1 & 2 \\ 1 & 0 & -1 \end{bmatrix} \rightarrow \begin{bmatrix} 1 & 0 & -1 \\ 0 & 1 & 3 \\ 0 & 0 & 0 \end{bmatrix}$

Step 4: Analyze the result
The third column does not have a pivot, so the system has non-trivial solutions.
From the row-reduced form, we get c₃ as a free variable, with:
c₁ = c₃
c₂ = -3c₃

Step 5: Conclusion
For any value of c₃, we have a solution, showing that the vectors are linearly dependent.
Specifically, we have 1·(2,-1,1) + (-3)·(1,1,0) + 1·(3,2,-1) = (0,0,0)
or equivalently: (3,2,-1) = -1·(2,-1,1) + 3·(1,1,0)

### Example 2: Vectors in a Function Space

Consider the set of functions {1, sin x, cos x} in the vector space of continuous functions.

Step 1: Test if there exist constants c₁, c₂, c₃ such that:
c₁·1 + c₂·sin x + c₃·cos x = 0 for all x

Step 2: Since this must be true for all x, we can substitute specific values:
- For x = 0: c₁ + c₃ = 0
- For x = π/2: c₁ + c₂ = 0
- For x = π: c₁ - c₃ = 0

Step 3: Solve this system:
- From equations 1 and 3: c₃ = -c₁ and c₃ = c₁, so c₁ = c₃ = 0
- From equation 2: c₂ = -c₁ = 0

Step 4: Conclusion
Since the only solution is c₁ = c₂ = c₃ = 0, the set {1, sin x, cos x} is linearly independent.

## Special Cases

### 1. Standard Basis

The standard basis vectors {e₁, e₂, ..., eₙ} of ℝⁿ are always linearly independent.

### 2. Subset of Linearly Independent Vectors

Any subset of a linearly independent set is also linearly independent.

### 3. Sets with n+1 Vectors in ℝⁿ

Any set of n+1 or more vectors in ℝⁿ is always linearly dependent.

### 4. Sets with Repeated Vectors

A set containing repeated vectors is always linearly dependent.

### 5. Linear Independence and Span

If vectors {v₁, v₂, ..., vₙ} are linearly independent and span a vector space V, then they form a basis for V, and dim(V) = n.

## Techniques for Checking Linear Independence

### Technique 1: Gaussian Elimination

1. Form the matrix with vectors as columns
2. Row reduce to echelon form
3. Count the number of pivot columns
4. If the number of pivots equals the number of vectors, they are linearly independent

### Technique 2: Determinant Method (for n vectors in ℝⁿ)

1. Form the square matrix with the vectors as columns
2. Calculate the determinant
3. The vectors are linearly independent if and only if the determinant is non-zero

### Technique 3: Direct Approach for Simple Cases

For simple cases, directly check if any vector can be written as a linear combination of the others:
- For 2 vectors: Are they parallel?
- For 3 vectors: Do they lie in the same plane?

## Applications in Solving Exercises

### Example: Checking 3 Vectors in ℝ³

Given vectors v₁ = (2,-1,1), v₂ = (1,1,0), v₃ = (3,2,-1), check if they are linearly independent.

Solution using determinant method:
1. Form the matrix A = $\begin{bmatrix} 2 & 1 & 3 \\ -1 & 1 & 2 \\ 1 & 0 & -1 \end{bmatrix}$
2. Calculate det(A) = 2(1·(-1) - 0·2) - 1((-1)·(-1) - 1·2) + 3((−1)·0 - 1·1) = 2(-1) - 1(1-2) + 3(-1) = -2 + 1 - 3 = -4
3. Since det(A) = -4 ≠ 0, the vectors are linearly independent

But this contradicts our earlier example, which showed they were dependent. Let's double-check:

Using row reduction:
$\begin{bmatrix} 2 & 1 & 3 \\ -1 & 1 & 2 \\ 1 & 0 & -1 \end{bmatrix}$

R₂ = R₂ + (1/2)R₁:
$\begin{bmatrix} 2 & 1 & 3 \\ 0 & 3/2 & 7/2 \\ 1 & 0 & -1 \end{bmatrix}$

R₃ = R₃ - (1/2)R₁:
$\begin{bmatrix} 2 & 1 & 3 \\ 0 & 3/2 & 7/2 \\ 0 & -1/2 & -5/2 \end{bmatrix}$

R₃ = R₃ + (1/3)R₂:
$\begin{bmatrix} 2 & 1 & 3 \\ 0 & 3/2 & 7/2 \\ 0 & 0 & -5/2 + 7/6 = -15/6 - 7/6 = -22/6 = -11/3 \end{bmatrix}$

Since we have 3 pivot columns, the vectors are linearly independent.

The apparent discrepancy between our examples was due to an error in the row reduction in Example 1.

## Common Mistakes to Avoid

1. Confusing linear independence with spanning
2. Arithmetic errors in row reduction
3. Checking only some values in function spaces (need to check for all values in the domain)
4. Assuming that vectors pointing in different directions are linearly independent (only true for 2 vectors in ℝ²)
5. Forgetting that linear independence requires exactly n linearly independent vectors in an n-dimensional space

## Connection to Other Topics

Linear independence is fundamental to many concepts in linear algebra:

1. **Basis**: A linearly independent set that spans a vector space
2. **Dimension**: The number of vectors in a basis
3. **Rank**: The maximum number of linearly independent columns (or rows) in a matrix
4. **Null Space**: The set of all solutions to a homogeneous system Ax = 0
5. **Eigenvalues and Eigenvectors**: Eigenspaces are related to linear independence of eigenvectors
### Exercises

1. Check if the following vectors $v_1, v_2, \ldots, v_m$ are linearly independent:
  - $v_1 = (2, -1, 1)$, $v_2 = (1, 1, 0)$, $v_3 = (3, 2, -1)$
