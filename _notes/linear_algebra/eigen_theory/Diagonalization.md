---
---


## Definition and Concept

A square matrix A is **diagonalizable** if there exists an invertible matrix P and a diagonal matrix D such that:

P⁻¹AP = D

- The diagonal entries of D are the eigenvalues of A
- The columns of P are the corresponding eigenvectors of A
- We say that P **diagonalizes** A

## Criteria for Diagonalizability

A square n×n matrix A is diagonalizable if and only if one of the following equivalent conditions is met:

1. A has n linearly independent eigenvectors
2. For each eigenvalue λ of A, the geometric multiplicity equals the algebraic multiplicity
3. The sum of the dimensions of all eigenspaces equals n

## Diagonalization Process

### Step 1: Find the Eigenvalues
- Compute the characteristic polynomial: det(A - λI) = 0
- Solve this polynomial equation to find all eigenvalues λ₁, λ₂, ..., λₙ
- Note the algebraic multiplicity of each eigenvalue (how many times it appears as a root)

### Step 2: Find the Eigenvectors
- For each eigenvalue λᵢ, solve the homogeneous system (A - λᵢI)v = 0
- Find a basis for the null space of (A - λᵢI), which forms a basis for the eigenspace
- Note the geometric multiplicity (dimension of the eigenspace)

### Step 3: Check Diagonalizability
- Compare the algebraic and geometric multiplicities for each eigenvalue
- If they match for all eigenvalues, the matrix is diagonalizable
- Additionally, check that the total number of linearly independent eigenvectors equals n

### Step 4: Construct the Matrix P
- Form P by using the eigenvectors as columns
- The order of eigenvectors should match the order of eigenvalues in D

### Step 5: Form the Diagonal Matrix D
- D = diag(λ₁, λ₂, ..., λₙ)
- Each eigenvalue appears on the diagonal as many times as its algebraic multiplicity

### Step 6: Verify
- Compute P⁻¹AP and confirm it equals D

## Examples

### Example 1: 2×2 Matrix

For A = $\begin{bmatrix} 3 & 8 \\ 2 & 3 \end{bmatrix}$:

Step 1: Find eigenvalues
- Characteristic equation: det(A - λI) = (3-λ)² - 16 = 0
- Solving: λ² - 6λ + 9 - 16 = 0 → λ² - 6λ - 7 = 0
- Eigenvalues: λ₁ = 7, λ₂ = -1

Step 2: Find eigenvectors
- For λ₁ = 7:
  - (A - 7I)v = $\begin{bmatrix} -4 & 8 \\ 2 & -4 \end{bmatrix} \begin{bmatrix} v_1 \\ v_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$
  - This gives -4v₁ + 8v₂ = 0, so v₁ = 2v₂
  - Let v₂ = 1, then v₁ = 2
  - Eigenvector: v₁ = $\begin{bmatrix} 2 \\ 1 \end{bmatrix}$

- For λ₂ = -1:
  - (A + I)v = $\begin{bmatrix} 4 & 8 \\ 2 & 4 \end{bmatrix} \begin{bmatrix} v_1 \\ v_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$
  - This gives 4v₁ + 8v₂ = 0, so v₁ = -2v₂
  - Let v₂ = 1, then v₁ = -2
  - Eigenvector: v₂ = $\begin{bmatrix} -2 \\ 1 \end{bmatrix}$

Step 3: Check diagonalizability
- We found 2 linearly independent eigenvectors for a 2×2 matrix
- The matrix is diagonalizable

Step 4: Construct P
- P = $\begin{bmatrix} 2 & -2 \\ 1 & 1 \end{bmatrix}$

Step 5: Form D
- D = $\begin{bmatrix} 7 & 0 \\ 0 & -1 \end{bmatrix}$

Step 6: Verify
- Calculate P⁻¹AP = D

### Example 2: 3×3 Matrix with Repeated Eigenvalue

