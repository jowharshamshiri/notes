---
---


![[Pasted image 20250220194634.png]]

## Definition and Types

Improper integrals are definite integrals that involve either:
1. Infinite limits of integration, or
2. An integrand that becomes infinite within the limits of integration

### Type 1: Infinite Limits of Integration

#### Case 1: Integration to Infinity
$$\int_a^{\infty} f(x) \, dx = \lim_{R \to \infty} \int_a^{R} f(x) \, dx$$

#### Case 2: Integration from Negative Infinity
$$\int_{-\infty}^{a} f(x) \, dx = \lim_{R \to \infty} \int_{-R}^{a} f(x) \, dx$$

#### Case 3: Integration over the Entire Real Line
$$\int_{-\infty}^{\infty} f(x) \, dx = \int_{-\infty}^{a} f(x) \, dx + \int_a^{\infty} f(x) \, dx$$
for any value of $a$ where $f$ is defined.

### Type 2: Integrand with a Vertical Asymptote

#### Case 1: Asymptote at the Lower Limit
$$\int_a^{b} f(x) \, dx = \lim_{\epsilon \to 0^+} \int_{a+\epsilon}^{b} f(x) \, dx$$
where $f$ has a vertical asymptote at $x = a$.

#### Case 2: Asymptote at the Upper Limit
$$\int_a^{b} f(x) \, dx = \lim_{\epsilon \to 0^+} \int_a^{b-\epsilon} f(x) \, dx$$
where $f$ has a vertical asymptote at $x = b$.

#### Case 3: Asymptote at an Interior Point
$$\int_a^{b} f(x) \, dx = \int_a^{c} f(x) \, dx + \int_c^{b} f(x) \, dx = \lim_{\epsilon \to 0^+} \left[ \int_a^{c-\epsilon} f(x) \, dx + \int_{c+\epsilon}^{b} f(x) \, dx \right]$$
where $f$ has a vertical asymptote at $x = c$ with $a < c < b$.

## Convergence and Divergence

### Definition
- An improper integral **converges** if the corresponding limit exists and is finite.
- An improper integral **diverges** if the limit doesn't exist or is infinite.

### Convergence Theorems

#### Comparison Test
If $0 \leq f(x) \leq g(x)$ for all $x \geq a$, then:
1. If $\int_a^{\infty} g(x) \, dx$ converges, then $\int_a^{\infty} f(x) \, dx$ also converges.
2. If $\int_a^{\infty} f(x) \, dx$ diverges, then $\int_a^{\infty} g(x) \, dx$ also diverges.

#### Limit Comparison Test
If $f(x) \geq 0$, $g(x) > 0$ for all $x \geq a$, and $\lim_{x \to \infty} \frac{f(x)}{g(x)} = L$ where $0 < L < \infty$, then:
- $\int_a^{\infty} f(x) \, dx$ and $\int_a^{\infty} g(x) \, dx$ both converge or both diverge.

#### p-Test (for Power Functions)
For $p \in \mathbb{R}$:
- $\int_1^{\infty} \frac{1}{x^p} \, dx$ converges if $p > 1$
- $\int_1^{\infty} \frac{1}{x^p} \, dx$ diverges if $p \leq 1$

For integrals with a vertical asymptote at $x = a$:
- $\int_a^{b} \frac{1}{(x-a)^p} \, dx$ converges if $p < 1$
- $\int_a^{b} \frac{1}{(x-a)^p} \, dx$ diverges if $p \geq 1$

#### Absolute Convergence
If $\int_a^{\infty} |f(x)| \, dx$ converges, then $\int_a^{\infty} f(x) \, dx$ also converges.

#### Conditional Convergence
An integral $\int_a^{\infty} f(x) \, dx$ is conditionally convergent if it converges but $\int_a^{\infty} |f(x)| \, dx$ diverges.

## Methods for Evaluating Improper Integrals

### Direct Evaluation Method
1. Replace the improper integral with the appropriate limit
2. Find the antiderivative
3. Evaluate the limit

### For Type 1 (Infinite Limits)
$$\int_a^{\infty} f(x) \, dx = \lim_{R \to \infty} \left[ F(R) - F(a) \right]$$
where $F$ is an antiderivative of $f$.

### For Type 2 (Vertical Asymptotes)
$$\int_a^{b} f(x) \, dx = \lim_{\epsilon \to 0^+} \left[ F(b) - F(a+\epsilon) \right]$$
where $f$ has an asymptote at $x = a$.

