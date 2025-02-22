---
---

## Vector Fields

### Definition

A vector field $\mathbf{F}$ in 3D space assigns a vector $\mathbf{F}(x,y,z)$ to each point $(x,y,z)$ in its domain:
$$\mathbf{F}(x,y,z) = P(x,y,z)\mathbf{i} + Q(x,y,z)\mathbf{j} + R(x,y,z)\mathbf{k}$$

In 2D space, a vector field has the form:
$$\mathbf{F}(x,y) = P(x,y)\mathbf{i} + Q(x,y)\mathbf{j}$$

### Conservative Vector Fields

A vector field $\mathbf{F}$ is conservative if there exists a scalar function $f$ such that $\mathbf{F} = \nabla f$. In this case:

- $f$ is called the potential function of $\mathbf{F}$
- Line integrals of $\mathbf{F}$ are path-independent
- $\oint_C \mathbf{F} \cdot d\mathbf{r} = 0$ for any closed curve $C$

### Criteria for Conservative Fields

A vector field $\mathbf{F} = P\mathbf{i} + Q\mathbf{j} + R\mathbf{k}$ is conservative if and only if:

- $\frac{\partial P}{\partial y} = \frac{\partial Q}{\partial x}$
- $\frac{\partial P}{\partial z} = \frac{\partial R}{\partial x}$
- $\frac{\partial Q}{\partial z} = \frac{\partial R}{\partial y}$

In a simply connected domain, these conditions are equivalent to $\nabla \times \mathbf{F} = \mathbf{0}$.

## Differential Operators

### Gradient

The gradient of a scalar function $f(x,y,z)$ is a vector field:
$$\nabla f = \frac{\partial f}{\partial x}\mathbf{i} + \frac{\partial f}{\partial y}\mathbf{j} + \frac{\partial f}{\partial z}\mathbf{k}$$

Properties:

- $\nabla f$ points in the direction of steepest increase of $f$
- $\nabla f$ is perpendicular to level surfaces of $f$
- The magnitude $|\nabla f|$ gives the rate of change in the direction of steepest increase

### Divergence

The divergence of a vector field $\mathbf{F} = P\mathbf{i} + Q\mathbf{j} + R\mathbf{k}$ is a scalar field:
$$\nabla \cdot \mathbf{F} = \frac{\partial P}{\partial x} + \frac{\partial Q}{\partial y} + \frac{\partial R}{\partial z}$$

Physical interpretation:

- Measures the rate at which "flux" exits a small region around a point
- Positive divergence: source (field lines flow outward)
- Negative divergence: sink (field lines flow inward)
- Zero divergence: no net creation or destruction (incompressible flow)

### Curl

The curl of a vector field $\mathbf{F} = P\mathbf{i} + Q\mathbf{j} + R\mathbf{k}$ is a vector field:
$$\nabla \times \mathbf{F} = \begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\
\frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\
P & Q & R
\end{vmatrix}$$

$$\nabla \times \mathbf{F} = \left(\frac{\partial R}{\partial y} - \frac{\partial Q}{\partial z}\right)\mathbf{i} + \left(\frac{\partial P}{\partial z} - \frac{\partial R}{\partial x}\right)\mathbf{j} + \left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right)\mathbf{k}$$

Physical interpretation:
- Measures the rotational tendency of the field
- The direction of curl is the axis of rotation
- The magnitude of curl gives the strength of rotation
- Zero curl: irrotational field (no rotational component)

### Laplacian
The Laplacian of a scalar function $f$ is:
$$\nabla^2 f = \nabla \cdot (\nabla f) = \frac{\partial^2 f}{\partial x^2} + \frac{\partial^2 f}{\partial y^2} + \frac{\partial^2 f}{\partial z^2}$$

The Laplacian of a vector field $\mathbf{F}$ is:
$$\nabla^2 \mathbf{F} = \nabla^2 P \mathbf{i} + \nabla^2 Q \mathbf{j} + \nabla^2 R \mathbf{k}$$

