![[Screenshot 2025-02-20 at 14.52.29.png]]
![[Screenshot 2025-02-20 at 15.09.26.png]]
![[Screenshot 2025-02-20 at 15.11.17.png]]![[Screenshot 2025-02-20 at 15.11.58.png]]![[Screenshot 2025-02-20 at 15.30.29.png]]


![[Screenshot 2025-02-20 at 15.30.42.png]]
# Vector Spaces

## Definition
A vector space V over a field F consists of a set of elements (called vectors) along with two operations (vector addition and scalar multiplication) that satisfy the following axioms:

1. **Closure under addition**: For all u, v ∈ V, u + v ∈ V
2. **Commutativity**: For all u, v ∈ V, u + v = v + u
3. **Associativity**: For all u, v, w ∈ V, (u + v) + w = u + (v + w)
4. **Additive identity**: There exists an element 0 ∈ V such that v + 0 = v for all v ∈ V
5. **Additive inverse**: For each v ∈ V, there exists an element -v ∈ V such that v + (-v) = 0
6. **Closure under scalar multiplication**: For all v ∈ V and α ∈ F, αv ∈ V
7. **Distributivity over vector addition**: For all α ∈ F and u, v ∈ V, α(u + v) = αu + αv
8. **Distributivity over scalar addition**: For all α, β ∈ F and v ∈ V, (α + β)v = αv + βv
9. **Scalar multiplication associativity**: For all α, β ∈ F and v ∈ V, α(βv) = (αβ)v
10. **Scalar multiplication identity**: For all v ∈ V, 1v = v

## Subspaces

A subset W of a vector space V is a subspace if and only if it satisfies:
1. The zero vector is in W
2. W is closed under vector addition: For all u, v ∈ W, u + v ∈ W
3. W is closed under scalar multiplication: For all v ∈ W and α ∈ F, αv ∈ W

### Testing if a set is a subspace

For a set defined by equations, here's how to test if it's a subspace:
1. Check if it contains the zero vector (0,0,...,0)
2. Check if it's closed under addition and scalar multiplication

For a set defined as {x ∈ V | Ax = 0}, it's always a subspace.
For a set defined as {x ∈ V | Ax = b} where b ≠ 0, it's not a subspace.

For sets defined by other equations, rewrite them to see if they can be expressed as homogeneous linear equations.

## Basis and Dimension

A set of vectors {v₁, v₂, ..., vₙ} is a basis for a vector space V if:
1. The vectors are linearly independent
2. They span the vector space V (every vector in V can be written as a linear combination of these vectors)

The dimension of a vector space is the number of vectors in its basis.

## Finding a Basis for a Subspace

To find a basis for a subspace defined by equations:
1. Convert the equations to a homogeneous system Ax = 0
2. Find the general solution to this system
3. Express the general solution in parametric form
4. The coefficient vectors of the parameters form a basis

## Example: Testing if a Set is a Subspace

For S = {(x, y) ∈ ℝ² | x + y - 1 = 0}:
1. Check zero vector: (0,0) doesn't satisfy x + y - 1 = 0, so S is not a subspace.

For S = {(x, y) ∈ ℝ² | (2x - y)(2x + y) = 0}:
This means either 2x - y = 0 or 2x + y = 0.
1. Contains zero: (0,0) satisfies both equations, so it contains zero.
2. Closure under addition: If u = (u₁,u₂) and v = (v₁,v₂) are in S:
   - If both satisfy the same equation (e.g., 2x - y = 0), then u + v also satisfies it.
   - If they satisfy different equations, u + v might not satisfy either equation.
   So S is not closed under addition and is not a subspace.

For S = {(x, y) ∈ ℝ² | 4x² - 4xy + y² = 0}:
This can be rewritten as (2x - y)² = 0, meaning 2x - y = 0.
1. Contains zero: (0,0) satisfies 2x - y = 0, so it contains zero.
2. Closure under addition and scalar multiplication: Since 2x - y = 0 is a linear equation, S is closed under both operations.
So S is a subspace, and a basis is {(1,2)} (one vector because it's a line through the origin).

## Example: Finding Bases for Subspaces

For S = {(x, y, z) ∈ ℝ³ | x + y - 4 = 0, z = 0}:
1. Not a subspace because (0,0,0) doesn't satisfy x + y - 4 = 0.

For S = {(x, y, z) ∈ ℝ³ | x + y - 4 = 0, z = 1}:
1. Not a subspace because (0,0,0) doesn't satisfy z = 1.

For S = {(x, y, z, t) ∈ ℝ⁴ | x - 3y + z = 0}:
1. Contains zero: (0,0,0,0) satisfies x - 3y + z = 0.
2. Closure: This is a linear equation, so S is closed under addition and scalar multiplication.
Therefore, S is a subspace.

To find a basis:
- Rewrite as x = 3y - z, so x is dependent on y, z, and t is free.
- General solution: (3y-z, y, z, t) = y(3,1,0,0) + z(-1,0,1,0) + t(0,0,0,1)
- A basis is {(3,1,0,0), (-1,0,1,0), (0,0,0,1)}



### Exercises

1. Check if the following sets are subspaces and, if there exist, find two bases for each subspace:
	  - $S = \{(x, y) \in \mathbb{R}^2 | x + y - 1 = 0\}$
	  - $S = \{(x, y) \in \mathbb{R}^2 | (2x - y)(2x + y) = 0\}$
	  - $S = \{(x, y) \in \mathbb{R}^2 | 4x^2 - 4xy + y^2 = 0\}$