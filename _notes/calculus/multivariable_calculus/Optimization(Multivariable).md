---
---

## Unconstrained Optimization

### Fundamental Concepts

#### Critical Points
A critical point of a function $f(x,y)$ is a point $(a,b)$ where either:
- Both partial derivatives are zero: $\nabla f(a,b) = \mathbf{0}$, i.e., $f_x(a,b) = 0$ and $f_y(a,b) = 0$, or
- At least one partial derivative does not exist

#### Types of Critical Points
A critical point $(a,b)$ of $f(x,y)$ can be:
- A local maximum: $f(a,b) \geq f(x,y)$ for all $(x,y)$ near $(a,b)$
- A local minimum: $f(a,b) \leq f(x,y)$ for all $(x,y)$ near $(a,b)$
- A saddle point: Neither a maximum nor a minimum
- A degenerate critical point: Requires higher-order tests to classify

### Second Derivative Test

For a function $f(x,y)$ with continuous second partial derivatives, and a critical point $(a,b)$ where $f_x(a,b) = f_y(a,b) = 0$:

1. Compute the discriminant $D$:
   $$D = f_{xx}(a,b) \cdot f_{yy}(a,b) - [f_{xy}(a,b)]^2$$

2. Classify the critical point:
   - If $D > 0$ and $f_{xx}(a,b) < 0$, then $(a,b)$ is a local maximum
   - If $D > 0$ and $f_{xx}(a,b) > 0$, then $(a,b)$ is a local minimum
   - If $D < 0$, then $(a,b)$ is a saddle point
   - If $D = 0$, the test is inconclusive (higher-order tests needed)

### Higher-Order Tests

When the second derivative test is inconclusive ($D = 0$), higher-order tests can be used:

1. Examine the behavior of $f(a+h, b+k) - f(a,b)$ using Taylor series expansion.
2. Look for a change in sign around the critical point.

### Global Extrema on Closed, Bounded Regions

To find global extrema of $f(x,y)$ on a closed, bounded region $R$:

1. Find all critical points of $f$ in the interior of $R$
2. Evaluate $f$ at all critical points
3. Evaluate $f$ at all boundary points of $R$
4. The largest of these values is the global maximum
5. The smallest of these values is the global minimum

## Constrained Optimization

### Method of Lagrange Multipliers

To find the extrema of $f(x,y,z)$ subject to the constraint $g(x,y,z) = c$:

1. Form the Lagrangian function: $L(x,y,z,\lambda) = f(x,y,z) - \lambda(g(x,y,z) - c)$
2. Find critical points by solving the system of equations:
   - $\nabla f(x,y,z) = \lambda \nabla g(x,y,z)$, or equivalently:
   - $L_x = 0$, $L_y = 0$, $L_z = 0$, $L_{\lambda} = 0$
3. Evaluate $f$ at all critical points to determine extrema

#### Geometric Interpretation

Lagrange multipliers work because at an extremum:
- The gradient $\nabla f$ is parallel to the gradient $\nabla g$
- This means $\nabla f = \lambda \nabla g$ for some scalar $\lambda$
- The constraint $g(x,y,z) = c$ ensures we stay on the constraint surface

### Multiple Constraints

To find extrema of $f(x,y,z)$ subject to two constraints $g(x,y,z) = c$ and $h(x,y,z) = d$:

1. Form the Lagrangian: $L(x,y,z,\lambda,\mu) = f(x,y,z) - \lambda(g(x,y,z) - c) - \mu(h(x,y,z) - d)$
2. Solve the system:
   - $\nabla f = \lambda \nabla g + \mu \nabla h$
   - $g(x,y,z) = c$
   - $h(x,y,z) = d$

### Method of Lagrange Multipliers for Inequalities

For inequality constraints of the form $g(x,y,z) \leq c$:

1. Consider the Karush-Kuhn-Tucker (KKT) conditions:
   - $\nabla f = \lambda \nabla g$
   - $\lambda(g(x,y,z) - c) = 0$ (complementary slackness)
   - $\lambda \geq 0$
   - $g(x,y,z) \leq c$

2. Solve this by considering two cases:
   - Case 1: $\lambda = 0$ (constraint not active)
   - Case 2: $g(x,y,z) = c$ (constraint active)

## Special Types of Optimization Problems

### Least Squares Approximation

For finding the best-fit line/curve to a set of data points $(x_i, y_i)$:

1. Minimize the sum of squared residuals:
   $$E = \sum_{i=1}^{n} [y_i - f(x_i)]^2$$

