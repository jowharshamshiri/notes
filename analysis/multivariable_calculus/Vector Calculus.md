

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

## Line Integrals

### Line Integral of a Scalar Field
For a scalar function $f(x,y,z)$ along a curve $C$ parametrized by $\mathbf{r}(t) = (x(t), y(t), z(t))$ for $a \leq t \leq b$:

$\int_C f \, ds = \int_a^b f(\mathbf{r}(t)) \, |\mathbf{r}'(t)| \, dt$

Physical interpretation:
- Represents the "weighted length" of the curve
- Weights each infinitesimal segment by the value of $f$ at that point

### Line Integral of a Vector Field
For a vector field $\mathbf{F}(x,y,z)$ along a curve $C$ parametrized by $\mathbf{r}(t)$ for $a \leq t \leq b$:

$\int_C \mathbf{F} \cdot d\mathbf{r} = \int_a^b \mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) \, dt$

In component form:
$\int_C \mathbf{F} \cdot d\mathbf{r} = \int_C P \, dx + Q \, dy + R \, dz$

Physical interpretation:
- Represents the work done by force field $\mathbf{F}$ along path $C$
- Positive when $\mathbf{F}$ has a component in the direction of motion
- Negative when $\mathbf{F}$ has a component opposite to the direction of motion

### Fundamental Theorem for Line Integrals
If $\mathbf{F} = \nabla f$ is a conservative vector field with potential function $f$, then:

$\int_C \mathbf{F} \cdot d\mathbf{r} = f(\mathbf{r}(b)) - f(\mathbf{r}(a))$

This means the line integral depends only on the endpoints of the path, not on the path itself.

## Surface Integrals

### Surface Integral of a Scalar Field
For a scalar function $f(x,y,z)$ over a surface $S$ parametrized by $\mathbf{r}(u,v)$ for $(u,v)$ in some region $D$:

$\iint_S f \, dS = \iint_D f(\mathbf{r}(u,v)) \, |\mathbf{r}_u \times \mathbf{r}_v| \, du \, dv$

Physical interpretation:
- Represents the "weighted area" of the surface
- Weights each infinitesimal area element by the value of $f$ at that point

### Surface Integral of a Vector Field (Flux)
For a vector field $\mathbf{F}(x,y,z)$ across a surface $S$ with unit normal vector $\mathbf{n}$:

$\iint_S \mathbf{F} \cdot d\mathbf{S} = \iint_S \mathbf{F} \cdot \mathbf{n} \, dS$

For a parametrized surface:
$\iint_S \mathbf{F} \cdot d\mathbf{S} = \iint_D \mathbf{F}(\mathbf{r}(u,v)) \cdot (\mathbf{r}_u \times \mathbf{r}_v) \, du \, dv$

Physical interpretation:
- Represents the rate of fluid flow across the surface
- Positive when flow is outward, negative when flow is inward
- Zero when flow is tangential to the surface or when there is no flow

## Volume Integrals

For a scalar function $f(x,y,z)$ over a region $V$ in 3D space:

$\iiint_V f \, dV = \iiint_V f(x,y,z) \, dx \, dy \, dz$

In cylindrical coordinates $(r, \theta, z)$:
$\iiint_V f \, dV = \iiint_V f(r, \theta, z) \, r \, dr \, d\theta \, dz$

In spherical coordinates $(\rho, \theta, \phi)$:
$\iiint_V f \, dV = \iiint_V f(\rho, \theta, \phi) \, \rho^2 \sin\phi \, d\rho \, d\theta \, d\phi$

## Fundamental Theorems of Vector Calculus

### Green's Theorem
Relates a line integral around a simple closed curve $C$ to a double integral over the plane region $D$ enclosed by $C$:

$\oint_C (P \, dx + Q \, dy) = \iint_D \left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right) \, dA$

Special cases:
- $\oint_C x \, dy = \iint_D \, dA = \text{Area of } D$
- $\oint_C y \, dx = -\iint_D \, dA = -\text{Area of } D$

### Stokes' Theorem
Relates a line integral around a closed curve $C$ to a surface integral over any surface $S$ bounded by $C$:

$\oint_C \mathbf{F} \cdot d\mathbf{r} = \iint_S (\nabla \times \mathbf{F}) \cdot d\mathbf{S}$

Physical interpretation:
- The circulation of a vector field around a closed curve equals the curl flux through any surface bounded by the curve
- Generalizes Green's theorem to 3D

### Divergence Theorem (Gauss's Theorem)
Relates a surface integral over a closed surface $S$ to a volume integral over the region $V$ enclosed by $S$:

$\iint_S \mathbf{F} \cdot d\mathbf{S} = \iiint_V (\nabla \cdot \mathbf{F}) \, dV$

Physical interpretation:
- The total flux outward through a closed surface equals the total divergence over the enclosed volume
- Outward flux is positive, inward flux is negative

