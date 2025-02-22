---
---

![[Screenshot 2025-02-20 at 16.14.26.png]]
![[Screenshot 2025-02-20 at 13.40.10.png]]

# Local Minima & Maxima

![[Screenshot 2025-02-20 at 13.41.14.png]]
![[Pasted image 20250220164940.png]]

# Inflection Point

![[Pasted image 20250220165034.png]]

# Constant Function

![[Pasted image 20250220165050.png]]

# Critical Points

## Definition and Types

### Basic Definition

A critical point of a function $f(x)$ is a value $x = c$ in the domain of $f$ where either:

1. $f'(c) = 0$ (stationary point), or
2. $f'(c)$ does not exist (non-differentiable point)

### Types of Critical Points

Critical points can be classified as:

1. **Local maximum**: A point where the function value is greater than at nearby points
2. **Local minimum**: A point where the function value is less than at nearby points
3. **Saddle point**: A critical point that is neither a local maximum nor a local minimum
4. **Inflection point**: A point where the function's concavity changes (may or may not be a critical point)

## First Derivative Test

To classify a critical point $x = c$ using the first derivative test:

1. Find all values of $x$ where $f'(x) = 0$ or $f'(x)$ does not exist
2. Determine the sign of $f'(x)$ on intervals to the left and right of each critical point
3. Classify based on the sign changes:
   - If $f'(x)$ changes from positive to negative at $x = c$, then $f(c)$ is a local maximum
   - If $f'(x)$ changes from negative to positive at $x = c$, then $f(c)$ is a local minimum
   - If $f'(x)$ maintains the same sign on both sides of $x = c$, then $f(c)$ is neither a maximum nor a minimum

### First Derivative Test Table

| Sign of $f'(x)$ before $c$ | Sign of $f'(x)$ after $c$ | Classification of $f(c)$ |
|----------------------------|----------------------------|--------------------------|
| Positive (+)               | Positive (+)               | Not extremum             |
| Positive (+)               | Negative (-)               | Local maximum            |
| Negative (-)               | Positive (+)               | Local minimum            |
| Negative (-)               | Negative (-)               | Not extremum             |

## Second Derivative Test

To classify a critical point $x = c$ where $f'(c) = 0$ using the second derivative test:

1. Compute $f''(c)$
2. Classify based on the value:
   - If $f''(c) > 0$, then $f(c)$ is a local minimum
   - If $f''(c) < 0$, then $f(c)$ is a local maximum
   - If $f''(c) = 0$, the test is inconclusive (use the first derivative test or higher derivatives)

## Higher-Order Derivative Test

If $f'(c) = 0$ and $f''(c) = f'''(c) = \ldots = f^{(n-1)}(c) = 0$ but $f^{(n)}(c) \neq 0$:

1. If $n$ is even and $f^{(n)}(c) > 0$, then $f(c)$ is a local minimum
2. If $n$ is even and $f^{(n)}(c) < 0$, then $f(c)$ is a local maximum
3. If $n$ is odd, then $f(c)$ is an inflection point (neither maximum nor minimum)

## Inflection Points

An inflection point is a point on the graph where the concavity changes. Mathematically, if $x = c$ is an inflection point:

1. $f''(c) = 0$ or $f''(c)$ does not exist
2. $f''(x)$ changes sign as $x$ crosses $c$

Note: Not all points where $f''(x) = 0$ are inflection points; check if $f''(x)$ actually changes sign.

## Global Extrema

### On a Closed Interval [a, b]

To find global (absolute) maximum and minimum values of a continuous function $f(x)$ on a closed interval $[a, b]$:

1. Find all critical points of $f(x)$ in $(a, b)$
2. Evaluate $f(x)$ at each critical point and at the endpoints $a$ and $b$
3. The largest value is the global maximum; the smallest value is the global minimum

### On an Open Interval or Unbounded Domain

To find global extrema on an unbounded domain:

1. Find all critical points
2. Classify each critical point using the first or second derivative test
3. Analyze the behavior of $f(x)$ as $x \to \pm \infty$ (if applicable)
4. Compare values at all critical points and limits to determine global extrema (if they exist)

## Analysis Process for Finding Critical Points

### Step 1: Find the Domain

Determine the domain of the function to establish where critical points can exist.

### Step 2: Find the Derivative

Compute $f'(x)$ using appropriate differentiation rules.

### Step 3: Locate Critical Points

Solve $f'(x) = 0$ and identify points where $f'(x)$ does not exist.

### Step 4: Classify Critical Points

Use the first derivative test, second derivative test, or higher-order derivative test to classify each critical point.