2. For a linear model $f(x) = mx + b$:
   - $\frac{\partial E}{\partial m} = -2\sum_{i=1}^{n} x_i[y_i - (mx_i + b)] = 0$
   - $\frac{\partial E}{\partial b} = -2\sum_{i=1}^{n} [y_i - (mx_i + b)] = 0$

3. Solutions are:
   - $m = \frac{n\sum x_iy_i - \sum x_i\sum y_i}{n\sum x_i^2 - (\sum x_i)^2}$
   - $b = \frac{\sum y_i - m\sum x_i}{n}$

### Quadratic Programming

For problems of the form:
$$\text{Minimize } f(x) = \frac{1}{2}x^T Q x + c^T x$$
subject to constraints $Ax \leq b$ and $Ex = d$

1. If $Q$ is positive definite, the problem has a unique solution
2. Various algorithms exist (active set, interior point methods)

### Convex Optimization

For problems where both the objective function and feasible region are convex:

1. Any local minimum is also a global minimum
2. If the objective function is strictly convex, there is at most one global minimum
3. The set of all optimal solutions is convex

## Worked Examples

### Example 1: Finding and Classifying Critical Points

Find and classify all critical points of $f(x,y) = x^2-y^2+2xy+3x$.

Solution:
1. Find the critical points by setting both partial derivatives to zero:
   - $f_x(x,y) = 2x + 2y + 3 = 0$
   - $f_y(x,y) = -2y + 2x = 0$

2. From the second equation: $y = x$
   Substituting into the first equation:
   - $2x + 2x + 3 = 0$
   - $4x + 3 = 0$
   - $x = -3/4$

   Therefore, $y = -3/4$ as well

3. The critical point is $(-3/4, -3/4)$

4. Apply the second derivative test:
   - $f_{xx}(x,y) = 2$
   - $f_{yy}(x,y) = -2$
   - $f_{xy}(x,y) = 2$

   Evaluate at the critical point:
   - $f_{xx}(-3/4, -3/4) = 2$
   - $f_{yy}(-3/4, -3/4) = -2$
   - $f_{xy}(-3/4, -3/4) = 2$

5. Compute the discriminant:
   - $D = f_{xx} \cdot f_{yy} - (f_{xy})^2 = 2 \cdot (-2) - 2^2 = -4 - 4 = -8$

   Since $D < 0$, the critical point $(-3/4, -3/4)$ is a saddle point.

### Example 2: Optimization with Lagrange Multipliers

Find the maximum and minimum values of $f(x,y) = x^2+3y$ subject to the constraint $\frac{x^2}{4} + \frac{y^2}{9} = 1$.

Solution:
1. Form the Lagrangian:
   - $L(x,y,\lambda) = x^2+3y - \lambda(\frac{x^2}{4} + \frac{y^2}{9} - 1)$

2. Find the critical points by setting the partial derivatives equal to zero:
   - $L_x = 2x - \lambda \cdot \frac{x}{2} = 0$
   - $L_y = 3 - \lambda \cdot \frac{2y}{9} = 0$
   - $L_{\lambda} = \frac{x^2}{4} + \frac{y^2}{9} - 1 = 0$

3. From the first equation:
   - If $x = 0$, then the equation is satisfied.
   - Otherwise, $2 - \frac{\lambda}{2} = 0$, so $\lambda = 4$.

4. From the second equation:
   - $3 - \lambda \cdot \frac{2y}{9} = 0$
   - Solving for $y$: $y = \frac{27}{2\lambda}$

5. Case 1: If $x = 0$
   - From the second equation: $3 - \lambda \cdot \frac{2y}{9} = 0$
   - Solving for $\lambda \cdot y$: $\lambda \cdot y = \frac{27}{2}$
   - From the constraint: $\frac{y^2}{9} = 1$, so $y = \pm 3$
   - If $y = 3$, then $\lambda = \frac{9}{2}$
   - If $y = -3$, then $\lambda = -\frac{9}{2}$
   - The critical points are $(0,3)$ and $(0,-3)$

6. Case 2: If $\lambda = 4$
   - From the second equation: $y = \frac{27}{2 \cdot 4} = \frac{27}{8}$
   - From the constraint: $\frac{x^2}{4} + \frac{(\frac{27}{8})^2}{9} = 1$
   - Simplifying: $\frac{x^2}{4} + \frac{729}{576} = 1$
   - Solving for $x^2$: $x^2 = 4(1 - \frac{729}{576}) = 4 \cdot \frac{576-729}{576} = 4 \cdot \frac{-153}{576} = -\frac{612}{576}$
   - Since $x^2$ cannot be negative, this case yields no valid critical points.

