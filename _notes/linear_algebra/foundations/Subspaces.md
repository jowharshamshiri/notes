---
---

# Subspaces

## Definition

A **subspace** of a vector space V is a subset W of V that is itself a vector space under the same operations of addition and scalar multiplication. To be a subspace, W must satisfy three conditions:

1. The zero vector of V is in W
2. W is closed under vector addition: for all u, v in W, u + v is in W
3. W is closed under scalar multiplication: for all v in W and scalar c, cv is in W

Note: Conditions 2 and 3 can be combined into a single condition: W is closed under linear combinations.

## Testing if a Set is a Subspace

To determine if a subset W of a vector space V is a subspace:

1. Check if the zero vector is in W
2. Check if W is closed under addition: For arbitrary vectors u, v in W, verify that u + v is in W
3. Check if W is closed under scalar multiplication: For an arbitrary vector v in W and scalar c, verify that cv is in W

In practice, for subsets defined by equations, we can check:

- If W is defined by a system of homogeneous linear equations, it is always a subspace
- If W is defined by a system of non-homogeneous linear equations (with non-zero constants), it is never a subspace
- If W is defined by nonlinear equations, check all three conditions carefully

## Common Types of Subspaces

### 1. Trivial Subspaces

- The zero subspace {0} containing only the zero vector
- The entire vector space V itself

### 2. Solution Spaces

- **Null Space** of a matrix A (denoted null(A) or ker(A)): the set of all solutions to Ax = 0
- **Column Space** of a matrix A (denoted col(A) or im(A)): the span of the columns of A
- **Row Space** of a matrix A (denoted row(A)): the span of the rows of A
- **Left Null Space** of a matrix A: the null space of A^T

### 3. Geometric Subspaces

- Lines through the origin in ℝ²
- Planes through the origin in ℝ³
- Hyperplanes through the origin in ℝⁿ

### 4. Function Subspaces

- The set of all polynomials of degree at most n
- The set of all continuous functions on an interval
- The set of all differentiable functions on an interval

## Basis and Dimension of a Subspace

A **basis** for a subspace W is a linearly independent set of vectors that spans W. The **dimension** of W, denoted dim(W), is the number of vectors in a basis.

To find a basis for a subspace:

1. For a subspace defined by a spanning set {v₁, v₂, ..., vₙ}:
   - Remove any linearly dependent vectors
   - The remaining vectors form a basis

2. For a subspace defined by equations Ax = 0:
   - Find the general solution to the system
   - Extract the vectors that multiply the free variables
   - These vectors form a basis for the solution space

## Examples

### Example 1: Testing if a Set is a Subspace

Determine if S = {(x, y, z) ∈ ℝ³ | x + y - 4 = 0, z = 0} is a subspace of ℝ³.

Step 1: Check if the zero vector (0,0,0) is in S
- Substituting into the equations: 0 + 0 - 4 = -4 ≠ 0 and 0 = 0
- Since (0,0,0) doesn't satisfy x + y - 4 = 0, S is not a subspace

### Example 2: Finding a Basis for a Subspace

Find a basis for the subspace S = {(x, y, z, t) ∈ ℝ⁴ | x - 3y + z = 0}.

Step 1: Rewrite the equation to express one variable in terms of the others
x = 3y - z

Step 2: Express the general solution in parametric form
For any values of y, z, and t:
(x, y, z, t) = (3y - z, y, z, t)
= y(3, 1, 0, 0) + z(-1, 0, 1, 0) + t(0, 0, 0, 1)

Step 3: The vectors that multiply the parameters form a basis
Basis = {(3, 1, 0, 0), (-1, 0, 1, 0), (0, 0, 0, 1)}

Step 4: Verify that these vectors are linearly independent
The matrix with these vectors as columns has full rank, so they are linearly independent

Step 5: Find the dimension
dim(S) = 3

### Example 3: Determining the Rank of a Matrix with Parameters 

For h ≠ 0:
R₃ = R₃ - ((h² + 1)/(2h))R₂:
$\begin{pmatrix} 1 & 1/2 & 0 & 0 \\ 0 & h & 1 & h + 1 \\ 0 & 0 & h - \frac{(h^2 + 1)}{2h} & -(h+1)\frac{(h^2 + 1)}{2h} \end{pmatrix}$

Simplifying the (3,3) entry:
$h - \frac{(h^2 + 1)}{2h} = h - \frac{h^2}{2h} - \frac{1}{2h} = h - \frac{h}{2} - \frac{1}{2h} = \frac{h}{2} - \frac{1}{2h}$

Step 2: Analyze the rank based on different values of h

Case 1: If h = 0
The matrix becomes:
$\begin{pmatrix} 1 & 1/2 & 0 & 0 \\ 0 & 0 & 1 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix}$
This has 2 non-zero rows, so rank(A₀) = 2

Case 2: If $\frac{h}{2} - \frac{1}{2h} = 0$
This occurs when $h^2 = 1$, so h = ±1

For h = 1:
$\begin{pmatrix} 1 & 1/2 & 0 & 0 \\ 0 & 1 & 1 & 2 \\ 0 & 0 & 0 & 0 \end{pmatrix}$
So rank(A₁) = 2

For h = -1:
$\begin{pmatrix} 1 & 1/2 & 0 & 0 \\ 0 & -1 & 1 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}$
So rank(A₋₁) = 2

Case 3: For all other values of h:
The (3,3) entry is non-zero, so we have 3 non-zero rows, and rank(Aₕ) = 3

Step 3: Conclusion
- rank(A₀) = 2
- rank(A₁) = rank(A₋₁) = 2
- rank(Aₕ) = 3 for all other values of h

