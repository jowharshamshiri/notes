
## Definition

A **linear transformation** (or linear map) is a function T: V → W between vector spaces that preserves the operations of vector addition and scalar multiplication. Specifically, for all vectors u, v ∈ V and all scalars c:

1. T(u + v) = T(u) + T(v)  (Preserves addition)
2. T(cu) = cT(u)  (Preserves scalar multiplication)

## Matrix Representation

Every linear transformation T: ℝⁿ → ℝᵐ can be represented as matrix multiplication by an m×n matrix A:

T(x) = Ax

To find the matrix A of a linear transformation T:
1. Apply T to each standard basis vector eᵢ
2. The columns of A are the vectors T(eᵢ)

## Properties of Linear Transformations

1. **Composition**: If T: V → W and S: W → U are linear transformations, then their composition S∘T: V → U defined by (S∘T)(v) = S(T(v)) is also a linear transformation.

2. **Matrix of composition**: If S and T have matrices A and B respectively, then S∘T has matrix AB.

3. **Kernel (Null Space)**: The kernel of T, denoted ker(T) or null(T), is the set of all vectors v in V such that T(v) = 0. It is a subspace of V.

4. **Image (Range)**: The image of T, denoted im(T) or range(T), is the set of all vectors w in W such that w = T(v) for some v in V. It is a subspace of W.

5. **Dimension Theorem**: For a linear transformation T: V → W:
   - dim(ker(T)) + dim(im(T)) = dim(V)

6. **Injectivity**: T is injective (one-to-one) if and only if ker(T) = {0}.

7. **Surjectivity**: T is surjective (onto) if and only if im(T) = W.

8. **Invertibility**: T is invertible if and only if it is both injective and surjective.

## Finding the Matrix of a Linear Transformation

### Example: Function Description to Matrix

For T: ℝ³ → ℝ² defined by T(x,y,z) = (x+2y+3z, 2y+z):

1. Apply T to each standard basis vector:
   - T(1,0,0) = (1,0)
   - T(0,1,0) = (2,2)
   - T(0,0,1) = (3,1)

2. These vectors form the columns of the matrix:
   A = $\begin{bmatrix} 1 & 2 & 3 \\ 0 & 2 & 1 \end{bmatrix}$

### Example: Matrix to Function Description

Given a matrix A = $\begin{bmatrix} 1 & 3 \\ -1 & 2 \\ 5 & 0 \end{bmatrix}$, the corresponding linear transformation T: ℝ² → ℝ³ is:

T(x,y) = $\begin{bmatrix} 1 & 3 \\ -1 & 2 \\ 5 & 0 \end{bmatrix} \begin{bmatrix} x \\ y \end{bmatrix} = \begin{bmatrix} x+3y \\ -x+2y \\ 5x \end{bmatrix}$

## Kernel and Image

### Finding the Kernel

To find ker(T) for a linear transformation T with matrix A:
1. Solve the homogeneous system Ax = 0
2. Find the general solution, which gives a parametric description of ker(T)
3. Extract a basis for ker(T) from the general solution

### Finding the Image

To find im(T) for a linear transformation T with matrix A:
1. Determine the pivot columns of A
2. The corresponding column vectors of A form a basis for im(T)
3. Alternatively, the span of the columns of A equals im(T)

### Example: Finding Kernel and Image

For T: ℝ³ → ℝ² with matrix A = $\begin{bmatrix} 1 & 2 & 3 \\ 2 & 4 & 6 \end{bmatrix}$:

1. Finding ker(T):
   - Set up Ax = 0:
     $\begin{bmatrix} 1 & 2 & 3 \\ 2 & 4 & 6 \end{bmatrix} \begin{bmatrix} x \\ y \\ z \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$
   
   - Row reduce the augmented matrix:
     $\begin{bmatrix} 1 & 2 & 3 & | & 0 \\ 2 & 4 & 6 & | & 0 \end{bmatrix} \rightarrow \begin{bmatrix} 1 & 2 & 3 & | & 0 \\ 0 & 0 & 0 & | & 0 \end{bmatrix}$
   
   - General solution: x = -2y - 3z
   
   - Parametric form: 
     $\begin{bmatrix} x \\ y \\ z \end{bmatrix} = \begin{bmatrix} -2y - 3z \\ y \\ z \end{bmatrix} = y\begin{bmatrix} -2 \\ 1 \\ 0 \end{bmatrix} + z\begin{bmatrix} -3 \\ 0 \\ 1 \end{bmatrix}$
   
   - Basis for ker(T): $\{(-2,1,0), (-3,0,1)\}$
   - dim(ker(T)) = 2