## Applications of Vector Calculus

### Fluid Dynamics
- Velocity field $\mathbf{v}(x,y,z,t)$ describes fluid motion
- $\nabla \cdot \mathbf{v} = 0$ for incompressible fluids
- $\nabla \times \mathbf{v} = \mathbf{0}$ for irrotational flows
- Navier-Stokes equations govern fluid flow

### Electromagnetism
- Electric field $\mathbf{E}$ and magnetic field $\mathbf{B}$
- Gauss's law: $\nabla \cdot \mathbf{E} = \frac{\rho}{\epsilon_0}$
- Gauss's law for magnetism: $\nabla \cdot \mathbf{B} = 0$
- Faraday's law: $\nabla \times \mathbf{E} = -\frac{\partial \mathbf{B}}{\partial t}$
- Ampere's law: $\nabla \times \mathbf{B} = \mu_0\mathbf{J} + \mu_0\epsilon_0\frac{\partial \mathbf{E}}{\partial t}$

### Heat Transfer
- Heat equation: $\frac{\partial u}{\partial t} = \alpha \nabla^2 u$
- Where $u$ is temperature and $\alpha$ is thermal diffusivity

### Gravitational Fields
- Gravitational potential $\Phi$ satisfies Poisson's equation: $\nabla^2 \Phi = 4\pi G\rho$
- Gravitational field $\mathbf{g} = -\nabla \Phi$

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

### Example 2: Evaluating a Line Integral

Evaluate the line integral $\int_C \mathbf{F} \cdot d\mathbf{r}$ where $\mathbf{F}(x,y) = (x^2 - y^2) \mathbf{i} + 2xy \mathbf{j}$ and $C$ is the unit circle traversed counterclockwise.

Solution:
1. Parametrize the unit circle:
   - $\mathbf{r}(t) = (\cos t, \sin t)$ for $0 \leq t \leq 2\pi$
   - $\mathbf{r}'(t) = (-\sin t, \cos t)$

2. Compute $\mathbf{F}(\mathbf{r}(t))$:
   - $\mathbf{F}(\cos t, \sin t) = (\cos^2 t - \sin^2 t) \mathbf{i} + 2\cos t \sin t \mathbf{j}$
   - $\mathbf{F}(\mathbf{r}(t)) = \cos(2t) \mathbf{i} + \sin(2t) \mathbf{j}$

3. Compute $\mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t)$:
   - $\mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) = \cos(2t)(-\sin t) + \sin(2t)(\cos t)$
   - $= -\cos(2t)\sin t + \sin(2t)\cos t$
   - $= \sin(2t)\cos t - \cos(2t)\sin t$
   - $= \sin(2t - t) = \sin t$

4. Evaluate the integral:
   - $\int_C \mathbf{F} \cdot d\mathbf{r} = \int_0^{2\pi} \sin t \, dt = [-\cos t]_0^{2\pi} = -\cos(2\pi) + \cos(0) = 0$

Alternative solution using Green's theorem:
1. Compute the curl in 2D:
   - $\frac{\partial}{\partial x}(2xy) - \frac{\partial}{\partial y}(x^2 - y^2) = 2y - (-2y) = 4y$

2. Apply Green's theorem:
   - $\int_C \mathbf{F} \cdot d\mathbf{r} = \iint_D 4y \, dA$
   - Due to the symmetry of the unit circle about the x-axis, the integral of $y$ over the disk is zero
   - Therefore, $\int_C \mathbf{F} \cdot d\mathbf{r} = 0$

### Example 3: Applying the Divergence Theorem

Use the divergence theorem to evaluate $\iint_S \mathbf{F} \cdot d\mathbf{S}$ where $\mathbf{F}(x,y,z) = x^2 \mathbf{i} + y^2 \mathbf{j} + z^2 \mathbf{k}$ and $S$ is the sphere of radius $a$ centered at the origin.

Solution:
1. Compute the divergence of $\mathbf{F}$:
   - $\nabla \cdot \mathbf{F} = \frac{\partial}{\partial x}(x^2) + \frac{\partial}{\partial y}(y^2) + \frac{\partial}{\partial z}(z^2) = 2x + 2y + 2z$

2. Apply the divergence theorem:
   - $\iint_S \mathbf{F} \cdot d\mathbf{S} = \iiint_V \nabla \cdot \mathbf{F} \, dV = \iiint_V (2x + 2y + 2z) \, dV$

3. Due to symmetry:
   - $\iiint_V x \, dV = \iiint_V y \, dV = \iiint_V z \, dV = 0$

4. Therefore:
   - $\iint_S \mathbf{F} \cdot d\mathbf{S} = 0$

### Example 4: Applying Stokes' Theorem

Verify Stokes' theorem for $\mathbf{F}(x,y,z) = (-y, x, z^2)$ where $C$ is the circle $x^2 + y^2 = a^2$, $z = b$ oriented counterclockwise when viewed from above.

