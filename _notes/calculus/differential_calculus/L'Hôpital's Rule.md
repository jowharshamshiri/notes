---
---

## Theorem Statement

### Basic Form
If $\lim_{x \to a} f(x) = \lim_{x \to a} g(x) = 0$ or $\lim_{x \to a} |f(x)| = \lim_{x \to a} |g(x)| = \infty$, and the limit $\lim_{x \to a} \frac{f'(x)}{g'(x)}$ exists (or equals ±∞), then:

$$\lim_{x \to a} \frac{f(x)}{g(x)} = \lim_{x \to a} \frac{f'(x)}{g'(x)}$$

where $f'(x)$ and $g'(x)$ are the derivatives of $f(x)$ and $g(x)$ respectively.

### Extended Form
This rule also applies to one-sided limits and limits as $x$ approaches infinity or negative infinity.

## Conditions for Application

L'Hôpital's Rule can be applied when:

1. The limit is in an indeterminate form: $\frac{0}{0}$ or $\frac{\infty}{\infty}$
2. The functions $f(x)$ and $g(x)$ are differentiable near $x = a$ (except possibly at $a$)
3. $g'(x) ≠ 0$ near $x = a$ (except possibly at $a$)

## Other Indeterminate Forms

L'Hôpital's Rule can be adapted to handle other indeterminate forms by first transforming them:

1. **0 · ∞**: Rewrite as $\frac{0}{\frac{1}{\infty}}$ or $\frac{\infty}{\frac{1}{0}}$
2. **∞ - ∞**: Find a common denominator or use algebraic manipulation
3. **0⁰, 1^∞, ∞⁰**: Take the natural logarithm first, then apply L'Hôpital's Rule

## Repeated Application

If after applying L'Hôpital's Rule once, the resulting limit is still indeterminate, the rule can be applied repeatedly until a determinate form is reached.

## Practical Examples

### Example 1: Basic Application

$$\lim_{x \to 0} \frac{\sin x - x}{x^3}$$

Both numerator and denominator approach 0 as $x \to 0$, giving the indeterminate form $\frac{0}{0}$.

Apply L'Hôpital's Rule:
$$\lim_{x \to 0} \frac{\sin x - x}{x^3} = \lim_{x \to 0} \frac{\cos x - 1}{3x^2}$$

This is still $\frac{0}{0}$, so apply L'Hôpital's Rule again:
$$\lim_{x \to 0} \frac{\cos x - 1}{3x^2} = \lim_{x \to 0} \frac{-\sin x}{6x}$$

Apply L'Hôpital's Rule a third time:
$$\lim_{x \to 0} \frac{-\sin x}{6x} = \lim_{x \to 0} \frac{-\cos x}{6} = \frac{-1}{6}$$

Therefore, $\lim_{x \to 0} \frac{\sin x - x}{x^3} = -\frac{1}{6}$

### Example 2: Limit at Infinity

$$\lim_{x \to +\infty} \frac{x - \cos x}{x + \sin^2 x}$$

As $x \to +\infty$, both numerator and denominator approach infinity, giving the indeterminate form $\frac{\infty}{\infty}$.

Apply L'Hôpital's Rule:
$$\lim_{x \to +\infty} \frac{x - \cos x}{x + \sin^2 x} = \lim_{x \to +\infty} \frac{1 + \sin x}{1 + 2\sin x \cos x}$$

As $x \to +\infty$, this approaches $\frac{1 + \sin x}{1 + \sin(2x)}$, which oscillates. However, since $\sin x$ and $\sin(2x)$ are bounded, we can analyze the dominant terms:

$$\lim_{x \to +\infty} \frac{1 + \sin x}{1 + 2\sin x \cos x} = 1$$

Therefore, $\lim_{x \to +\infty} \frac{x - \cos x}{x + \sin^2 x} = 1$

### Example 3: Taylor Series Alternative

$$\lim_{x \to 0} \frac{\cos x - 1 + \frac{x^2}{2}}{x^4}$$

This is of the form $\frac{0}{0}$. We could apply L'Hôpital's Rule repeatedly, but using Taylor series is more efficient:

The Taylor series for $\cos x$ is:
$$\cos x = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \cdots$$