## Intersection and Sum of Subspaces

### Intersection of Subspaces

If U and W are subspaces of a vector space V, then their intersection U ∩ W is also a subspace of V.

To find a basis for U ∩ W:
1. Find bases for U and W
2. Form a system of equations whose solution space is U ∩ W
3. Solve the system to find a basis for the intersection

### Sum of Subspaces

The sum of two subspaces U and W is defined as:
U + W = {u + w | u ∈ U, w ∈ W}

The sum U + W is also a subspace of V.

To find a basis for U + W:
1. Find bases {u₁, u₂, ..., uₘ} for U and {w₁, w₂, ..., wₙ} for W
2. Form the set {u₁, u₂, ..., uₘ, w₁, w₂, ..., wₙ}
3. Remove linearly dependent vectors to obtain a basis for U + W

### Dimension Formula

For subspaces U and W:
dim(U + W) = dim(U) + dim(W) - dim(U ∩ W)

## Direct Sum

Two subspaces U and W form a direct sum, denoted U ⊕ W, if:
1. V = U + W
2. U ∩ W = {0}

In a direct sum, every vector v in V can be uniquely written as v = u + w where u ∈ U and w ∈ W.

If U and W form a direct sum, then:
dim(U ⊕ W) = dim(U) + dim(W)

## Examples

### Example 4: Finding the Intersection and Sum of Subspaces

In ℝ³, let U = span{(1,1,0), (0,1,1)} and W = span{(1,0,0), (1,1,1)}.

Step 1: Find a basis for U ∩ W
- Vector v is in U ∩ W if and only if v ∈ U and v ∈ W
- If v ∈ U, then v = a(1,1,0) + b(0,1,1) = (a, a+b, b)
- If v ∈ W, then v = c(1,0,0) + d(1,1,1) = (c+d, d, d)
- For v to be in both, we need:
  a = c+d
  a+b = d
  b = d
- From the third equation, b = d
- Substituting into the second: a+d = d, so a = 0
- From the first: 0 = c+d, so c = -d
- So v = d(-1,1,1) + d(1,0,0) = d(0,1,1)
- Thus U ∩ W = span{(0,1,1)}

Step 2: Find a basis for U + W
- Combined set: {(1,1,0), (0,1,1), (1,0,0), (1,1,1)}
- Check for linear independence:
  (1,1,1) = (1,1,0) + (0,0,1) = (1,1,0) + (0,1,1) - (0,1,0)
- So (1,1,1) is linearly dependent on the other vectors
- A basis for U + W is {(1,1,0), (0,1,1), (1,0,0)}
- dim(U + W) = 3

Step 3: Verify the dimension formula
- dim(U) = 2, dim(W) = 2, dim(U ∩ W) = 1
- dim(U) + dim(W) - dim(U ∩ W) = 2 + 2 - 1 = 3 = dim(U + W) ✓

## Orthogonal Complements

For a subspace W of ℝⁿ, the orthogonal complement of W, denoted W⊥, is:
W⊥ = {v ∈ ℝⁿ | v·w = 0 for all w ∈ W}

Properties of orthogonal complements:
1. W⊥ is a subspace of ℝⁿ
2. (W⊥)⊥ = W
3. dim(W) + dim(W⊥) = n
4. If W is defined by a system of equations Ax = 0, then W⊥ is the row space of A

## Common Mistakes to Avoid

1. Forgetting to check if the zero vector is in the set
2. Assuming that any subset defined by equations is a subspace
3. Incorrectly calculating the dimension of a subspace
4. Errors in finding a basis for the intersection or sum of subspaces
5. Confusing the concepts of span, basis, and subspace

## Solving Subspace Exercises

### Strategy 1: Testing if a Set is a Subspace

1. Check if the set contains the zero vector
2. For sets defined by equations:
   - If all equations are homogeneous linear equations, it's a subspace
   - If any equation is non-homogeneous or nonlinear, check all conditions carefully

### Strategy 2: Finding a Basis for a Subspace

1. For a subspace defined by spanning vectors:
   - Test for linear independence
   - Remove linearly dependent vectors

2. For a subspace defined by equations:
   - Solve the system to find the general solution
   - Extract coefficient vectors of the free variables

### Strategy 3: Finding Dimension and Basis for Parametric Matrices

1. Perform row reduction keeping the parameter as a variable
2. Identify cases where the rank changes based on parameter values
3. Find a basis for each case separately

## Connection to Other Topics

Subspaces connect to many other topics in linear algebra:

1. **Linear Transformations**: The kernel and image of a linear transformation are subspaces
2. **Eigenspaces**: For each eigenvalue λ of a matrix A, the set of all eigenvectors with that eigenvalue, along with the zero vector, forms a subspace
3. **SVD and PCA**: These techniques involve finding important subspaces of data
4. **Orthogonal Projections**: Projecting onto a subspace is a fundamental operation in many applications
5. **Invariant Subspaces**: Subspaces that remain unchanged under specific transformations
### Exercises

1. Determine, for each value of $h$, the rank of the following matrix:
   $$A_h = \begin{pmatrix} 0 & h & 1 & h + 1 \\ 2 & 1 & 0 & 0 \\ -h^2 - 1 & 0 & h & 0 \end{pmatrix}$$
2. Check if the following sets are subspaces and, if there exist, find two bases for each subspace:
	  - $S = \{(x, y, z) \in \mathbb{R}^3 | x + y - 4 = 0, z = 0\}$
	  - $S = \{(x, y, z) \in \mathbb{R}^3 | x + y - 4 = 0, z = 1\}$
	  - $S = \{(x, y, z, t) \in \mathbb{R}^4 | x - 3y + z = 0\}$
	  