For A = $\begin{bmatrix} 2 & 0 & 0 \\ 0 & 1 & -1 \\ 0 & -1 & 1 \end{bmatrix}$:

Step 1: Find eigenvalues
- Characteristic equation: det(A - λI) = (2-λ)[(1-λ)² - 1] = 0
- Eigenvalues: λ₁ = 2, λ₂ = 0, λ₃ = 2

Step 2: Find eigenvectors
- For λ₁ = 2:
  - (A - 2I)v = $\begin{bmatrix} 0 & 0 & 0 \\ 0 & -1 & -1 \\ 0 & -1 & -1 \end{bmatrix} \begin{bmatrix} v_1 \\ v_2 \\ v_3 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \\ 0 \end{bmatrix}$
  - This gives v₂ + v₃ = 0, so v₃ = -v₂
  - Let v₁ = 1, v₂ = 0, v₃ = 0
  - First eigenvector: v₁ = $\begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$

- λ₁ = 2 has algebraic multiplicity 2, so we need another linearly independent eigenvector:
  - Let v₁ = 0, v₂ = 1, v₃ = -1
  - Second eigenvector: v₂ = $\begin{bmatrix} 0 \\ 1 \\ -1 \end{bmatrix}$

- For λ₂ = 0:
  - (A)v = $\begin{bmatrix} 2 & 0 & 0 \\ 0 & 1 & -1 \\ 0 & -1 & 1 \end{bmatrix} \begin{bmatrix} v_1 \\ v_2 \\ v_3 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \\ 0 \end{bmatrix}$
  - This gives 2v₁ = 0, v₂ - v₃ = 0, -v₂ + v₃ = 0
  - So v₁ = 0, v₂ = v₃
  - Let v₂ = v₃ = 1
  - Eigenvector: v₃ = $\begin{bmatrix} 0 \\ 1 \\ 1 \end{bmatrix}$

Step 3: Check diagonalizability
- We found 3 linearly independent eigenvectors for a 3×3 matrix
- The matrix is diagonalizable

Step 4 & 5: Construct P and D
- P = $\begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 1 \\ 0 & -1 & 1 \end{bmatrix}$
- D = $\begin{bmatrix} 2 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 0 \end{bmatrix}$

## Special Cases and Properties

### 1. Symmetric Matrices

If A is symmetric (A = A^T):
- A is always diagonalizable
- All eigenvalues are real
- Eigenvectors corresponding to distinct eigenvalues are orthogonal
- A complete set of orthogonal eigenvectors always exists
- P can be chosen to be orthogonal (P^T = P^(-1)), resulting in an **orthogonal diagonalization**

### 2. Triangular Matrices

For a triangular matrix:
- The eigenvalues are the diagonal entries
- It is diagonalizable if and only if all eigenvalues have geometric multiplicity equal to their algebraic multiplicity

### 3. Defective Matrices

A matrix is **defective** if it is not diagonalizable:
- This happens when there are not enough linearly independent eigenvectors
- For some eigenvalue, the geometric multiplicity is less than the algebraic multiplicity
- This requires more advanced techniques like Jordan canonical form

## Applications of Diagonalization

1. **Matrix Powers**: If A = PDP^(-1), then A^n = PD^nP^(-1)

2. **Solving Systems of Differential Equations**: ẋ = Ax can be solved using diagonalization

3. **Spectral Decomposition**: A = ∑λᵢvᵢvᵢ^T (for symmetric matrices)

4. **Computing Matrix Functions**: f(A) = Pf(D)P^(-1)

## Common Techniques and Tricks

### 1. Recognizing Diagonalizability

- If a matrix has n distinct eigenvalues, it is diagonalizable
- If a matrix is symmetric, it is diagonalizable
- If the characteristic polynomial splits into linear factors and the geometric multiplicity equals algebraic multiplicity for each eigenvalue, the matrix is diagonalizable

### 2. Dealing with Repeated Eigenvalues