2. Finding im(T):
   - The columns of A are $\begin{bmatrix} 1 \\ 2 \end{bmatrix}$, $\begin{bmatrix} 2 \\ 4 \end{bmatrix}$, $\begin{bmatrix} 3 \\ 6 \end{bmatrix}$
   
   - Row reducing A:
     $\begin{bmatrix} 1 & 2 & 3 \\ 2 & 4 & 6 \end{bmatrix} \rightarrow \begin{bmatrix} 1 & 2 & 3 \\ 0 & 0 & 0 \end{bmatrix}$
   
   - There's one pivot column (the first)
   
   - Basis for im(T): $\{(1,2)\}$
   - dim(im(T)) = 1

3. Verify: dim(ker(T)) + dim(im(T)) = 2 + 1 = 3 = dim(ℝ³)

## Checking if a Function is a Linear Transformation

A function is a linear transformation if and only if it satisfies these two conditions for all vectors u, v and all scalars c:
1. T(u + v) = T(u) + T(v)
2. T(cu) = cT(u)

### Example: Verification

Is f: ℝ² → ℝ² defined by f(x, y) = (x + y, x - y + 1) a linear transformation?

Check condition 1:
- f((x₁, y₁) + (x₂, y₂)) = f(x₁ + x₂, y₁ + y₂) = ((x₁ + x₂) + (y₁ + y₂), (x₁ + x₂) - (y₁ + y₂) + 1)
- = (x₁ + y₁ + x₂ + y₂, x₁ - y₁ + x₂ - y₂ + 1)

- f(x₁, y₁) + f(x₂, y₂) = (x₁ + y₁, x₁ - y₁ + 1) + (x₂ + y₂, x₂ - y₂ + 1)
- = (x₁ + y₁ + x₂ + y₂, x₁ - y₁ + 1 + x₂ - y₂ + 1)
- = (x₁ + y₁ + x₂ + y₂, x₁ - y₁ + x₂ - y₂ + 2)

These are not equal (due to the constant term 1), so f is not a linear transformation.

## Special Types of Linear Transformations

### 1. Identity Transformation

The identity transformation I: V → V maps each vector to itself: I(v) = v
- Matrix representation: the identity matrix I

### 2. Zero Transformation

The zero transformation 0: V → W maps every vector to the zero vector: 0(v) = 0
- Matrix representation: the zero matrix 0

### 3. Projection

A projection maps vectors onto a subspace along a specific direction
- Example: Projection onto the x-axis in ℝ²: P(x,y) = (x,0)
- Matrix: $\begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$

### 4. Rotation

A rotation transforms vectors by rotating them around the origin
- Example: 90° counterclockwise rotation in ℝ²: R(x,y) = (-y,x)
- Matrix: $\begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}$

### 5. Reflection

A reflection transforms vectors by reflecting them across a line or plane
- Example: Reflection across the x-axis in ℝ²: S(x,y) = (x,-y)
- Matrix: $\begin{bmatrix} 1 & 0 \\ 0 & -1 \end{bmatrix}$

### 6. Scaling

A scaling transformation stretches or compresses vectors along coordinate axes
- Example: Scaling by factors of 2 and 3 in ℝ²: T(x,y) = (2x,3y)
- Matrix: $\begin{bmatrix} 2 & 0 \\ 0 & 3 \end{bmatrix}$

### 7. Shear

A shear transformation preserves certain lines while shifting others
- Example: Horizontal shear in ℝ²: H(x,y) = (x+ky,y) where k is the shear factor
- Matrix: $\begin{bmatrix} 1 & k \\ 0 & 1 \end{bmatrix}$

## Solving Exercises on Linear Transformations

### Exercise Type 1: Finding the Matrix of a Linear Transformation

1. Apply the transformation to each standard basis vector
2. The results become the columns of the matrix

Example: T: ℝ³ → ℝ² defined by T(x,y,z) = (z-x, y+z)
- T(1,0,0) = (-1,0)
- T(0,1,0) = (0,1)
- T(0,0,1) = (1,1)
- Matrix: $\begin{bmatrix} -1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}$