### Step 5: Determine Global Behavior

Analyze the behavior of $f(x)$ as $x$ approaches any domain boundaries or $\pm \infty$ to understand the complete behavior of the function.

## Special Cases and Techniques

### Rational Functions

For rational functions $f(x) = \frac{p(x)}{q(x)}$:

1. Critical points can occur where $p'(x)q(x) - p(x)q'(x) = 0$
2. Also check points where $q(x) = 0$ (vertical asymptotes)
3. Analyze horizontal or oblique asymptotic behavior as $x \to \pm \infty$

### Transcendental Functions

For functions involving trigonometric, exponential, or logarithmic terms:

1. Use appropriate derivative rules and identities
2. Consider periodicity for trigonometric functions
3. Pay attention to domain restrictions (e.g., $\ln x$ requires $x > 0$)

### Piecewise Functions

For piecewise-defined functions:

1. Find critical points within each piece
2. Check junction points where the function changes definition

## Worked Examples

### Example 1: Polynomial Function

Consider $f(x) = x^3 - 3x^2 + x - 3$

Step 1: Domain is ℝ (all real numbers)

Step 2: $f'(x) = 3x^2 - 6x + 1$

Step 3: Solve $f'(x) = 0$:
$3x^2 - 6x + 1 = 0$
Using the quadratic formula:
$x = \frac{6 \pm \sqrt{36 - 12}}{6} = \frac{6 \pm \sqrt{24}}{6} = \frac{6 \pm 2\sqrt{6}}{6} = 1 \pm \frac{\sqrt{6}}{3}$

Step 4: Compute $f''(x) = 6x - 6$
At $x = 1 + \frac{\sqrt{6}}{3}$: $f''(x) = 6(1 + \frac{\sqrt{6}}{3}) - 6 = 2\sqrt{6} > 0$ → Local minimum
At $x = 1 - \frac{\sqrt{6}}{3}$: $f''(x) = 6(1 - \frac{\sqrt{6}}{3}) - 6 = -2\sqrt{6} < 0$ → Local maximum

### Example 2: Rational Function

Consider $f(x) = \frac{x-2}{x^2+2}$

Step 1: Domain is ℝ (all real numbers)

Step 2: Using the quotient rule:
$f'(x) = \frac{(1)(x^2+2) - (x-2)(2x)}{(x^2+2)^2} = \frac{x^2+2 - 2x^2+4x}{(x^2+2)^2} = \frac{-x^2+4x+2}{(x^2+2)^2}$

Step 3: Solve $f'(x) = 0$:
$-x^2+4x+2 = 0$
$x^2-4x-2 = 0$
Using the quadratic formula:
$x = \frac{4 \pm \sqrt{16+8}}{2} = \frac{4 \pm \sqrt{24}}{2} = 2 \pm \sqrt{6}$

Step 4: Compute $f''(x)$ or use the first derivative test to classify these points.
For $x = 2 + \sqrt{6}$: local minimum
For $x = 2 - \sqrt{6}$: local maximum

### Example 3: Transcendental Function

Consider $f(x) = xe^{1/x}$

Step 1: Domain is $x \neq 0$

Step 2: Using the product rule:
$f'(x) = e^{1/x} + x \cdot e^{1/x} \cdot (-\frac{1}{x^2}) = e^{1/x} - \frac{e^{1/x}}{x} = e^{1/x}(1 - \frac{1}{x})$

Step 3: Solve $f'(x) = 0$:
$e^{1/x}(1 - \frac{1}{x}) = 0$
Since $e^{1/x} > 0$ for all $x \neq 0$, we need $1 - \frac{1}{x} = 0$, which gives $x = 1$

Step 4: Determine if $x = 1$ is a maximum or minimum.
Computing $f''(1)$ or analyzing the sign of $f'(x)$ around $x = 1$ shows this is a minimum.

Also, analyze the behavior as $x \to 0^+$, $x \to 0^-$, and $x \to \pm \infty$ to understand the full behavior.

## Multi-Variable Critical Points

For functions of two or more variables, critical points are found where all partial derivatives equal zero or do not exist.

For a function $f(x, y)$:

1. Compute partial derivatives $f_x(x, y)$ and $f_y(x, y)$
2. Find points $(a, b)$ where $f_x(a, b) = 0$ and $f_y(a, b) = 0$
3. Classify using the second derivative test for functions of two variables:
   - Compute $D = f_{xx}(a, b) \cdot f_{yy}(a, b) - [f_{xy}(a, b)]^2$
   - If $D > 0$ and $f_{xx}(a, b) > 0$, then $(a, b)$ is a local minimum
   - If $D > 0$ and $f_{xx}(a, b) < 0$, then $(a, b)$ is a local maximum
   - If $D < 0$, then $(a, b)$ is a saddle point
   - If $D = 0$, the test is inconclusive