7. Evaluate $f(x,y)$ at the critical points:
   - $f(0,3) = 0^2 + 3 \cdot 3 = 9$
   - $f(0,-3) = 0^2 + 3 \cdot (-3) = -9$

   Therefore, the maximum value is 9 at $(0,3)$, and the minimum value is -9 at $(0,-3)$.

### Example 3: Global Optimization on a Bounded Region

Find the maximum and minimum values of $f(x,y) = x^2+y^2-xy+x$ on the triangle with vertices at $(0,0)$, $(1,0)$, and $(0,1)$.

Solution:
1. Find critical points in the interior by setting the partial derivatives to zero:
   - $f_x = 2x - y + 1 = 0$
   - $f_y = 2y - x = 0$

   From the second equation: $x = 2y$
   Substituting into the first equation:
   - $2(2y) - y + 1 = 0$
   - $4y - y + 1 = 0$
   - $3y = -1$
   - $y = -\frac{1}{3}$

   Therefore, $x = 2y = -\frac{2}{3}$
   The critical point $(-\frac{2}{3}, -\frac{1}{3})$ lies outside the triangle, so it's not relevant.

2. Check the boundary of the triangle:
   - Edge from $(0,0)$ to $(1,0)$: $y = 0$, $0 \leq x \leq 1$
     * $f(x,0) = x^2 + x$
     * $\frac{d}{dx}f(x,0) = 2x + 1 = 0$ when $x = -\frac{1}{2}$, which is outside $[0,1]$
     * Evaluate at endpoints: $f(0,0) = 0$, $f(1,0) = 2$
   
   - Edge from $(0,0)$ to $(0,1)$: $x = 0$, $0 \leq y \leq 1$
     * $f(0,y) = y^2$
     * $\frac{d}{dy}f(0,y) = 2y = 0$ when $y = 0$
     * Evaluate at endpoints: $f(0,0) = 0$, $f(0,1) = 1$
   
   - Edge from $(1,0)$ to $(0,1)$: $x + y = 1$, $0 \leq x \leq 1$
     * $f(x,1-x) = x^2+(1-x)^2-x(1-x)+x = x^2+1-2x+x^2-x+x^2+x = 3x^2-2x+1$
     * $\frac{d}{dx}f(x,1-x) = 6x-2 = 0$ when $x = \frac{1}{3}$
     * Therefore, $y = 1-x = 1-\frac{1}{3} = \frac{2}{3}$
     * Evaluate at critical point: $f(\frac{1}{3},\frac{2}{3}) = 3(\frac{1}{3})^2-2(\frac{1}{3})+1 = \frac{3}{9}-\frac{2}{3}+1 = \frac{1}{3}-\frac{2}{3}+1 = \frac{2}{3}$
     * Evaluate at endpoints: $f(1,0) = 2$, $f(0,1) = 1$

3. Comparing all values:
   - Critical points: none in the interior
   - Boundary values: $f(0,0) = 0$, $f(1,0) = 2$, $f(0,1) = 1$, $f(\frac{1}{3},\frac{2}{3}) = \frac{2}{3}$

   Therefore, the maximum value is 2 at $(1,0)$, and the minimum value is 0 at $(0,0)$.

### Example 4: Lagrange Multipliers with Two Constraints

Find the extrema of $f(x,y,z) = x^2 + y^2 + z^2$ subject to the constraints $x + y + z = 1$ and $x^2 + y^2 = z$.

Solution:
1. Form the Lagrangian:
   - $L(x,y,z,\lambda,\mu) = x^2 + y^2 + z^2 - \lambda(x + y + z - 1) - \mu(x^2 + y^2 - z)$

2. Find the critical points:
   - $L_x = 2x - \lambda - 2\mu x = 0$
   - $L_y = 2y - \lambda - 2\mu y = 0$
   - $L_z = 2z - \lambda + \mu = 0$
   - $L_{\lambda} = x + y + z - 1 = 0$
   - $L_{\mu} = x^2 + y^2 - z = 0$

3. From the first two equations:
   - $2x(1-\mu) = \lambda$
   - $2y(1-\mu) = \lambda$
   - This implies $x(1-\mu) = y(1-\mu)$, so either $x = y$ or $\mu = 1$

4. Case 1: If $\mu = 1$
   - From the third equation: $2z - \lambda + 1 = 0$, so $\lambda = 2z + 1$
   - The first and second equations become $0 = \lambda$, implying $\lambda = 0$
   - Therefore, $2z + 1 = 0$, so $z = -\frac{1}{2}$
   - From the constraints:
     * $x + y - \frac{1}{2} = 1$, so $x + y = \frac{3}{2}$
     * $x^2 + y^2 = -\frac{1}{2}$, which is impossible
   - No valid critical points in this case