### Comparison Test for Non-Negative Functions
1. Find a simpler function $g(x)$ that bounds $f(x)$
2. Determine if the simpler integral $\int g(x) \, dx$ converges or diverges
3. Apply the comparison test to draw conclusions about $\int f(x) \, dx$

### Asymptotic Comparison
For positive functions $f(x)$ and $g(x)$, if $f(x) \sim g(x)$ as $x \to \infty$ (meaning $\lim_{x \to \infty} \frac{f(x)}{g(x)} = 1$), then:
- $\int_a^{\infty} f(x) \, dx$ and $\int_a^{\infty} g(x) \, dx$ both converge or both diverge.

## Common Improper Integrals

### Standard Convergent Improper Integrals
- $\int_0^{\infty} e^{-x} \, dx = 1$
- $\int_0^{\infty} e^{-ax} \, dx = \frac{1}{a}$ for $a > 0$
- $\int_1^{\infty} \frac{1}{x^p} \, dx = \frac{1}{p-1}$ for $p > 1$
- $\int_0^{\infty} \frac{\sin x}{x} \, dx = \frac{\pi}{2}$
- $\int_0^{\infty} e^{-x^2} \, dx = \frac{\sqrt{\pi}}{2}$

### Standard Divergent Improper Integrals
- $\int_1^{\infty} \frac{1}{x} \, dx$ (diverges logarithmically)
- $\int_0^1 \frac{1}{x} \, dx$ (diverges logarithmically)
- $\int_0^1 \frac{1}{x^p} \, dx$ for $p \geq 1$
- $\int_0^{\infty} \sin x \, dx$ (oscillates)
- $\int_0^{\infty} \cos x \, dx$ (oscillates)

## Worked Examples

### Example 1: Infinite Upper Limit
Determine if $\int_{4}^{+\infty} \frac{x+1}{x^2(x-3)} \, dx$ converges.

Solution:
Step 1: Decompose into partial fractions
$$\frac{x+1}{x^2(x-3)} = \frac{A}{x} + \frac{B}{x^2} + \frac{C}{x-3}$$

Solving for coefficients (by multiplying both sides by $x^2(x-3)$ and comparing):
$$x+1 = Ax(x-3) + B(x-3) + Cx^2$$

Evaluating at various points:
- At $x = 0$: $1 = -3B$, so $B = -\frac{1}{3}$
- At $x = 3$: $4 = 9C$, so $C = \frac{4}{9}$

Comparing coefficients of $x^2$: $0 = A + C$, so $A = -C = -\frac{4}{9}$

Step 2: Check each term for convergence
$$\int_{4}^{+\infty} \frac{x+1}{x^2(x-3)} \, dx = \int_{4}^{+\infty} \left( \frac{-4/9}{x} + \frac{-1/3}{x^2} + \frac{4/9}{x-3} \right) \, dx$$

For $\int_{4}^{+\infty} \frac{1}{x} \, dx$: This diverges by the p-test (p = 1).

Since one term diverges, the entire integral diverges.

### Example 2: Convergent Integral with Infinite Limit
Establish if $\int_{1}^{+\infty} \frac{x - \arctan x}{x^3} \, dx$ converges using asymptotic comparison.

Solution:
Step 1: Analyze the asymptotic behavior
As $x \to \infty$, $\arctan x \to \frac{\pi}{2}$, so:
$$\frac{x - \arctan x}{x^3} \sim \frac{x - \frac{\pi}{2}}{x^3} \sim \frac{x}{x^3} = \frac{1}{x^2}$$

Step 2: Apply the p-test
$\int_{1}^{+\infty} \frac{1}{x^2} \, dx$ converges since $p = 2 > 1$.

Step 3: Verify using limit comparison test
$$\lim_{x \to \infty} \frac{x - \arctan x}{x^3} \cdot x^2 = \lim_{x \to \infty} \frac{x - \arctan x}{x}$$

Using L'Hôpital's rule:
$$\lim_{x \to \infty} \frac{x - \arctan x}{x} = \lim_{x \to \infty} \left(1 - \frac{\arctan x}{x}\right) = 1 - \lim_{x \to \infty} \frac{\arctan x}{x}$$

Since $\lim_{x \to \infty} \arctan x = \frac{\pi}{2}$, we get:
$$\lim_{x \to \infty} \frac{\arctan x}{x} = \lim_{x \to \infty} \frac{\frac{\pi}{2}}{x} = 0$$