- For an eigenvalue λ with algebraic multiplicity m, check if the null space of (A - λI) has dimension m
- If dimension < m, the matrix is not diagonalizable
- To find multiple linearly independent eigenvectors for the same eigenvalue, solve (A - λI)v = 0 and find a basis for the null space

### 3. Verification Short-cuts

- To verify diagonalization, it's often easier to check AP = PD instead of P^(-1)AP = D
- This avoids having to compute P^(-1)

## Solving Diagonalization Exercises

### Strategy 1: For 2×2 Matrices

1. Calculate the determinant and trace to find eigenvalues quickly:
   - λ₁ + λ₂ = tr(A)
   - λ₁ × λ₂ = det(A)
   - Solve x² - tr(A)x + det(A) = 0

2. Find eigenvectors directly from (A - λI)v = 0

3. Form P and D, verify AP = PD

### Strategy 2: Exploiting Special Structures

1. For matrices with special structures:
   - Symmetric: use orthogonality properties
   - Triangular: easy eigenvalues from diagonal
   - Block diagonal: work with each block separately

2. Look for patterns that make calculations easier

### Strategy 3: Checking Diagonalizability Directly

1. Compute the rank of (A - λI) for each eigenvalue λ
2. Compare n - rank(A - λI) with the algebraic multiplicity of λ
3. If they're equal for all eigenvalues, A is diagonalizable

### Exercises

1. Consider 
   $$A = \begin{pmatrix} 2 & 0 & 0 \\ 0 & 1 & -1 \\ 0 & -1 & 1 \end{pmatrix} \in \mathbb{R}^{3 \times 3}$$
   Establish whether $A$ is diagonalizable. If yes, find an invertible matrix $P \in \mathbb{R}^{3 \times 3}$ and a diagonal matrix $D \in \mathbb{R}^{3 \times 3}$ such that $P^{-1}AP = D$.

2. Consider 
   $$A = \begin{pmatrix} 1 & 0 & 1 \\ 0 & 3 & 0 \\ 1 & 0 & 1 \end{pmatrix} \in \mathbb{R}^{3 \times 3}$$
   Establish whether $A$ is diagonalizable. If yes, find an invertible matrix $P \in \mathbb{R}^{3 \times 3}$ and a diagonal matrix $D \in \mathbb{R}^{3 \times 3}$ such that $P^{-1}AP = D$.

3. Consider 
   $$A = \begin{pmatrix} -2 & 0 & 0 \\ 0 & 1 & 1 \\ 0 & 1 & 1 \end{pmatrix} \in \mathbb{R}^{3 \times 3}$$
   Establish whether $A$ is diagonalizable. If yes, find an invertible matrix $P \in \mathbb{R}^{3 \times 3}$ and a diagonal matrix $D \in \mathbb{R}^{3 \times 3}$ such that $P^{-1}AP = D$.

4. Check if the following matrices $A_i$ are diagonalizable over $\mathbb{R}$ and, if they exist, find for each $A_i$ a diagonal matrix $D$ and an invertible matrix $C$ such that $C^{-1}A_iC = D$:
  - $A_1 = \begin{pmatrix} 3 & 8 \\ 2 & 3 \end{pmatrix}$
  - $A_2 = \begin{pmatrix} 1 & -3 \\ 5 & 4 \end{pmatrix}$
  - $A_3 = \begin{pmatrix} 1 & 0 \\ 5 & 3 \end{pmatrix}$
  - $A_4 = \begin{pmatrix} 1 & -3 & 3 \\ 3 & -5 & 3 \\ 6 & -6 & 4 \end{pmatrix}$
  - $A_5 = \begin{pmatrix} 2 & 1 & 0 \\ 0 & 1 & -1 \\ 0 & 2 & 4 \end{pmatrix}$

5. Find the eigenvalues of the following matrix:
  $A = \begin{pmatrix} 2 & 1 & 0 \\ 0 & 1 & -1 \\ 0 & 2 & 4 \end{pmatrix}$