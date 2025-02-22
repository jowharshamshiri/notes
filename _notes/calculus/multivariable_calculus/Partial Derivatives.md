---
---

![[Screenshot 2025-02-20 at 16.14.00.png]]
# Partial Derivatives

## Definition and Notation

For a function $f(x, y, z, ...)$ of multiple variables, the partial derivative with respect to a single variable measures the rate of change of the function with respect to that variable while holding all other variables constant.

### Notation for Partial Derivatives

For a function $f(x, y)$:

- $\frac{\partial f}{\partial x}$ or $f_x$ denotes the partial derivative with respect to $x$
- $\frac{\partial f}{\partial y}$ or $f_y$ denotes the partial derivative with respect to $y$

### Higher-Order Partial Derivatives

- Second-order partial derivatives:
  - $\frac{\partial^2 f}{\partial x^2}$ or $f_{xx}$ (second derivative with respect to $x$)
  - $\frac{\partial^2 f}{\partial y^2}$ or $f_{yy}$ (second derivative with respect to $y$)
  - $\frac{\partial^2 f}{\partial x \partial y}$ or $f_{xy}$ (derivative first with respect to $y$, then with respect to $x$)
  - $\frac{\partial^2 f}{\partial y \partial x}$ or $f_{yx}$ (derivative first with respect to $x$, then with respect to $y$)

- For "nice" functions (continuous second derivatives), mixed partial derivatives are equal: $f_{xy} = f_{yx}$

## Computing Partial Derivatives

To compute the partial derivative of $f$ with respect to $x$:
1. Treat all variables other than $x$ as constants
2. Differentiate $f$ with respect to $x$ using the standard rules of differentiation

To compute the partial derivative of $f$ with respect to $y$:
1. Treat all variables other than $y$ as constants
2. Differentiate $f$ with respect to $y$ using the standard rules of differentiation

## Basic Rules of Partial Differentiation

Let $u(x,y)$ and $v(x,y)$ be functions with continuous partial derivatives, and let $c$ be a constant.

1. **Constant Rule**: $\frac{\partial c}{\partial x} = 0$

2. **Sum Rule**: $\frac{\partial}{\partial x}[u(x,y) + v(x,y)] = \frac{\partial u}{\partial x} + \frac{\partial v}{\partial x}$

3. **Difference Rule**: $\frac{\partial}{\partial x}[u(x,y) - v(x,y)] = \frac{\partial u}{\partial x} - \frac{\partial v}{\partial x}$

4. **Product Rule**: $\frac{\partial}{\partial x}[u(x,y) \cdot v(x,y)] = \frac{\partial u}{\partial x} \cdot v(x,y) + u(x,y) \cdot \frac{\partial v}{\partial x}$

5. **Quotient Rule**: $\frac{\partial}{\partial x}\left[\frac{u(x,y)}{v(x,y)}\right] = \frac{\frac{\partial u}{\partial x} \cdot v(x,y) - u(x,y) \cdot \frac{\partial v}{\partial x}}{[v(x,y)]^2}$

6. **Chain Rule for Partial Differentiation**: 
   If $z = f(u,v)$ where $u = g(x,y)$ and $v = h(x,y)$, then:
   $\frac{\partial z}{\partial x} = \frac{\partial f}{\partial u} \cdot \frac{\partial u}{\partial x} + \frac{\partial f}{\partial v} \cdot \frac{\partial v}{\partial x}$

## Partial Derivatives of Common Functions

### Polynomials and Algebraic Expressions

For $f(x,y) = x^ny^m$:
- $\frac{\partial f}{\partial x} = nx^{n-1}y^m$
- $\frac{\partial f}{\partial y} = mx^ny^{m-1}$

### Exponential Functions

For $f(x,y) = e^{ax+by}$:
- $\frac{\partial f}{\partial x} = ae^{ax+by}$
- $\frac{\partial f}{\partial y} = be^{ax+by}$

### Logarithmic Functions

For $f(x,y) = \ln(x^2+y^2)$:
- $\frac{\partial f}{\partial x} = \frac{2x}{x^2+y^2}$
- $\frac{\partial f}{\partial y} = \frac{2y}{x^2+y^2}$

### Trigonometric Functions

For $f(x,y) = \sin(x+y)$:
- $\frac{\partial f}{\partial x} = \cos(x+y)$
- $\frac{\partial f}{\partial y} = \cos(x+y)$

For $f(x,y) = \cos(xy)$:
- $\frac{\partial f}{\partial x} = -\sin(xy) \cdot y$
- $\frac{\partial f}{\partial y} = -\sin(xy) \cdot x$

## Applications of Partial Derivatives

### Tangent Planes

The equation of the tangent plane to the surface $z = f(x,y)$ at the point $(x_0, y_0, f(x_0,y_0))$ is:

$$z - f(x_0,y_0) = \frac{\partial f}{\partial x}(x_0,y_0)(x - x_0) + \frac{\partial f}{\partial y}(x_0,y_0)(y - y_0)$$

### Directional Derivatives

The directional derivative of $f(x,y)$ at the point $(x_0,y_0)$ in the direction of the unit vector $\mathbf{u} = (a,b)$ is:

$$D_{\mathbf{u}}f(x_0,y_0) = \frac{\partial f}{\partial x}(x_0,y_0) \cdot a + \frac{\partial f}{\partial y}(x_0,y_0) \cdot b$$

