![[Screenshot 2025-02-20 at 13.44.18.png]]

## Definition and Concept

A Taylor series is a representation of a function as an infinite sum of terms calculated from the values of the function's derivatives at a single point. It provides a way to approximate functions using polynomials.

### Taylor Series Formula

The Taylor series of a function f(x) centered at x = a is:

$$f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!} (x-a)^n = f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \ldots$$

where $f^{(n)}(a)$ denotes the nth derivative of f evaluated at point a.

### Maclaurin Series

A Maclaurin series is a special case of a Taylor series centered at x = 0:

$$f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!} x^n = f(0) + f'(0)x + \frac{f''(0)}{2!}x^2 + \ldots$$

## Convergence of Taylor Series

A Taylor series converges to the function f(x) in some neighborhood of x = a if:

$$\lim_{n \to \infty} R_n(x) = 0$$

where $R_n(x)$ is the remainder term.

### Taylor's Remainder Theorem

The remainder term can be expressed as:

$$R_n(x) = \frac{f^{(n)}(\xi)}{n!} (x-a)^n$$

where $\xi$ is some point between a and x.

## Common Taylor/Maclaurin Series

### Exponential Function
$$e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \ldots$$
Convergence: For all $x \in \mathbb{R}$ (radius of convergence $R = \infty$)

### Sine Function
$$\sin x = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{(2n+1)!} = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \ldots$$
Convergence: For all $x \in \mathbb{R}$ (radius of convergence $R = \infty$)

### Cosine Function
$$\cos x = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{(2n)!} = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \ldots$$
Convergence: For all $x \in \mathbb{R}$ (radius of convergence $R = \infty$)

### Natural Logarithm
$$\ln(1+x) = \sum_{n=1}^{\infty} \frac{(-1)^{n+1} x^n}{n} = x - \frac{x^2}{2} + \frac{x^3}{3} - \ldots$$
Convergence: For $-1 < x \leq 1$ (radius of convergence $R = 1$)

### Arctangent Function
$$\arctan x = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{2n+1} = x - \frac{x^3}{3} + \frac{x^5}{5} - \ldots$$
Convergence: For $-1 \leq x \leq 1$ (radius of convergence $R = 1$)

### Binomial Series
$$(1+x)^{\alpha} = \sum_{n=0}^{\infty} \binom{\alpha}{n} x^n = 1 + \alpha x + \frac{\alpha(\alpha-1)}{2!}x^2 + \ldots$$
where $\binom{\alpha}{n} = \frac{\alpha(\alpha-1)(\alpha-2)\ldots(\alpha-n+1)}{n!}$

Convergence: For $|x| < 1$ (radius of convergence $R = 1$), and also for $x = 1$ if $\alpha > 0$, or for $x = -1$ if $\alpha > -1$

## Applications of Taylor Series

### Approximation of Functions
Taylor polynomials can be used to approximate functions to arbitrary precision within their radius of convergence:
$$f(x) \approx \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!} (x-a)^k$$

### Error Estimation
The maximum error when approximating $f(x)$ by the nth-degree Taylor polynomial on an interval $[a, b]$ is bounded by:
$$|f(x) - P_n(x)| \leq \frac{M}{(n+1)!} |x-a|^{n+1}$$
where $M$ is an upper bound for $|f^{(n+1)}(\xi)|$ on the interval.

### Calculation of Limits
Taylor series can be used to calculate limits of indeterminate forms:
$$\lim_{x \to 0} \frac{\sin x - x}{x^3} = \lim_{x \to 0} \frac{x - \frac{x^3}{6} + O(x^5) - x}{x^3} = \lim_{x \to 0} \frac{-\frac{x^3}{6} + O(x^5)}{x^3} = -\frac{1}{6}$$

### Integration of Difficult Functions
Taylor series can be used to integrate functions that don't have elementary antiderivatives:
$$\int e^{-x^2} \, dx = \int \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{n!} \, dx = C + \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{n!(2n+1)}$$

## Connection to Power Series

Taylor series are a specific type of power series where the coefficients are determined by the derivatives of a function at a specific point. This connection highlights how Taylor series bridge differential calculus and the theory of infinite series.

## Relationship to Differential Equations

Taylor series can be used to find solutions to differential equations, particularly when other methods are difficult to apply. The coefficients in the series can often be determined recursively from the differential equation.

## See Also
- [[../../../analysis/sequences_and_series/Power Series]]
- [[../../../analysis/sequences_and_series/Series]]
- [[L'Hôpital's Rule]]
- [[Derivatives]]