5. Case 2: If $x = y$
   - From the constraints:
     * $2x + z = 1$, so $z = 1 - 2x$
     * $2x^2 = z = 1 - 2x$
   - Solving: $2x^2 + 2x - 1 = 0$
   - Using the quadratic formula: $x = \frac{-2 \pm \sqrt{4+8}}{4} = \frac{-2 \pm 2\sqrt{3}}{4} = \frac{-1 \pm \sqrt{3}}{2}$
   - Since $x = y$, we get two critical points:
     * $(x,y,z) = (\frac{-1 + \sqrt{3}}{2}, \frac{-1 + \sqrt{3}}{2}, 1 - 2 \cdot \frac{-1 + \sqrt{3}}{2}) = (\frac{-1 + \sqrt{3}}{2}, \frac{-1 + \sqrt{3}}{2}, 2 - \sqrt{3})$
     * $(x,y,z) = (\frac{-1 - \sqrt{3}}{2}, \frac{-1 - \sqrt{3}}{2}, 1 - 2 \cdot \frac{-1 - \sqrt{3}}{2}) = (\frac{-1 - \sqrt{3}}{2}, \frac{-1 - \sqrt{3}}{2}, 2 + \sqrt{3})$

6. Evaluate $f(x,y,z)$ at these critical points:
   - For the first critical point:
     * $f(\frac{-1 + \sqrt{3}}{2}, \frac{-1 + \sqrt{3}}{2}, 2 - \sqrt{3}) = 2 \cdot (\frac{-1 + \sqrt{3}}{2})^2 + (2 - \sqrt{3})^2$
     * $= 2 \cdot \frac{(1 - 2\sqrt{3} + 3)}{4} + 4 - 4\sqrt{3} + 3$
     * $= \frac{2(4 - 2\sqrt{3})}{4} + 7 - 4\sqrt{3}$
     * $= 1 - \sqrt{3} + 7 - 4\sqrt{3}$
     * $= 8 - 5\sqrt{3}$

   - For the second critical point:
     * Similar calculation yields $f(\frac{-1 - \sqrt{3}}{2}, \frac{-1 - \sqrt{3}}{2}, 2 + \sqrt{3}) = 8 + 5\sqrt{3}$

   Therefore, the minimum value is $8 - 5\sqrt{3}$ (approximately -0.67) at the first critical point, and the maximum value is $8 + 5\sqrt{3}$ (approximately 16.67) at the second critical point.

## Strategies for Solving Optimization Problems

### General Approach
1. **Identify the objective function** and any constraints
2. **For unconstrained problems**:
   - Find all critical points by setting $\nabla f = \mathbf{0}$
   - Use the second derivative test to classify each critical point
   - Compare function values to determine global extrema

3. **For constrained problems**:
   - Use the method of Lagrange multipliers
   - Carefully analyze the resulting system of equations
   - Consider all possible cases (especially when dealing with equations like $x(1-\mu) = 0$)

4. **For bounded regions**:
   - Check both interior critical points and boundary points
   - For boundaries, restrict the function to the boundary and optimize
   - Compare all values to find global extrema

### Special Considerations
1. **Equality constraints**: Use Lagrange multipliers directly
2. **Inequality constraints**: Consider both when the constraint is active (equality holds) and inactive
3. **Linear constraints**: Often lead to simpler systems of equations
4. **Parametric curves/surfaces**: Substitute the parametric equations into the objective function

### Verification
1. **Confirm critical points satisfy constraints**
2. **Check the second derivative test when applicable**
3. **Verify extreme values by comparing function values at all critical points**
4. **Use geometric intuition as a sanity check**

## See
- [[Gradients]]
- [[Critical Points (Multivariable)]]
- [[Local Extrema]]
- [[Multivariable Calculus]]
- [[Least Squares Approximation]]
- [[Applications(Optimization Problems)]]
- [[Applied Optimization]]

## Exercises

1. Use Lagrange multipliers to optimize $f(x,y) = x^2+3y$ subject to $\frac{x^2}{4} + \frac{y^2}{9} = 1$.

2. Find the global extrema of the following functions in the corresponding constraints.
	- a) $f(x,y) = (x-2y)^2$, $G := {\frac{x^2}{4}+\frac{y^2}{3} = 1}$
	- b) $f(x,y) = (3x+2y)^2$, $G := {4x^2+y^2 = 4}$