### Exercise Type 2: Verifying Linear Transformations

1. Check if T(u+v) = T(u) + T(v) for arbitrary vectors u and v
2. Check if T(cu) = cT(u) for arbitrary vector u and scalar c
3. If both conditions hold, the function is a linear transformation

### Exercise Type 3: Finding Kernel and Image

1. Write the transformation as a matrix A
2. Find ker(T) by solving Ax = 0
3. Find im(T) by finding the span of the columns of A
4. Find bases for both subspaces
5. Verify the dimension theorem: dim(ker(T)) + dim(im(T)) = dim(domain)

### Exercise Type 4: Analyzing Properties

1. Determine if the transformation is injective (ker(T) = {0})
2. Determine if the transformation is surjective (im(T) = codomain)
3. Determine if the transformation is invertible (both injective and surjective)

## Common Mistakes to Avoid

1. Forgetting to check both linearity conditions when verifying a linear transformation
2. Confusing the domain and codomain dimensions when setting up the matrix
3. Incorrectly applying the transformation to the standard basis vectors
4. Errors in row reduction when finding the kernel
5. Not finding a basis for the image, but just describing it as a span

## Connection to Other Topics

Linear transformations connect to many other topics in linear algebra:

1. **Matrix Operations**: Composition of linear transformations corresponds to matrix multiplication
2. **Eigenvalues/Eigenvectors**: Eigenspaces are invariant subspaces under a linear transformation
3. **Change of Basis**: A change of basis can be viewed as a linear transformation
4. **Diagonalization**: A linear transformation is diagonalizable if there is a basis of eigenvectors
5. **Singular Value Decomposition**: Represents a linear transformation in terms of simple stretching and rotating operations
### Exercises

1. Given the linear map $F: \mathbb{R}^3 \to \mathbb{R}^4$ where $F(x,y,z) = (x+2y+3z+4t,2y+z+t,(x+4y+z+2t,y))$, find:
   
   (a) the matrix associated to $F$,
   
   (b) kernel of $F$ and image of $F$.

2. Given the linear map $F: \mathbb{R}^4 \to \mathbb{R}^4$ where $F(x,y,z,t) = (x+y,x-3z,x-3z,t)$, find:
   
   (a) the matrix associated to $F$,
   
   (b) kernel of $F$ and image of $F$.

3. Determine the image of the linear mapping $F$ from $\mathbb{R}^3$ in itself where $F(x,y,z) = (2x,0,y-x)$.

4. Determine the image of the linear mapping $F$ from $\mathbb{R}^3$ in itself where $F(x,y,z) = (x-y,y-x,z+y-x)$.

5. Given the linear map $F: \mathbb{R}^4 \to \mathbb{R}^4$ where $F(x,y,z,t) = (x+y,x-3z,x-3z,t)$, find:
   
   (a) the matrix associated to $F$,
   
   (b) kernel of $F$ and image of $F$.

6. Check if the following functions are linear transformations:
  - $f: \mathbb{R}^2 \to \mathbb{R}^3$ where $f(x, y) = (x + y, -x + 3y, 2x - y)$
  - $f: \mathbb{R}^2 \to \mathbb{R}^2$ where $f(x, y) = (x + 3y, x - y + 1)$
  - $f: \mathbb{R}^3 \to \mathbb{R}^3$ where $f(x, y, z) = (x + 2y - z, -x + 5y - z, 3x + 4y)$
  - $f: \mathbb{R}^3 \to \mathbb{R}^3$ where $f(x, y, z) = (x - z, 2x + y - z, 3x + 4y - 2z)$

7. Find the matrix associated with the linear transformation:
  - $f: \mathbb{R}^3 \to \mathbb{R}^2$ defined by $f(x, y, z) = (z - x, y + z)$

8. Find the kernel and image of the following linear transformations:
  - $f: \mathbb{R}^2 \to \mathbb{R}^2$ where $f(x, y) = (2x + 4y, -3x + 2y)$
  - $f: \mathbb{R}^2 \to \mathbb{R}^2$ where $f(x, y) = (2x + 3y, 4x + 6y)$
  - $f: \mathbb{R}^3 \to \mathbb{R}^3$ where $f(x, y, z) = (x + y + z, 5x + 4y - z, 3x + 2y - 3z)$
