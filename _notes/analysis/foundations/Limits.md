---
---

# Limits

## Formal Definition

### ε-δ Definition
For a function f(x) and a point a, we say:

$$\lim_{x \to a} f(x) = L$$

if for every ε > 0, there exists a δ > 0 such that:

if 0 < |x - a| < δ, then |f(x) - L| < ε.

### One-Sided Limits
- **Right-hand limit**: $\lim_{x \to a^+} f(x) = L$ if for every ε > 0, there exists a δ > 0 such that if a < x < a + δ, then |f(x) - L| < ε.
- **Left-hand limit**: $\lim_{x \to a^-} f(x) = L$ if for every ε > 0, there exists a δ > 0 such that if a - δ < x < a, then |f(x) - L| < ε.

A limit exists if and only if both one-sided limits exist and are equal:
$$\lim_{x \to a} f(x) = L \iff \lim_{x \to a^-} f(x) = \lim_{x \to a^+} f(x) = L$$

## Limit Laws

If $\lim_{x \to a} f(x) = L$ and $\lim_{x \to a} g(x) = M$, then:

1. **Sum**: $\lim_{x \to a} [f(x) + g(x)] = L + M$
2. **Difference**: $\lim_{x \to a} [f(x) - g(x)] = L - M$
3. **Product**: $\lim_{x \to a} [f(x) \cdot g(x)] = L \cdot M$
4. **Quotient**: $\lim_{x \to a} \frac{f(x)}{g(x)} = \frac{L}{M}$, provided $M \neq 0$
5. **Constant Multiple**: $\lim_{x \to a} [c \cdot f(x)] = c \cdot L$
6. **Power**: $\lim_{x \to a} [f(x)]^n = L^n$, where n is a positive integer
7. **Root**: $\lim_{x \to a} \sqrt[n]{f(x)} = \sqrt[n]{L}$, if L > 0 for even n
8. **Composition**: If $\lim_{x \to a} g(x) = M$ and $\lim_{y \to M} h(y) = N$, then $\lim_{x \to a} h(g(x)) = N$

## Special Limits

1. **Trigonometric Limits**:
   - $\lim_{x \to 0} \frac{\sin x}{x} = 1$
   - $\lim_{x \to 0} \frac{1 - \cos x}{x^2} = \frac{1}{2}$
   - $\lim_{x \to 0} \frac{\tan x}{x} = 1$

2. **Exponential Limits**:
   - $\lim_{x \to \infty} \left(1 + \frac{1}{x}\right)^x = e$
   - $\lim_{x \to 0} \frac{e^x - 1}{x} = 1$
   - $\lim_{x \to 0} \frac{\ln(1 + x)}{x} = 1$

3. **Algebraic Limits**:
   - $\lim_{x \to \infty} \frac{x^n}{e^x} = 0$ for any positive n
   - $\lim_{x \to \infty} \frac{\ln x}{x} = 0$
   - $\lim_{x \to \infty} \frac{a_nx^n + a_{n-1}x^{n-1} + \cdots + a_0}{b_mx^m + b_{m-1}x^{m-1} + \cdots + b_0} = \begin{cases} \frac{a_n}{b_m} & \text{if } n = m \\ 0 & \text{if } n < m \\ \infty & \text{if } n > m \end{cases}$

## Indeterminate Forms

1. **$\frac{0}{0}$**: When both numerator and denominator approach 0
2. **$\frac{\infty}{\infty}$**: When both numerator and denominator approach infinity
3. **$0 \cdot \infty$**: Product of a quantity approaching 0 and another approaching infinity
4. **$\infty - \infty$**: Difference of two quantities approaching infinity
5. **$0^0$, $1^\infty$, $\infty^0$**: Powers with special limiting behaviors

## Techniques for Evaluating Limits

### Direct Substitution
If f(x) is continuous at x = a, then $\lim_{x \to a} f(x) = f(a)$

### Algebraic Manipulation
- Factoring
- Rationalization
- Using conjugates
- Multiplying by a clever form of 1

### Using Standard Limits
Apply known limits like $\lim_{x \to 0} \frac{\sin x}{x} = 1$

### L'Hôpital's Rule
For indeterminate forms $\frac{0}{0}$ or $\frac{\infty}{\infty}$:
$$\lim_{x \to a} \frac{f(x)}{g(x)} = \lim_{x \to a} \frac{f'(x)}{g'(x)}$$

### Taylor Series Expansion
For complex limits, expand functions using Taylor series:
$$f(x) = f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \cdots$$