Applications:
- Appears in many physical equations (heat equation, wave equation, Poisson's equation)
- $\nabla^2 f = 0$ defines harmonic functions (solutions to Laplace's equation)

## Vector Calculus Identities

### Basic Identities
- $\nabla(f + g) = \nabla f + \nabla g$
- $\nabla(fg) = f\nabla g + g\nabla f$
- $\nabla \cdot (f\mathbf{F}) = f(\nabla \cdot \mathbf{F}) + \mathbf{F} \cdot \nabla f$
- $\nabla \times (f\mathbf{F}) = f(\nabla \times \mathbf{F}) + (\nabla f) \times \mathbf{F}$
- $\nabla \cdot (\mathbf{F} \times \mathbf{G}) = \mathbf{G} \cdot (\nabla \times \mathbf{F}) - \mathbf{F} \cdot (\nabla \times \mathbf{G})$

### Second-Order Identities
- $\nabla \times (\nabla f) = \mathbf{0}$ (curl of a gradient is zero)
- $\nabla \cdot (\nabla \times \mathbf{F}) = 0$ (divergence of a curl is zero)
- $\nabla \times (\nabla \times \mathbf{F}) = \nabla(\nabla \cdot \mathbf{F}) - \nabla^2 \mathbf{F}$

## Worked Examples

### Example 1: Determining if a Vector Field is Conservative

Determine if the vector field $\mathbf{F}(x,y,z) = (y^2+z) \mathbf{i} + (2xy-z) \mathbf{j} + (x-y) \mathbf{k}$ is conservative, and if so, find a potential function.

Solution:
1. Check if $\nabla \times \mathbf{F} = \mathbf{0}$:
   - $\frac{\partial}{\partial y}(x-y) - \frac{\partial}{\partial z}(2xy-z) = -1 - (-1) = 0$
   - $\frac{\partial}{\partial z}(y^2+z) - \frac{\partial}{\partial x}(x-y) = 1 - 1 = 0$
   - $\frac{\partial}{\partial x}(2xy-z) - \frac{\partial}{\partial y}(y^2+z) = 2y - 2y = 0$

   Since $\nabla \times \mathbf{F} = \mathbf{0}$, the field is conservative.

2. Find the potential function $f$ such that $\mathbf{F} = \nabla f$:
   - $\frac{\partial f}{\partial x} = y^2+z$
   - $\frac{\partial f}{\partial y} = 2xy-z$
   - $\frac{\partial f}{\partial z} = x-y$

3. Integrate $\frac{\partial f}{\partial x} = y^2+z$ with respect to $x$:
   - $f(x,y,z) = xy^2 + xz + g(y,z)$, where $g(y,z)$ is a function of $y$ and $z$ only

4. Differentiate with respect to $y$:
   - $\frac{\partial f}{\partial y} = 2xy + \frac{\partial g}{\partial y}$
   - Comparing with $\frac{\partial f}{\partial y} = 2xy-z$, we get:
   - $\frac{\partial g}{\partial y} = -z$

5. Integrate with respect to $y$:
   - $g(y,z) = -yz + h(z)$, where $h(z)$ is a function of $z$ only

6. Differentiate with respect to $z$:
   - $\frac{\partial f}{\partial z} = x - y + \frac{dh}{dz}$
   - Comparing with $\frac{\partial f}{\partial z} = x-y$, we get:
   - $\frac{dh}{dz} = 0$, so $h(z) = C$ (a constant)

7. Therefore, the potential function is:
   - $f(x,y,z) = xy^2 + xz - yz + C$

## Strategies for Solving Vector Calculus Problems

### For Testing if a Field is Conservative
1. Compute the curl: $\nabla \times \mathbf{F}$
2. Check if the curl is identically zero
3. If yes, find the potential function by integrating the components
4. Verify your potential function by taking its gradient

## Connections to Linear Algebra

The concepts in vector calculus build directly on fundamental ideas from linear algebra:

- Vectors and vector operations from [[linear_algebra/vector_geometry/Vectors]]
- Dot products from [[Dot (Inner) Product]]
- Cross products from [[Cross Product]]
- Vector spaces from [[Vector Spaces]]

## See
- [[Vector Geometry]]
- [[Gradients]]
- [[Multiple Integrals]]
- [[Derivatives]] - For foundation of differential operators
- [[Integration Techniques]] - For foundation of integral operators
### See

- ### [[Multivariable Calculus]]

- ### [[Vector Geometry]] (in Linear Algebra)

- ### [[Gradients]]

- ### [[Multiple Integrals]]