Therefore:
$$\lim_{x \to \infty} \frac{x - \arctan x}{x} = 1 - 0 = 1$$

By the limit comparison test, since this limit is finite and positive, and $\int_{1}^{+\infty} \frac{1}{x^2} \, dx$ converges, $\int_{1}^{+\infty} \frac{x - \arctan x}{x^3} \, dx$ also converges.

### Example 3: Integral with Vertical Asymptote
Establish if $\int_0^1 \frac{dx}{e^{\sqrt{x}}-1}$ converges.

Solution:
Step 1: Identify the behavior near the critical point
As $x \to 0^+$, $\sqrt{x} \to 0$, and $e^{\sqrt{x}} \to 1$.
Using Taylor series: $e^{\sqrt{x}} - 1 \approx \sqrt{x} + \frac{x}{2} + \ldots \approx \sqrt{x}$ for small $x$.

Step 2: Compare with a known function
$$\frac{1}{e^{\sqrt{x}}-1} \sim \frac{1}{\sqrt{x}}$$

Step 3: Apply the p-test for vertical asymptotes
$\int_0^1 \frac{1}{\sqrt{x}} \, dx = \int_0^1 x^{-1/2} \, dx$ converges since $p = 1/2 < 1$.

Step 4: Verify using limit comparison test
$$\lim_{x \to 0^+} \frac{\frac{1}{e^{\sqrt{x}}-1}}{\frac{1}{\sqrt{x}}} = \lim_{x \to 0^+} \frac{\sqrt{x}}{e^{\sqrt{x}}-1}$$

Using L'Hôpital's rule:
$$\lim_{x \to 0^+} \frac{\sqrt{x}}{e^{\sqrt{x}}-1} = \lim_{x \to 0^+} \frac{\frac{1}{2}x^{-1/2}}{e^{\sqrt{x}} \cdot \frac{1}{2}x^{-1/2}} = \lim_{x \to 0^+} \frac{1}{e^{\sqrt{x}}} = 1$$

By the limit comparison test, since this limit is finite and positive, and $\int_0^1 \frac{1}{\sqrt{x}} \, dx$ converges, $\int_0^1 \frac{dx}{e^{\sqrt{x}}-1}$ also converges.

### Example 4: Logarithmic Integral
Establish if $\int_0^1 \ln x \, dx$ converges.

Solution:
Step 1: Identify the behavior near x = 0
As $x \to 0^+$, $\ln x \to -\infty$, so this is an improper integral with a vertical asymptote at the lower limit.

Step 2: Evaluate using the definition
$\int_0^1 \ln x \, dx = \lim_{\epsilon \to 0^+} \int_{\epsilon}^1 \ln x \, dx$

Step 3: Find the antiderivative
$\int \ln x \, dx = x \ln x - x + C$

Step 4: Apply the limits
$\lim_{\epsilon \to 0^+} \int_{\epsilon}^1 \ln x \, dx = \lim_{\epsilon \to 0^+} [(x \ln x - x)]_{\epsilon}^1$
$= \lim_{\epsilon \to 0^+} [(1 \ln 1 - 1) - (\epsilon \ln \epsilon - \epsilon)]$
$= -1 - \lim_{\epsilon \to 0^+} (\epsilon \ln \epsilon - \epsilon)$

Since $\lim_{\epsilon \to 0^+} \epsilon \ln \epsilon = 0$ (which can be verified using L'Hôpital's rule):
$\int_0^1 \ln x \, dx = -1$

Therefore, the improper integral converges to -1.

### Example 5: Integral with Oscillatory Behavior
Determine if $\int_1^{+\infty} \sin\left(\frac{1}{x}\right) \, dx$ converges.

Solution:
Step 1: Use integration by parts
Let $u = \sin\left(\frac{1}{x}\right)$ and $dv = dx$
Then $du = -\frac{1}{x^2} \cos\left(\frac{1}{x}\right) \, dx$ and $v = x$

$\int \sin\left(\frac{1}{x}\right) \, dx = x \sin\left(\frac{1}{x}\right) - \int x \cdot \left(-\frac{1}{x^2}\right) \cos\left(\frac{1}{x}\right) \, dx$
$= x \sin\left(\frac{1}{x}\right) + \int \frac{1}{x} \cos\left(\frac{1}{x}\right) \, dx$

