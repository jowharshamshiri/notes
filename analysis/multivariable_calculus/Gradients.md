# Gradients

## Definition and Notation

The gradient of a scalar function $f(x, y, z, ...)$ of multiple variables is a vector field that points in the direction of the greatest rate of increase of the function at each point, with a magnitude equal to the rate of increase in that direction.

### Standard Notation

For a function $f(x, y, z, ...)$, the gradient is denoted by $\nabla f$ (read as "del f" or "grad f"):

- For a function of two variables $f(x, y)$:
  $$\nabla f(x, y) = \left(\frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}\right)$$

- For a function of three variables $f(x, y, z)$:
  $$\nabla f(x, y, z) = \left(\frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, \frac{\partial f}{\partial z}\right)$$

- More generally, for a function of $n$ variables:
  $$\nabla f = \left(\frac{\partial f}{\partial x_1}, \frac{\partial f}{\partial x_2}, \ldots, \frac{\partial f}{\partial x_n}\right)$$

### Alternative Notation

The gradient can also be written using basis vectors:

- In 2D: $\nabla f(x, y) = \frac{\partial f}{\partial x}\mathbf{i} + \frac{\partial f}{\partial y}\mathbf{j}$
- In 3D: $\nabla f(x, y, z) = \frac{\partial f}{\partial x}\mathbf{i} + \frac{\partial f}{\partial y}\mathbf{j} + \frac{\partial f}{\partial z}\mathbf{k}$

## Properties of the Gradient

1. **Direction of Steepest Ascent**: The gradient points in the direction of the maximum rate of increase of the function.

2. **Perpendicular to Level Curves/Surfaces**: The gradient at any point is perpendicular (normal) to the level curve/surface passing through that point.

3. **Magnitude**: The magnitude of the gradient, $\|\nabla f\|$, gives the maximum rate of change of $f$ per unit distance.

4. **Direction of Steepest Descent**: The negative gradient, $-\nabla f$, points in the direction of the maximum rate of decrease of the function.

5. **Zero Gradient at Critical Points**: At critical points (local maxima, local minima, saddle points), the gradient is zero: $\nabla f = \mathbf{0}$.

## Gradient in Different Coordinate Systems

### Cartesian Coordinates
- 2D: $\nabla f = \frac{\partial f}{\partial x}\mathbf{i} + \frac{\partial f}{\partial y}\mathbf{j}$
- 3D: $\nabla f = \frac{\partial f}{\partial x}\mathbf{i} + \frac{\partial f}{\partial y}\mathbf{j} + \frac{\partial f}{\partial z}\mathbf{k}$

### Polar Coordinates (2D)
$$\nabla f = \frac{\partial f}{\partial r}\mathbf{e_r} + \frac{1}{r}\frac{\partial f}{\partial \theta}\mathbf{e_\theta}$$

### Cylindrical Coordinates (3D)
$$\nabla f = \frac{\partial f}{\partial r}\mathbf{e_r} + \frac{1}{r}\frac{\partial f}{\partial \theta}\mathbf{e_\theta} + \frac{\partial f}{\partial z}\mathbf{k}$$

### Spherical Coordinates (3D)
$$\nabla f = \frac{\partial f}{\partial \rho}\mathbf{e_\rho} + \frac{1}{\rho}\frac{\partial f}{\partial \theta}\mathbf{e_\theta} + \frac{1}{\rho \sin \theta}\frac{\partial f}{\partial \phi}\mathbf{e_\phi}$$

## Applications of Gradients

### Directional Derivatives

The directional derivative of a function $f$ at a point $P$ in the direction of a unit vector $\mathbf{u}$ is:

$$D_{\mathbf{u}}f(P) = \nabla f(P) \cdot \mathbf{u}$$

where $\cdot$ denotes the dot product. This gives the rate of change of $f$ in the direction of $\mathbf{u}$.

For a non-unit vector $\mathbf{v}$, the directional derivative is:

$$D_{\mathbf{v}}f(P) = \nabla f(P) \cdot \frac{\mathbf{v}}{|\mathbf{v}|} = \frac{\nabla f(P) \cdot \mathbf{v}}{|\mathbf{v}|}$$

### Tangent Planes and Normal Lines

For a surface given by $z = f(x, y)$, at a point $(x_0, y_0, f(x_0, y_0))$:

- The gradient $\nabla f = \left(\frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, -1\right)$ provides the normal vector to the surface.
- The equation of the tangent plane is:
  $$z - f(x_0, y_0) = \frac{\partial f}{\partial x}(x_0, y_0)(x - x_0) + \frac{\partial f}{\partial y}(x_0, y_0)(y - y_0)$$
- The equation of the normal line is:
  $$\frac{x - x_0}{\frac{\partial f}{\partial x}(x_0, y_0)} = \frac{y - y_0}{\frac{\partial f}{\partial y}(x_0, y_0)} = \frac{z - f(x_0, y_0)}{-1}$$

### Optimization and Critical Points

Critical points of a function $f$ occur where $\nabla f = \mathbf{0}$, i.e., all partial derivatives are zero:

$$\frac{\partial f}{\partial x} = \frac{\partial f}{\partial y} = \frac{\partial f}{\partial z} = \ldots = 0$$

At a critical point $(a, b, c, \ldots)$, the function may have:
- A local maximum: if the function decreases in all directions from $(a, b, c, \ldots)$
- A local minimum: if the function increases in all directions from $(a, b, c, \ldots)$
- A saddle point: if the function increases in some directions and decreases in others

### Constrained Optimization (Lagrange Multipliers)

To find the extrema of a function $f(x, y, z, \ldots)$ subject to a constraint $g(x, y, z, \ldots) = 0$, we seek points where:

$$\nabla f = \lambda \nabla g$$

where $\lambda$ is a scalar called the Lagrange multiplier.

### Gradient Descent in Machine Learning

Gradient descent is an optimization algorithm that uses the negative gradient to iteratively move toward the minimum of a function:

$$\mathbf{x}_{n+1} = \mathbf{x}_n - \alpha \nabla f(\mathbf{x}_n)$$

where $\alpha$ is the learning rate that determines the step size.

## Gradient Vector Fields

The gradient of a scalar function creates a vector field. Key properties of gradient vector fields include:

1. **Conservative Field**: A gradient vector field is conservative, meaning the line integral is path-independent.

2. **Potential Function**: If $\mathbf{F} = \nabla f$, then $f$ is called the potential function of $\mathbf{F}$.

3. **Curl-Free**: The curl of a gradient field is always zero: $\nabla \times (\nabla f) = \mathbf{0}$.

4. **Path Independence**: The work done against a gradient field depends only on the endpoints, not the path taken.

## Worked Examples

### Example 1: Basic Calculation

Find the gradient of $f(x, y) = x^2 + 3xy + y^2 - 6x + 6$

Solution:
- $\frac{\partial f}{\partial x} = 2x + 3y - 6$
- $\frac{\partial f}{\partial y} = 3x + 2y$

Therefore, $\nabla f(x, y) = (2x + 3y - 6, 3x + 2y)$

### Example 2: Exponential Function with Multiple Components

Determine the gradient of $f(x,y) = e^x(2x^2-xy+y^2)$

Solution:
First, find the partial derivatives:

$\frac{\partial f}{\partial x} = e^x(2x^2-xy+y^2) + e^x(4x-y)$
$= e^x[(2x^2-xy+y^2) + (4x-y)]$
$= e^x(2x^2-xy+y^2+4x-y)$

$\frac{\partial f}{\partial y} = e^x(-x+2y)$

Therefore, $\nabla f(x,y) = (e^x(2x^2-xy+y^2+4x-y), e^x(-x+2y))$

### Example 3: Finding Critical Points

Determine the critical points of $f(x,y) = x^3y^2+y^2-xy+x$

Solution:
First, find the gradient:

$\frac{\partial f}{\partial x} = 3x^2y^2 - y + 1$
$\frac{\partial f}{\partial y} = 2x^3y + 2y - x$

Set both partial derivatives equal to zero:
$3x^2y^2 - y + 1 = 0$ ... (1)
$2x^3y + 2y - x = 0$ ... (2)

From equation (2): $y(2x^3 + 2) = x$
If $y \neq 0$: $y = \frac{x}{2x^3 + 2}$ ... (3)

Substitute (3) into (1):
$3x^2 \cdot \left(\frac{x}{2x^3 + 2}\right)^2 - \frac{x}{2x^3 + 2} + 1 = 0$

This equation requires numerical methods to solve for most values.

However, we can check if $y = 0$ works:
If $y = 0$, then from (1): $1 = 0$, which is false.

Therefore, there are no simple closed-form critical points for this function.

### Example 4: Using the Gradient for Directional Derivatives

Find the directional derivative of $f(x,y) = \ln(x^2+y^3) + \sqrt{xy}$ at the point $(4,1)$ in the direction toward the point $(5,3)$.

Solution:
First, find the gradient:

$\frac{\partial f}{\partial x} = \frac{2x}{x^2+y^3} + \frac{1}{2} \cdot \frac{y}{\sqrt{xy}}$
$= \frac{2x}{x^2+y^3} + \frac{1}{2} \cdot \frac{\sqrt{y}}{\sqrt{x}}$
$= \frac{2x}{x^2+y^3} + \frac{\sqrt{y}}{2\sqrt{x}}$

$\frac{\partial f}{\partial y} = \frac{3y^2}{x^2+y^3} + \frac{1}{2} \cdot \frac{x}{\sqrt{xy}}$
$= \frac{3y^2}{x^2+y^3} + \frac{1}{2} \cdot \frac{\sqrt{x}}{\sqrt{y}}$
$= \frac{3y^2}{x^2+y^3} + \frac{\sqrt{x}}{2\sqrt{y}}$

At the point $(4,1)$:
$\frac{\partial f}{\partial x}(4,1) = \frac{2 \cdot 4}{16+1} + \frac{\sqrt{1}}{2\sqrt{4}} = \frac{8}{17} + \frac{1}{4} = \frac{8}{17} + \frac{4}{16} = \frac{8}{17} + \frac{1}{4}$

