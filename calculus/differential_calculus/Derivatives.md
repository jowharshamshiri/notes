
### Constant Quotient
![[Pasted image 20250220194021.png]]
# Derivatives (Rules of Derivation)

## Definition and Notation

The derivative of a function $f(x)$ at a point $x = a$ is defined as:

$$f'(a) = \lim_{h \to 0} \frac{f(a+h) - f(a)}{h}$$

Alternative notations for the derivative of $y = f(x)$ include:
- $f'(x)$
- $\frac{dy}{dx}$
- $\frac{d}{dx}[f(x)]$
- $y'$
- $D_x[f(x)]$

## Basic Differentiation Rules

### Constant Rule
If $f(x) = c$ (a constant), then:
$$f'(x) = 0$$

### Power Rule
If $f(x) = x^n$, then:
$$f'(x) = nx^{n-1}$$

This applies for any real number $n$.

### Constant Multiple Rule
If $f(x) = c \cdot g(x)$, then:
$$f'(x) = c \cdot g'(x)$$

### Sum and Difference Rule
If $f(x) = g(x) \pm h(x)$, then:
$$f'(x) = g'(x) \pm h'(x)$$

## Product and Quotient Rules

### Product Rule
If $f(x) = g(x) \cdot h(x)$, then:
$$f'(x) = g'(x) \cdot h(x) + g(x) \cdot h'(x)$$

**Mnemonic**: "The derivative of the first times the second, plus the first times the derivative of the second."

### Quotient Rule
If $f(x) = \frac{g(x)}{h(x)}$, then:
$$f'(x) = \frac{g'(x) \cdot h(x) - g(x) \cdot h'(x)}{[h(x)]^2}$$

**Mnemonic**: "The derivative of the numerator times the denominator, minus the numerator times the derivative of the denominator, all over the denominator squared."

## Chain Rule

If $f(x) = g(h(x))$, then:
$$f'(x) = g'(h(x)) \cdot h'(x)$$

In Leibniz notation: 
$$\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}$$

### Alternative Form
If $y = f(u)$ and $u = g(x)$, then:
$$\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}$$

## Derivatives of Common Functions

### Exponential Functions
- $(e^x)' = e^x$
- $(a^x)' = a^x \ln(a)$

### Logarithmic Functions
- $(\ln x)' = \frac{1}{x}$
- $(\log_a x)' = \frac{1}{x \ln(a)}$

### Trigonometric Functions
- $(\sin x)' = \cos x$
- $(\cos x)' = -\sin x$
- $(\tan x)' = \sec^2 x$
- $(\cot x)' = -\csc^2 x$
- $(\sec x)' = \sec x \tan x$
- $(\csc x)' = -\csc x \cot x$

### Inverse Trigonometric Functions
- $(\arcsin x)' = \frac{1}{\sqrt{1-x^2}}$
- $(\arccos x)' = -\frac{1}{\sqrt{1-x^2}}$
- $(\arctan x)' = \frac{1}{1+x^2}$
- $(\text{arccot } x)' = -\frac{1}{1+x^2}$
- $(\text{arcsec } x)' = \frac{1}{|x|\sqrt{x^2-1}}$
- $(\text{arccsc } x)' = -\frac{1}{|x|\sqrt{x^2-1}}$

### Hyperbolic Functions
- $(\sinh x)' = \cosh x$
- $(\cosh x)' = \sinh x$
- $(\tanh x)' = \text{sech}^2 x$
- $(\coth x)' = -\text{csch}^2 x$
- $(\text{sech } x)' = -\text{sech } x \tanh x$
- $(\text{csch } x)' = -\text{csch } x \coth x$

## Implicit Differentiation

For an equation relating $x$ and $y$ where $y$ is not explicitly defined as a function of $x$:

1. Differentiate both sides of the equation with respect to $x$
2. Remember that when differentiating $y$ terms, apply the chain rule: $\frac{d}{dx}[y^n] = n \cdot y^{n-1} \cdot \frac{dy}{dx}$
3. Solve for $\frac{dy}{dx}$