## See Also

- [[Critical Points (Multivariable)]] - For classification of critical points in multiple variables
- [[Extrema]] - For global extrema concepts
- [[Local Extrema]] - For local extrema in multiple dimensions
- [[Critical Points (Multivariable)]]
- [[Derivatives]]
- [[Extrema]]
- [[Gradients]] (for multivariable functions)
- [[Local Extrema]]

### Exercises

1. Consider the function $f(x) = \ln \frac{2-x}{x^2}$
   a) Classify all the critical points.
   b) Find the monotonicity intervals.

2. Consider the function $f(x) = e^{\frac{x}{x-1}}$
   a) Classify all the critical points.
   b) Find the monotonicity intervals.

3. Consider the function $f(x) = \frac{1}{x^2-1}$
   a) Classify all the critical points.
   b) Find the monotonicity intervals and draw a graph.

4. Find the global maximum and minimum (if there are) of the following functions in the given intervals:
   a) $f(x) = x(x-2)^2$, $[0,+\infty)$
   b) $f(x) = x-\arctan x$, $(-\infty,+\infty)$
   c) $f(x) = x\lg x$, $[1,2]$
   d) $f(x) = \arctan x-\lg(1+x^2)$, $[0,1]$
   e) $f(x) = \lg\sin x-2\sin x$, $(0,\pi/2]$
   f) $f(x) = 3\lg(1+x^2)+5$, $[-2,0]$

5. Classify all the critical points of the function $f(x) = \frac{x^2-3}{x-2}$

6. (Review Exercises) Given the following functions:
   a) $\ln|x|-2x$
   b) $2x^3-9x^2+12x-1$
   c) $x(x-1)^2$

   1) Find the domain and asymptotes (if there are);
   2) Detect the monotonicity intervals and classify the critical points.
   3) Collect all the obtained information on the cartesian plan drawing the graph.

7. Consider the function $f(x) = xe^{1/x}$.
   a) Determine local and global maxima and minima.
   b) Draw a qualitative graph.

8. Consider the function $f(x) = x^3 - 3x^2 + x - 3$.
   a) Determine local and global maxima and minima.
   b) Draw a qualitative graph.

9. Consider the function $f(x) = \frac{x-1}{x^2+1}$. Mark true or false in the following sentences:
   a) The function has a local maximum and a local minimum.
   b) The function is increasing.

10. Consider the function $f(x) = \frac{4-5x^2}{x^2+x-2}$. Mark true or false in the following sentences:
    a) The function has a global minimum.
    b) The function has a local minimum but not a global one.
    c) The function has a global maximum.

11. Consider the function $f(x) = \frac{\sqrt{x}-x^2}{x}$. Mark true or false in the following sentences:
    a) $f$ has local extrema.
    b) $f$ is concave in its domain.

12. Consider the function $f(x) = \frac{x^4-10x^2+9}{x^3}$. Mark true or false in the following sentences:
    a) $f$ has a global minimum.
    b) $f$ has a global maximum.
    c) $f$ has a local minimum and a local maximum which are not global.

13. TEST 2, Question 2b: Consider the function $f(x,y) = e^x(2x^2-xy+y^2)$. Find all the critical points.

14. Written test 2022-4-18, Question 2b: Find critical points of $f(x) = \frac{x-2}{x^2+2}$ by solving $f'(x) = 0$.

15. Written test 2022-4-18, Question 4: For $f(x,y) = x^2+3y$ with constraint $S = \{\frac{x^2}{4} + \frac{y^2}{9} = 1\}$, find critical points using Lagrange multipliers.

16. TEST 2, Question 2b: Consider the function $f(x,y) = e^x(2x^2-xy+y^2)$. Find all the critical points.

17. Written test 2022-4-18, Question 2b: Find critical points of $f(x) = \frac{x-2}{x^2+2}$ by solving $f'(x) = 0$.

18. Exercises (3-6 April), Question 5: Find global maximum and minimum of functions in given intervals.

20. Classify all the critical points of the following functions:
 a) $f(x) = \frac{x^3}{x-1}$
 b) $f(x) = \frac{x+2}{x-2}$
 c) $f(x) = \frac{1}{x^2+x}$
 d) $f(x) = x^4-4x^3+4x^2+1$
 e) $f(x) = x^2\ln x$
 f) $f(x) = xe^{1-x}$
 g) $f(x) = e^x-1$