Let $t = \frac{1}{x}$, then $dx = -\frac{1}{t^2} \, dt$
$\int \frac{1}{x} \cos\left(\frac{1}{x}\right) \, dx = \int \cos t \, dt = \sin t + C = \sin\left(\frac{1}{x}\right) + C$

Therefore:
$\int \sin\left(\frac{1}{x}\right) \, dx = x \sin\left(\frac{1}{x}\right) + \sin\left(\frac{1}{x}\right) + C$

Step 2: Evaluate the limits
$\int_1^{+\infty} \sin\left(\frac{1}{x}\right) \, dx = \lim_{R \to \infty} \left[ x \sin\left(\frac{1}{x}\right) + \sin\left(\frac{1}{x}\right) \right]_1^{R}$
$= \lim_{R \to \infty} \left[ R \sin\left(\frac{1}{R}\right) + \sin\left(\frac{1}{R}\right) - \sin(1) - \sin(1) \right]$

As $R \to \infty$, $\sin\left(\frac{1}{R}\right) \sim \frac{1}{R}$, so $R \sin\left(\frac{1}{R}\right) \to 1$ and $\sin\left(\frac{1}{R}\right) \to 0$

Therefore:
$\int_1^{+\infty} \sin\left(\frac{1}{x}\right) \, dx = 1 - 2\sin(1)$

The integral converges to a finite value.

## Strategy for Solving Improper Integral Problems

1. **Identify the type of improper integral**:
   - Infinite limit(s) of integration
   - Integrand with vertical asymptote(s)
   - Both infinity and vertical asymptote

2. **For convergence analysis**:
   - Use direct evaluation if the antiderivative is known and the limit can be computed
   - Apply comparison tests for functions that are difficult to integrate
   - Use asymptotic comparison for complex functions
   - Apply the p-test for power functions

3. **For evaluating convergent improper integrals**:
   - Replace with the appropriate limit definition
   - Find the antiderivative
   - Carefully evaluate the limit
   - If direct evaluation is difficult, consider numerical methods

4. **Special cases**:
   - For oscillatory integrals, consider integration by parts or special techniques
   - For rational functions, use partial fractions
   - For functions with absolute values, split the domain appropriately

5. **Verification**:
   - Double-check your work, especially limit evaluations
   - Ensure proper handling of indeterminate forms
   - Use alternative methods to confirm results when possible

See:
- [[Integration Techniques]]
- [[Antiderivatives]]
- [[L'Hôpital's Rule]]
- [[Convergence Tests]] (for Series)
- [[Series]]

### Exercises

#### 1. Determine Convergence

Establish if the following integrals converge:

1. $\int_{4}^{+\infty} \frac{x+1}{x^2(x-3)} dx$

2. $\int_{1}^{+\infty} \frac{x - \arctan x}{x^3} dx$ (using asymptotic comparison with $g(x) = \frac{1}{x^2}$)

3. $\int_e^{\infty} \frac{dx}{x \ln x}$

4. $\int_0^1 \frac{dx}{e^{\sqrt{x}}-1}$

5. $\int_1^{+\infty} \sin\left(\frac{1}{x}\right) dx$

#### 2. Compute Converging Improper Integrals

Establish if the following integrals converge and compute them:

1. $\int_0^1 \ln x dx$

2. $\int_0^1 \frac{1}{\sqrt{1-x^2}}dx$

3. $\int_0^1 \frac{\sqrt{x}}{x^2-4x}dx$

4. $\int_0^1 \frac{\ln x}{x\sqrt{x}}dx$

5. $\int_0^{+\infty} \frac{x}{1+x^2}dx$

6. $\int_{-\infty}^{+\infty} \frac{1}{1+x^2}dx$

7. $\int_1^e \frac{\ln x}{x(1 + 7 \ln x)} dx$ (compute the area beneath the graph)

#### 3. Improper Integrability of Functions

Establish if the following functions are improperly integrable in the given interval:

1. $f(x) = xe^{1/x}$ in $(1, +\infty)$

2. $f(x) = x^2e^{-x^3}$ in $[1, +\infty)$

3. $f(x) = \frac{x-1}{x^2+1}$ in $[2, +\infty)$

4. $f(x) = \frac{1+\cos x}{\sqrt[4]{(1-x^3)^3}}$ in $[0,1]$

5. $f(x) = \frac{e^{-x}}{\sin(1/x)}$ in $[2,+\infty)$

6. $f(x) = \frac{1}{3+x^2}$ in $[1,+\infty)$

7. $f(t) = \frac{3-t}{t^2+1}$ in $[2,+\infty)$