Substituting:
$$\frac{\cos x - 1 + \frac{x^2}{2}}{x^4} = \frac{1 - \frac{x^2}{2} + \frac{x^4}{24} - \cdots - 1 + \frac{x^2}{2}}{x^4} = \frac{\frac{x^4}{24} - \cdots}{x^4} = \frac{1}{24} - \cdots$$

Therefore, $\lim_{x \to 0} \frac{\cos x - 1 + \frac{x^2}{2}}{x^4} = \frac{1}{24}$

## Common Pitfalls and Limitations

1. **Not checking for indeterminate forms**: L'Hôpital's Rule applies only to indeterminate forms, not to all limits involving fractions.

2. **Incorrect differentiation**: Careful differentiation of both numerator and denominator is essential.

3. **Not recognizing when to stop**: If after applying L'Hôpital's Rule, the limit is no longer indeterminate, additional applications are unnecessary and may lead to errors.

4. **Algebraic simplification first**: Sometimes algebraic simplification can avoid the need for L'Hôpital's Rule entirely.

## Comparison with Other Methods

### Taylor Series Method
For limits as $x \to 0$, Taylor series expansion often provides a more direct approach, especially for functions with well-known expansions.

### Algebraic Manipulation
Simple algebraic techniques like factoring, rationalizing, or finding common denominators may be more efficient for certain limits.

### Substitution Method
For some limits, especially those involving composed functions, a suitable substitution can simplify the problem significantly.

## Exercises

### Exercise 1: Basic Application

$$\lim_{x \to 0} \frac{\sin x - x}{x^3}$$

**Solution:**
1. We have the indeterminate form $\frac{0}{0}$
2. Apply L'Hôpital's Rule: $\lim_{x \to 0} \frac{\cos x - 1}{3x^2}$
3. Still indeterminate, apply again: $\lim_{x \to 0} \frac{-\sin x}{6x}$
4. Still indeterminate, apply once more: $\lim_{x \to 0} \frac{-\cos x}{6} = -\frac{1}{6}$

### Exercise 2: Limit at Infinity

$$\lim_{x \to +\infty} \frac{x - \cos x}{x + \sin^2 x}$$

**Solution:**
1. We have the indeterminate form $\frac{\infty}{\infty}$
2. Apply L'Hôpital's Rule: $\lim_{x \to +\infty} \frac{1 + \sin x}{1 + 2\sin x \cos x}$
3. As $x \to +\infty$, the oscillating terms are bounded, so the limit equals 1

### Exercise 3: Using Taylor Series

$$\lim_{x \to 0} \frac{\cos x - 1 - \frac{x^2}{2}}{x^4}$$

**Solution:**
1. Taylor expansion of $\cos x = 1 - \frac{x^2}{2} + \frac{x^4}{24} - \cdots$
2. Substituting: $\lim_{x \to 0} \frac{\frac{x^4}{24} - \cdots}{x^4} = \frac{1}{24}$

See:
- [[Limits]]
- [[Taylor Series]]
- [[Derivatives]]
  
  ### Exercises


1. Compute the following limits both applying De L'Hôpital rule and the Taylor formula (when possible).

	a) $\lim_{x \to 0} \frac{\sin x - x}{x^3}$
	b) $\lim_{x \to +\infty} \frac{x-\cos x}{x+\sin^2 x}$
	c) $\lim_{x \to 0} \frac{\cos x - 1 - x^2}{x^4}$

2. Compute the following limits both applying De L'Hôpital rule and the Taylor formula (when possible).

	a) $\lim_{x \to 0} \frac{\sin x - x}{x^3}$
	b) $\lim_{x \to +\infty} \frac{x - \cos x}{x + \sin^2 x}$
	c) $\lim_{x \to 0} \frac{\cos x - 1 - x^2}{x^4}$
	d) $\lim_{x \to 0^+} x^x$
	e) $\lim_{x \to +\infty} \frac{\sqrt{x}}{x}$
	f) $\lim_{x \to 0} \frac{\ln(1 + x) - x}{x^2}$
	g) $\lim_{x \to 0} \arctan(x^x)$
	h) $\lim_{x \to 0} \frac{x^2 \sin \frac{1}{x}}{\sin x}$
	i) $\lim_{x \to 0} \frac{e^x - 1 - x}{x^2}$
	j) $\lim_{x \to 0} \frac{\ln(\cos x)}{x^2}$