$\frac{\partial f}{\partial y}(4,1) = \frac{3 \cdot 1^2}{16+1} + \frac{\sqrt{4}}{2\sqrt{1}} = \frac{3}{17} + \frac{2}{2} = \frac{3}{17} + 1$

So, $\nabla f(4,1) = \left(\frac{8}{17} + \frac{1}{4}, \frac{3}{17} + 1\right)$

The direction vector from $(4,1)$ to $(5,3)$ is $\mathbf{v} = (5-4, 3-1) = (1, 2)$.
The unit direction vector is $\mathbf{u} = \frac{\mathbf{v}}{|\mathbf{v}|} = \frac{(1,2)}{\sqrt{1^2 + 2^2}} = \frac{(1,2)}{\sqrt{5}}$.

The directional derivative is:
$D_{\mathbf{u}}f(4,1) = \nabla f(4,1) \cdot \mathbf{u} = \left(\frac{8}{17} + \frac{1}{4}\right) \cdot \frac{1}{\sqrt{5}} + \left(\frac{3}{17} + 1\right) \cdot \frac{2}{\sqrt{5}}$

### Example 5: Gradient in Constraint Optimization

Using the Lagrange multiplier method, find the maximum and minimum values of $f(x,y) = (3x+2y)^2$ on the ellipse $4x^2+y^2 = 4$.

Solution:
Set up the Lagrangian:
$L(x,y,\lambda) = (3x+2y)^2 - \lambda(4x^2+y^2 - 4)$

Take partial derivatives and set them equal to zero:
$\frac{\partial L}{\partial x} = 2(3x+2y)(3) - \lambda(8x) = 0$
$\frac{\partial L}{\partial y} = 2(3x+2y)(2) - \lambda(2y) = 0$
$\frac{\partial L}{\partial \lambda} = 4x^2+y^2 - 4 = 0$

From the first equation: $6(3x+2y) - 8\lambda x = 0$
From the second equation: $4(3x+2y) - 2\lambda y = 0$

Solving this system with the constraint yields critical points where the function attains its maximum and minimum values on the ellipse.

## Strategy for Solving Gradient Problems

1. **Calculate the Gradient**: Find the partial derivatives with respect to each variable.

2. **For Critical Points**:
   - Set each component of the gradient equal to zero
   - Solve the resulting system of equations
   - Classify the critical points using the second derivative test or other methods

3. **For Directional Derivatives**:
   - Compute the gradient at the specified point
   - Calculate the unit vector in the desired direction
   - Take the dot product of the gradient and the unit vector

4. **For Optimization Problems**:
   - Unconstrained: Find and classify critical points
   - Constrained: Use the Lagrange multiplier method
   - Check boundary points if the domain is bounded

5. **For Tangent Planes/Normal Lines**:
   - Compute the gradient at the specified point
   - Use the gradient to determine the normal vector
   - Formulate the equation of the tangent plane or normal line

See Also:
- [[Partial Derivatives]]
- [[Directional Derivatives]]
- [[Critical Points(Classification)]]
- [[Local Extrema]]
- [[Optimization]]
- [[Multivariable Calculus]]

### Exercises

1. Determine the gradient of $f(x,y) = e^x(2x^2-xy+y^2)$.

2. Determine the domain and compute the gradient of the following functions:
   a) $f(x,y) = \cos(x^2y)$
   b) $f(x,y) = e^{x^2y}$
   c) $f(x,y) = \ln(x^2+y^3) + \sqrt{xy}$
   d) $f(x,y) = \ln(1-x-y)$
   e) $f(x,y) = y^2+3xy+x+y-2$
   f) $f(x,y) = x\sin(xy)$
   g) $f(x,y) = \frac{2y}{y+\cos x}$
   h) $f(x,y) = e^{xy}+\ln(x+y)$

3. Consider the function $f(x, y) = x^3y^2+y^2-xy+x$:
   a) Determine the gradient.
   b) Find all the critical points.

4. Consider the function $f(x, y) = x^2-y^2+2xy+y$:
   a) Determine the gradient.
   b) Classify all the critical points.
   c) Determine the maximum and the minimum of the function $f$ in the triangle $T = \{(x, y) : 0 \leq x \leq -y+1\}$.

5. Consider the function $f(x, y) = x^2+y^2-xy+x$:
   a) Determine the gradient.
   b) Classify all the critical points.
   c) Determine the maximum and the minimum of the function $f$ on the constraint $D = \{(x, y) : y \leq 1-2x, x \geq 0\}$.

6. Consider the function $f(x, y) = \sin(xy)e^y$:
   a) Compute the gradient.
   b) Establish if $A = (1, 0)$ is a critical point.
   c) Establish if $A = (1, 0)$ is a minimum point.

7. Consider the function $f(x, y) = \cos(xy)e^x$:
   a) (3 marks) Compute the gradient.
   b) (2 marks) Establish if $A = (0, 0)$ is a critical point.
   c) (5 marks) Establish if $A = (0, 0)$ is a minimum point.