Solution:
1. Compute the curl of $\mathbf{F}$:
   - $$\nabla \times \mathbf{F} = \begin{vmatrix} 
     \mathbf{i} & \mathbf{j} & \mathbf{k} \\
     \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\
     -y & x & z^2
     \end{vmatrix}$$
   - $= (0 - 0)\mathbf{i} + (0 - 2z)\mathbf{j} + (1 - 1)\mathbf{k} = -2z\mathbf{j}$

2. Evaluate the surface integral (left side of Stokes' theorem):
   - The surface $S$ is the disk $x^2 + y^2 \leq a^2$, $z = b$
   - The unit normal is $\mathbf{n} = \mathbf{k}$
   - $\nabla \times \mathbf{F} = -2z\mathbf{j} = -2b\mathbf{j}$ at any point on the disk
   - $(\nabla \times \mathbf{F}) \cdot \mathbf{n} = (-2b\mathbf{j}) \cdot \mathbf{k} = 0$
   - Therefore, $\iint_S (\nabla \times \mathbf{F}) \cdot d\mathbf{S} = 0$

3. Evaluate the line integral (right side of Stokes' theorem):
   - Parametrize $C$ as $\mathbf{r}(t) = (a\cos t, a\sin t, b)$ for $0 \leq t \leq 2\pi$
   - $\mathbf{r}'(t) = (-a\sin t, a\cos t, 0)$
   - $\mathbf{F}(\mathbf{r}(t)) = (-a\sin t, a\cos t, b^2)$
   - $\mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) = (-a\sin t)(-a\sin t) + (a\cos t)(a\cos t) + b^2 \cdot 0$
   - $= a^2\sin^2 t + a^2\cos^2 t = a^2$

4. Therefore:
   - $\oint_C \mathbf{F} \cdot d\mathbf{r} = \int_0^{2\pi} a^2 \, dt = a^2 \cdot 2\pi = 2\pi a^2$

This seems to contradict Stokes' theorem! Let's double-check our calculations:

Corrected calculation of the curl:
- $\nabla \times \mathbf{F} = \begin{vmatrix} 
  \mathbf{i} & \mathbf{j} & \mathbf{k} \\
  \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\
  -y & x & z^2
  \end{vmatrix}$
- $= \left(\frac{\partial z^2}{\partial y} - \frac{\partial x}{\partial z}\right)\mathbf{i} + \left(\frac{\partial (-y)}{\partial z} - \frac{\partial z^2}{\partial x}\right)\mathbf{j} + \left(\frac{\partial x}{\partial y} - \frac{\partial (-y)}{\partial x}\right)\mathbf{k}$
- $= 0\mathbf{i} + 0\mathbf{j} + (1 + 1)\mathbf{k} = 2\mathbf{k}$

Now, the surface integral:
- $(\nabla \times \mathbf{F}) \cdot \mathbf{n} = 2\mathbf{k} \cdot \mathbf{k} = 2$
- $\iint_S (\nabla \times \mathbf{F}) \cdot d\mathbf{S} = \iint_S 2 \, dS = 2 \cdot \pi a^2 = 2\pi a^2$

This matches the line integral result, verifying Stokes' theorem.

## Strategies for Solving Vector Calculus Problems

### For Testing if a Field is Conservative
1. Compute the curl: $\nabla \times \mathbf{F}$
2. Check if the curl is identically zero
3. If yes, find the potential function by integrating the components
4. Verify your potential function by taking its gradient

### For Line Integrals
1. If the field is conservative, use the fundamental theorem for line integrals
2. Otherwise, parametrize the curve and evaluate the integral directly
3. For closed curves, consider using Green's theorem in 2D
4. If the path is piecewise, split the integral into segments

### For Surface Integrals
1. Parametrize the surface appropriately
2. Compute the normal vector (using cross product of partial derivatives)
3. Evaluate the flux integral directly
4. For closed surfaces, consider using the divergence theorem

### For Volume Integrals
1. Choose appropriate coordinates (Cartesian, cylindrical, spherical)
2. Set up the correct limits of integration
3. Include the appropriate Jacobian factor
4. Use symmetry to simplify calculations when possible

### For Using Fundamental Theorems
1. Green's theorem: Use for line integrals in 2D around closed curves
2. Stokes' theorem: Use for line integrals in 3D around closed curves
3. Divergence theorem: Use for flux integrals across closed surfaces
4. Check that all conditions are satisfied before applying these theorems

See Also:
- [[Multivariable Calculus]]
- [[Gradients]]
- [[Partial Derivatives]]
- [[Multiple Integrals]]
- [[Vector Geometry]] (in Linear Algebra)
### See Also

- ### [[Multivariable Calculus]]

- ### [[Vector Geometry]] (in Linear Algebra)

- ### [[Gradients]]

- ### [[Multiple Integrals]]