### Gradient

The gradient of $f(x,y)$ is the vector:

$$\nabla f(x,y) = \left(\frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}\right)$$

The gradient points in the direction of the maximum rate of increase of the function.

### Critical Points

Critical points of $f(x,y)$ occur where $\nabla f(x,y) = \mathbf{0}$, i.e., where:

$$\frac{\partial f}{\partial x} = 0 \quad \text{and} \quad \frac{\partial f}{\partial y} = 0$$

## Worked Examples

### Example 1: Basic Computation

Find the partial derivatives of $f(x,y) = x^2y^3 + e^{xy}$.

Solution:
- $\frac{\partial f}{\partial x} = 2xy^3 + ye^{xy}$
- $\frac{\partial f}{\partial y} = 3x^2y^2 + xe^{xy}$

### Example 2: Ln Function

Find the partial derivatives of $f(x,y) = \ln(x^4y^3) + e^{2xy}$.

Solution:
Using properties of logarithms: $\ln(x^4y^3) = \ln(x^4) + \ln(y^3) = 4\ln(x) + 3\ln(y)$

- $\frac{\partial f}{\partial x} = \frac{4}{x} + 2ye^{2xy}$
- $\frac{\partial f}{\partial y} = \frac{3}{y} + 2xe^{2xy}$

### Example 3: Gradient Calculation

Determine the gradient of $f(x,y) = e^x(2x^2-xy+y^2)$ at the point (0,0).

Solution:
First, we find the partial derivatives:

$\frac{\partial f}{\partial x} = e^x(2x^2-xy+y^2) + e^x(4x-y)$
$= e^x[(2x^2-xy+y^2) + (4x-y)]$
$= e^x(2x^2-xy+y^2+4x-y)$

$\frac{\partial f}{\partial y} = e^x(-x+2y)$

At the point (0,0):
$\frac{\partial f}{\partial x}(0,0) = e^0(0+0+0+0-0) = 1 \cdot 0 = 0$
$\frac{\partial f}{\partial y}(0,0) = e^0(-0+0) = 1 \cdot 0 = 0$

Therefore, $\nabla f(0,0) = (0,0)$, which means (0,0) is a critical point.

### Example 4: Composite Functions

Find the partial derivatives of $f(x,y) = \cos(x^2y)$.

Solution:
- $\frac{\partial f}{\partial x} = -\sin(x^2y) \cdot 2xy$
- $\frac{\partial f}{\partial y} = -\sin(x^2y) \cdot x^2$

### Example 5: Mixed Second Derivatives

Find the mixed second partial derivatives of $f(x,y) = x^3y + y^2$.

Solution:
First, find the first partial derivatives:
- $\frac{\partial f}{\partial x} = 3x^2y$
- $\frac{\partial f}{\partial y} = x^3 + 2y$

Now find the mixed second derivatives:
- $\frac{\partial^2 f}{\partial y \partial x} = 3x^2$
- $\frac{\partial^2 f}{\partial x \partial y} = 3x^2$

As expected, $f_{xy} = f_{yx}$.

## Strategy for Exercises

1. **Domain analysis**: Begin by determining the domain of the function to identify any restrictions.

2. **Methodical differentiation**: 
   - Treat all variables except the one you're differentiating with respect to as constants
   - Apply standard rules of differentiation
   - Simplify your results

3. **For complex expressions**:
   - Break down the function using sum, product, or chain rules
   - Differentiate component by component
   - Combine results carefully

4. **For logarithmic expressions** like $\ln(x^4y^3)$:
   - Use logarithm properties to simplify: $\ln(x^4y^3) = 4\ln(x) + 3\ln(y)$
   - Then differentiate term by term

5. **For exponential expressions** like $e^{2xy}$:
   - Treat the exponent as a composite function
   - Apply the chain rule
   - Remember that $\frac{d}{dx}e^u = e^u \cdot \frac{du}{dx}$

6. **For trigonometric functions** like $\cos(x^2y)$:
   - Apply the chain rule
   - Differentiate the inner function appropriately

7. **Verification**:
   - Check dimensions and units
   - Test with simple values when possible
   - For mixed derivatives, verify that $f_{xy} = f_{yx}$ as a sanity check

See:
- [[Gradients]]
- [[Directional Derivatives]]
- [[Critical Points (Multivariable)]]
- [[Local Extrema]]
- [[Multivariable Calculus]]

### Exercises

1. Compute the partial derivatives of the function $f(x,y) = \ln(x^4y^3) + e^{2xy}$.

2. Determine the gradient of $f(x,y) = e^x(2x^2-xy+y^2)$.

3. Determine the domain and compute the partial derivatives of the following functions

	- a) $f(x, y) = x^2+y^2$
	- b) $f(x, y) = x^3y+y^2$
	- c) $f(x, y) = \cos(x^2y)$
	- d) $f(x, y) = e^{x^2y}$
	- e) $f(x, y) = \ln(x^2+y^3) + \sqrt{xy}$
	- f) $f(x, y) = \ln(1-x-y)$
	- g) $f(x, y) = y^2+3xy+x+y-2$
	- h) $f(x, y) = x\sin(xy)$
	- i) $f(x, y) = \frac{2y}{y+\cos x}$
	- j) $f(x, y) = e^{xy}+\ln(x+y)$