### Example
For the equation $x^2 + y^2 = 25$:

1. Differentiate both sides: $2x + 2y \cdot \frac{dy}{dx} = 0$
2. Solve for $\frac{dy}{dx}$: $\frac{dy}{dx} = -\frac{x}{y}$

## Higher-Order Derivatives

### Second Derivative
The second derivative is the derivative of the first derivative:
$$f''(x) = \frac{d^2y}{dx^2} = \frac{d}{dx}\left(\frac{dy}{dx}\right)$$

### Higher Derivatives
Similarly, we can define third, fourth, and higher derivatives:
$$f'''(x) = \frac{d^3y}{dx^3}, \quad f^{(4)}(x) = \frac{d^4y}{dx^4}, \ldots, \quad f^{(n)}(x) = \frac{d^ny}{dx^n}$$

## Tangent Line Equation

The equation of the tangent line to the curve $y = f(x)$ at the point $(a, f(a))$ is:
$$y - f(a) = f'(a)(x - a)$$

## Steps for Differentiation

1. **Identify the type of function**: Is it a polynomial, rational, trigonometric, exponential, logarithmic, or a composition?
2. **Select the appropriate rule(s)**: Decide which differentiation rules apply.
3. **Apply the rules step by step**: Break down complex functions into simpler components.
4. **Simplify the result**: Combine like terms and simplify algebraic expressions.

## Worked Examples

### Example 1: Product Rule
Find the derivative of $f(t) = \sin\left(\frac{t-3}{t}\right) + 2t \sin(2t+1)$

Solution:
$f(t) = \sin\left(\frac{t-3}{t}\right) + 2t \sin(2t+1)$

Using the sum rule, differentiate each term separately:

For the first term, $\sin\left(\frac{t-3}{t}\right)$:
- Let $u = \frac{t-3}{t}$
- $\frac{du}{dt} = \frac{t \cdot 1 - (t-3) \cdot 1}{t^2} = \frac{t - t + 3}{t^2} = \frac{3}{t^2}$
- Using the chain rule: $\frac{d}{dt}[\sin(u)] = \cos(u) \cdot \frac{du}{dt} = \cos\left(\frac{t-3}{t}\right) \cdot \frac{3}{t^2}$

For the second term, $2t \sin(2t+1)$:
- Use the product rule: $\frac{d}{dt}[2t \sin(2t+1)] = 2 \cdot \sin(2t+1) + 2t \cdot \cos(2t+1) \cdot 2$
- Simplify: $2 \sin(2t+1) + 4t \cos(2t+1)$

Combining both terms:
$f'(t) = \cos\left(\frac{t-3}{t}\right) \cdot \frac{3}{t^2} + 2 \sin(2t+1) + 4t \cos(2t+1)$

### Example 2: Quotient Rule
Find the derivative of $h(s) = \frac{s^2-6s+5}{s-3}$

Solution:
$h(s) = \frac{s^2-6s+5}{s-3}$

Using the quotient rule:
$h'(s) = \frac{(2s-6)(s-3) - (s^2-6s+5)(1)}{(s-3)^2}$

Expanding the numerator:
$h'(s) = \frac{2s^2-6s-6s+18 - s^2+6s-5}{(s-3)^2}$

Simplifying:
$h'(s) = \frac{s^2-6s+13}{(s-3)^2}$

### Example 3: Chain Rule
Find the derivative of $\psi(x) = \frac{(x+1)^3}{(x-1)^2}$

Solution:
$\psi(x) = \frac{(x+1)^3}{(x-1)^2}$

Using the quotient rule:
$\psi'(x) = \frac{3(x+1)^2(1)(x-1)^2 - (x+1)^3 \cdot 2(x-1)(1)}{(x-1)^4}$

Simplifying:
$\psi'(x) = \frac{3(x+1)^2(x-1)^2 - 2(x+1)^3(x-1)}{(x-1)^4}$

Factor out $(x+1)^2(x-1)$:
$\psi'(x) = \frac{(x+1)^2(x-1)[3(x-1) - 2(x+1)]}{(x-1)^4}$

Further simplify:
$\psi'(x) = \frac{(x+1)^2[3x-3 - 2x-2]}{(x-1)^3}$

Final simplification:
$\psi'(x) = \frac{(x+1)^2(x-5)}{(x-1)^3}$

## Application to Optimization Problems

1. **Identify the function** to be maximized or minimized.
2. **Find the critical points** by setting the derivative equal to zero and solving.
3. **Determine the nature of critical points** using the second derivative test.
4. **Evaluate the function** at critical points and endpoints (if applicable).
5. **Compare the values** to find the maximum or minimum.

See Also:
- [[Critical Points]]
- [[Higher Derivatives]]
- [[Chain Rule for Composite Functions]]
- [[Product Rule]]
- [[Quotient Rule]]
- [[Power Rule]]
### See Also
- ### [[Rules of Derivation]]
- ### [[Quotient Rule]]
- ### [[Product Rule]]
- ### [[Chain Rule for Composite Functions]]
### Exercises

1. Compute the derivatives of the following functions and the equation of the tangent line in the given point (if present):
   a) $\phi(t) = \sin\left(\frac{t-3}{t}\right) + 2t\sin(2t+1)$

```blindfold
dsadsad
```
   
   b) $\psi(x) = \frac{(x+1)^3}{(x-1)^2}$, $P = (0,1)$
   c) $g(z) = \frac{\pi}{4\pi^2+z^3}$, $P = (0,1/4\pi)$
   d) $f(x) = e^{3x}+2$, $P = (1,e^3+2)$

2. (Review Exercises) Compute the derivatives of the following functions and the equation of the tangent line in the given point (if present):
   a) $\phi(t) = \sin\left(\frac{t-3}{t}\right) + 2t\sin(2t+1)$
   b) $\psi(x) = \frac{(x+1)^3}{(x-1)^2}$, $P = (0,1)$
   c) $g(z) = \frac{\pi}{4\pi^2+z^3}$, $P = (0,1/4\pi)$
   d) $f(x) = e^{3x}+2$, $P = (1,e^3+2)$

3. Written test 2022-4-18, Question 2b: Find $f'(x) = \frac{x^2+2-2x(x-2)}{(x^2+2)^2} = \frac{-x^2+4x+2}{(x^2+2)^2}$

4. Exercises (3-6 April):
   a) Question 1: Compute the equation of the tangent line to the graph of functions at given points.
   b) Question 2: Compute the derivative of various functions and the equation of the tangent line at given points.

5. Compute the derivative of the following functions and the equation of the tangent line in the given point (if present):
   a) $f(x) = \frac{1}{x+1}$
   b) $f(x) = \frac{1}{x^2+1}$
   c) $f(x) = e^{3x}+2$, $P = (1, e^3+2)$
   d) $g(z) = \frac{z^5+4z^3}{15}$
   e) $h(s) = \frac{s^2-6s+5}{s-3}$
   f) $\phi(t) = \sin\left(\frac{t-3}{t}\right) + 2t\sin(2t+1)$
   g) $\psi(x) = \frac{(x+1)^3}{(x-1)^2}$
   h) $b(z) = \frac{\pi}{4\pi^2+z^3}$
   i) $g(x) = \sqrt{\frac{\sin x - x}{\cos x}}$
   j) $f(t) = t + \frac{\sqrt{2+t^2}}{t-\sqrt{2+t^2}}$

6. Compute $g'(1)$ taking into account that $f(1) = 1$ and $f'(1) = 3$:
   a) $g(x) = f^3(x^3)$

7. Compute the following derivatives:
   a) $\frac{d}{dx}[2f(3f(x))]$
   b) $\frac{d}{dx}[e^{[f(x)]^{2+5}}]$

8. Find (if there are) the global maximum and the global minimum of the following functions in the given intervals:
   a) $f(x) = x - \arctan x$ $(-\infty,+\infty)$
   b) $f(x) = \sin x - \cos x$ $[0, 2\pi]$
   c) $f(x) = \frac{x}{x^2+1}$ $[-2, 3]$