## Solving Limit Problems

### Example 1: Basic Substitution
$$\lim_{x \to 3} (x^2 + 2x - 1)$$
Direct substitution: $3^2 + 2(3) - 1 = 9 + 6 - 1 = 14$

### Example 2: Factoring Approach
$$\lim_{x \to 4} \frac{x^2 - 16}{x - 4}$$
Factor: $\frac{(x+4)(x-4)}{x-4} = x+4$ for $x \neq 4$
Therefore: $\lim_{x \to 4} \frac{x^2 - 16}{x - 4} = 4 + 4 = 8$

### Example 3: Trigonometric Limit
$$\lim_{x \to 0} \frac{\sin(3x)}{2x}$$
Rewrite: $\frac{\sin(3x)}{2x} = \frac{3}{2} \cdot \frac{\sin(3x)}{3x}$
Apply the standard limit: $\lim_{x \to 0} \frac{\sin(3x)}{2x} = \frac{3}{2} \cdot 1 = \frac{3}{2}$

### Example 4: Complex Fraction
$$\lim_{x \to 0} \frac{\sin x - x}{x^3}$$
Use Taylor series: $\sin x = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \cdots$
Substituting: $\frac{\sin x - x}{x^3} = \frac{-\frac{x^3}{6} + \frac{x^5}{120} - \cdots}{x^3} = -\frac{1}{6} + \frac{x^2}{120} - \cdots$
Therefore: $\lim_{x \to 0} \frac{\sin x - x}{x^3} = -\frac{1}{6}$

### Example 5: Exponential Form
$$\lim_{x \to 0^+} x^{\text{sign}x}$$
Since $x \to 0^+$, sign(x) = 1
Therefore: $\lim_{x \to 0^+} x^{\text{sign}x} = \lim_{x \to 0^+} x^1 = 0$

## Strategies for Difficult Limits

1. **Identify the form** (direct substitution, indeterminate)
2. **Choose appropriate technique** based on the form
3. **Transform the expression** to a more manageable form
4. **Apply limit laws** and standard limits
5. **Check results** for reasonableness

For trigonometric functions:
- Convert to sin/cos when dealing with tan, cot, sec, csc
- Use trigonometric identities to simplify
- Apply standard limits for common forms

For rational functions:
- Factor when possible
- Divide by highest power for limits at infinity
- Look for opportunities to cancel terms

For exponential and logarithmic functions:
- Use properties of logarithms to simplify
- Apply the relationship between exponentials and logarithms
- Consider Taylor series for complex expressions

See Also:
- [[L'Hôpital's Rule]]
- [[Taylor Series]]
- [[Continuity]]

### Limit Exercises

### 1. Basic Limits

1. Compute the limit $\lim_{x \to 0} \frac{\sin(x^2) - x^2}{x^3}$

2. Compute the limit $\lim_{x \to 0} \frac{\ln(x^2 + 1)}{\cos x - 1 + \frac{1}{2}x^2}$

3. Compute the limit $\lim_{x \to 0}\frac{1-e^{2x^2}+ 2\ln(1-x^2)}{x^4}$

4. Verify by means of the definition that:
   a) $\lim_{x \to 0^+} \frac{1}{x^3-1} = -1$
   b) $\lim_{x \to -1} \frac{1}{1+x^2} = \frac{1}{2}$

5. Compute, if it exists, the limit $\lim_{x \to 0} x^{\text{sign}x}$

6. Given the function $f(x) = \begin{cases} 
   x+2 & x < 0 \\ 
   e^x & x \in [0,1] \\ 
   2-x & x > 1 
   \end{cases}$
   
   Compute using the definition: $\lim_{x \to 0^-}f(x)$, $\lim_{x \to 0^+}f(x)$, $\lim_{x \to 1^-}f(x)$, $\lim_{x \to 1^+}f(x)$

7. Prove that the limit $\lim_{x \to 0}\frac{|x|(2-x^2+x)}{x}$ does not exist.

### 2. Standard Form Limits

1. Compute the following limits:
   a) $\lim_{x \to 0}\frac{1+x^2}{1-x}$
   b) $\lim_{x \to 0}\sqrt{2+3x}$
   c) $\lim_{x \to 0}x\sin x$
   d) $\lim_{x \to 1}\frac{x+1}{x^2-2x+1}$
   e) $\lim_{x \to 4}(x\sqrt{x}+1)$
   f) $\lim_{x \to 4}\frac{x^2-16}{x-4}$
   g) $\lim_{x \to 5}\frac{\sqrt{x-1}-2}{x-5}$
   h) $\lim_{x \to 0}\frac{x^3-3x^2+4x}{x^5-x}$
   i) $\lim_{x \to 5}\frac{x-5}{\sqrt{x}-\sqrt{5}}$
   j) $\lim_{x \to 0}\frac{x+2\sqrt{x}+3x^3}{5\sqrt{x}+x^2}$
   k) $\lim_{x \to 0}\frac{x^3-1}{1-x^2}$
   l) $\lim_{x \to 0}\frac{\sqrt{x+3}-\sqrt{3}}{x}$
   m) $\lim_{x \to -\frac{1}{2}}\frac{2x+1}{\sqrt{8x^2-1}-1}$

### 3. Exponential and Infinite Limits

1. Compute the following limits:
   a) $\lim_{x \to 0^+}\frac{1+2^{\frac{1}{x}}}{3+2^{\frac{1}{x}}}$
   b) $\lim_{x \to 0^-}\frac{1+2^{\frac{1}{x}}}{3+2^{\frac{1}{x}}}$
   c) $\lim_{x \to +\infty}\frac{x^2+3}{4x^2+x}$
   d) $\lim_{x \to +\infty}\frac{3-x^2+3x\sqrt{x}}{4x^2\sqrt{x}+x}$
   e) $\lim_{x \to +\infty}\frac{x^2+\sin x}{1+x+3x^2}$
   f) $\lim_{x \to +\infty}\frac{\sqrt{1+x^2}+\sqrt{x}}{\sqrt{x}-x}$
   g) $\lim_{x \to -\infty}\frac{\lg(3+\sin x)}{x}$
   h) $\lim_{n \to +\infty}\left(1+\frac{1}{n}\right)^{2n}$
   i) $\lim_{n \to +\infty}\left(\frac{3n+2}{3n+1}\right)^n$
   j) $\lim_{x \to 0}\frac{3^{\sin x}-1}{x}$

### 4. Trigonometric Limits

1. Compute the following limits using the standard limits:
   a) $\lim_{x \to 0}\frac{\tan x}{x}$
   b) $\lim_{x \to 0}\frac{\sin(3x)}{2x}$
   c) $\lim_{x \to 0}\frac{\sin x + x}{\tan x + x}$
   d) $\lim_{x \to 0}\frac{1}{1-\cos x}$
   e) $\lim_{x \to 0}\frac{\sin(x^2)}{1-\cos x}$
   f) $\lim_{x \to 0}\frac{1-\cos(3x)}{(\sin x)^2}$
   g) $\lim_{x \to 0}\frac{\sin(\sin x)}{x}$
   h) $\lim_{x \to 0}\frac{\sin(\cos x)}{x}$
   i) $\lim_{x \to 0}\frac{\sin x+3x}{x^2+\cos x}$
   j) $\lim_{x \to 0^+}\frac{\sin x}{x+\sqrt{x}}$
   k) $\lim_{x \to 0}\frac{\sin(x^2)}{x\lg(1+x)}$

### 5. Sequence Limits

1. Compute the following limits:
   a) $\lim_{n \to \infty} \left(\frac{2n-1}{n+1}\right)^{n-1}$
   b) $\lim_{n \to \infty} \sqrt{\frac{n^2+2}{2n^2-1}}$
   c) $\lim_{x \to \infty} \sqrt{x^2+1}-x$
   d) $\lim_{n \to \infty} \frac{n\sin n}{n^2-1}$
   e) $\lim_{n \to +\infty} n^2\left(\cos\left(\frac{1}{n}\right)-1\right)$

### 6. Complex Limits

1. Compute the following limits:
   a) $\lim_{x \to 0} \frac{e^x-1-x}{1-\cos x - \frac{1}{2}x^2}$
   b) $\lim_{x \to 0} \frac{e^x-1-x}{1-\cos x}$
   c) $\lim_{x \to 0} \frac{\sin x - x}{1-\cos(x^{3/2})}$
   d) $\lim_{x \to 0} \frac{1-\cos(x^3)}{x^2\sqrt{1+x}-1}$
   e) $\lim_{x \to 0} \frac{\sqrt{x+3}-\sqrt{3}}{1-\sqrt{x+1}}$
   f) $\lim_{x \to -\infty} \frac{x}{\sqrt{1-x+3|x|}}$
   