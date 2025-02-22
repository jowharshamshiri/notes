---
---

![[Screenshot 2025-02-20 at 16.13.06.png]]
# Series (including Taylor Series)

## Types of Series

### Infinite Series
An infinite series is an expression of the form $\sum_{n=1}^{\infty} a_n = a_1 + a_2 + a_3 + \ldots$, where $\{a_n\}$ is a sequence of numbers.

### Partial Sums
The partial sum $S_N$ of a series is defined as:
$$S_N = \sum_{n=1}^{N} a_n = a_1 + a_2 + \ldots + a_N$$

### Convergence
A series $\sum_{n=1}^{\infty} a_n$ converges to a sum $S$ if:
$$\lim_{N \to \infty} S_N = S$$
Otherwise, the series diverges.

## Important Types of Series

### 1. Geometric Series
$$\sum_{n=0}^{\infty} ar^n = a + ar + ar^2 + ar^3 + \ldots$$
- Converges to $\frac{a}{1-r}$ when $|r| < 1$
- Diverges when $|r| \geq 1$

### 2. p-Series
$$\sum_{n=1}^{\infty} \frac{1}{n^p} = 1 + \frac{1}{2^p} + \frac{1}{3^p} + \ldots$$
- Converges for $p > 1$
- Diverges for $p \leq 1$

### 3. Alternating Series
$$\sum_{n=1}^{\infty} (-1)^{n+1} a_n = a_1 - a_2 + a_3 - a_4 + \ldots$$
where $a_n > 0$. By the alternating series test, this converges if:
- $a_n$ is decreasing: $a_{n+1} \leq a_n$ for all $n$
- $\lim_{n \to \infty} a_n = 0$

### 4. Telescoping Series
Series where most terms cancel in the partial sums, leaving only a few terms. For example:
$$\sum_{n=1}^{\infty} \left( \frac{1}{n} - \frac{1}{n+1} \right) = \sum_{n=1}^{\infty} \frac{1}{n(n+1)} = 1$$

### 5. Power Series
A power series is of the form:
$$\sum_{n=0}^{\infty} a_n (x-c)^n = a_0 + a_1(x-c) + a_2(x-c)^2 + \ldots$$
where $c$ is a constant and $x$ is a variable.

#### Radius of Convergence
For a power series, there exists a non-negative number $R$ (possibly $R = 0$ or $R = \infty$) such that:
- The series converges absolutely for $|x-c| < R$
- The series diverges for $|x-c| > R$
- For $|x-c| = R$, further investigation is needed

The radius of convergence can be found using:
$$R = \frac{1}{\limsup_{n \to \infty} \sqrt[n]{|a_n|}} = \lim_{n \to \infty} \left| \frac{a_n}{a_{n+1}} \right|$$
provided the limit exists.

## Taylor and Maclaurin Series

### Taylor Series
The Taylor series of a function $f(x)$ centered at $x = a$ is:
$$f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!} (x-a)^n = f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \ldots$$
where $f^{(n)}(a)$ denotes the $n$-th derivative of $f$ evaluated at $a$.

### Maclaurin Series
A Maclaurin series is a Taylor series centered at $x = 0$:
$$f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!} x^n = f(0) + f'(0)x + \frac{f''(0)}{2!}x^2 + \ldots$$

### Convergence of Taylor Series
A Taylor series converges to the function $f(x)$ in some neighborhood of $x = a$ if:
$$\lim_{n \to \infty} R_n(x) = 0$$
where $R_n(x)$ is the remainder term:
$$R_n(x) = f(x) - \sum_{k=0}^{n-1} \frac{f^{(k)}(a)}{k!} (x-a)^k$$

### Taylor's Remainder Theorem
The remainder term can be expressed as:
$$R_n(x) = \frac{f^{(n)}(\xi)}{n!} (x-a)^n$$
where $\xi$ is some point between $a$ and $x$.

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

## Operations with Series

### Addition/Subtraction
If $\sum a_n = A$ and $\sum b_n = B$, then $\sum (a_n \pm b_n) = A \pm B$.

### Multiplication by Constant
If $\sum a_n = A$, then $\sum c \cdot a_n = c \cdot A$ for any constant $c$.

### Cauchy Product (Multiplication of Series)
If $\sum a_n = A$ and $\sum b_n = B$, then:
$$\sum_{n=0}^{\infty} c_n = \sum_{n=0}^{\infty} \sum_{k=0}^{n} a_k b_{n-k} = A \cdot B$$
where $c_n = \sum_{k=0}^{n} a_k b_{n-k}$.

### Term-by-Term Differentiation
If $f(x) = \sum_{n=0}^{\infty} a_n x^n$ within its radius of convergence, then:
$$f'(x) = \sum_{n=1}^{\infty} n a_n x^{n-1}$$

### Term-by-Term Integration
If $f(x) = \sum_{n=0}^{\infty} a_n x^n$ within its radius of convergence, then:
$$\int f(x) \, dx = C + \sum_{n=0}^{\infty} \frac{a_n}{n+1} x^{n+1}$$
where $C$ is the constant of integration.

## Approximation Using Taylor Series

### Taylor Polynomial of Degree n
The Taylor polynomial of degree $n$ for $f(x)$ centered at $x = a$ is:
$$P_n(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!} (x-a)^k$$

### Error Bounds
The maximum error when approximating $f(x)$ by $P_n(x)$ on an interval $[a, b]$ is bounded by:
$$|f(x) - P_n(x)| \leq \frac{M}{(n+1)!} |x-a|^{n+1}$$
where $M$ is an upper bound for $|f^{(n+1)}(\xi)|$ on the interval.

## Applications of Series

### Numerical Approximation
Taylor series can be used to approximate functions to arbitrary precision:
$$f(x) \approx \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!} (x-a)^k$$

### Limits Calculation
Taylor series can be used to calculate limits of indeterminate forms:
$$\lim_{x \to 0} \frac{\sin x - x}{x^3} = \lim_{x \to 0} \frac{x - \frac{x^3}{6} + O(x^5) - x}{x^3} = \lim_{x \to 0} \frac{-\frac{x^3}{6} + O(x^5)}{x^3} = -\frac{1}{6}$$

### Integration of Difficult Functions
Taylor series can be used to integrate functions that don't have elementary antiderivatives:
$$\int e^{-x^2} \, dx = \int \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{n!} \, dx = C + \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{n!(2n+1)}$$

## Worked Examples

### Example 1: Finding the Sum of an Infinite Series
Find the sum of the series $\sum_{n=1}^{\infty} \frac{3^n}{n!}$.

Solution:
This can be related to the Maclaurin series for $e^x$:
$$e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \ldots$$

Substituting $x = 3$:
$$e^3 = \sum_{n=0}^{\infty} \frac{3^n}{n!} = 1 + 3 + \frac{3^2}{2!} + \frac{3^3}{3!} + \ldots$$

Therefore:
$$\sum_{n=1}^{\infty} \frac{3^n}{n!} = e^3 - 1 \approx 20.0855 - 1 = 19.0855$$

### Example 2: Taylor Series Expansion
Find the Taylor series for $f(x) = \ln(1+x)$ centered at $x = 0$, and determine its radius of convergence.

Solution:
Computing the derivatives:
- $f(x) = \ln(1+x)$, $f(0) = \ln(1) = 0$
- $f'(x) = \frac{1}{1+x}$, $f'(0) = 1$
- $f''(x) = \frac{-1}{(1+x)^2}$, $f''(0) = -1$
- $f'''(x) = \frac{2}{(1+x)^3}$, $f'''(0) = 2$
- $f^{(4)}(x) = \frac{-6}{(1+x)^4}$, $f^{(4)}(0) = -6$

A pattern emerges: $f^{(n)}(0) = (-1)^{n+1}(n-1)!$ for $n \geq 1$

Substituting into the Taylor series formula:
$\ln(1+x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!} x^n = 0 + x - \frac{x^2}{2} + \frac{x^3}{3} - \frac{x^4}{4} + \ldots$

Which can be written as:
$\ln(1+x) = \sum_{n=1}^{\infty} \frac{(-1)^{n+1}x^n}{n}$

To find the radius of convergence, use the ratio test:
$\lim_{n \to \infty} \left|\frac{a_{n+1}}{a_n}\right| = \lim_{n \to \infty} \left|\frac{(-1)^{n+2}x^{n+1}/(n+1)}{(-1)^{n+1}x^n/n}\right| = \lim_{n \to \infty} \left|\frac{n}{n+1} \cdot x\right| = |x|$

The series converges when $|x| < 1$, diverges when $|x| > 1$, and requires further investigation when $|x| = 1$.

For $x = 1$, the series becomes the alternating harmonic series $\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n}$, which converges to $\ln(2)$.

For $x = -1$, the series becomes $\sum_{n=1}^{\infty} \frac{(-1)^{2n+1}}{n} = -\sum_{n=1}^{\infty} \frac{1}{n}$, which is the negative of the harmonic series and diverges.

Therefore, the radius of convergence is $R = 1$, and the interval of convergence is $-1 < x \leq 1$.

### Example 3: Binomial Series Expansion
Find the first few terms of the binomial expansion for $(1 + x)^{1/2}$ and determine its radius of convergence.

Solution:
Using the binomial series formula:
$(1+x)^{\alpha} = \sum_{n=0}^{\infty} \binom{\alpha}{n} x^n$

where $\binom{\alpha}{n} = \frac{\alpha(\alpha-1)(\alpha-2)\ldots(\alpha-n+1)}{n!}$

For $\alpha = 1/2$:
- $\binom{1/2}{0} = 1$
- $\binom{1/2}{1} = \frac{1/2}{1!} = \frac{1}{2}$
- $\binom{1/2}{2} = \frac{(1/2)(-1/2)}{2!} = \frac{-1}{8}$
- $\binom{1/2}{3} = \frac{(1/2)(-1/2)(-3/2)}{3!} = \frac{1}{16}$
- $\binom{1/2}{4} = \frac{(1/2)(-1/2)(-3/2)(-5/2)}{4!} = \frac{-5}{128}$

Therefore:
$(1+x)^{1/2} = 1 + \frac{x}{2} - \frac{x^2}{8} + \frac{x^3}{16} - \frac{5x^4}{128} + \ldots$

The radius of convergence is $R = 1$, as this is a binomial series with a non-integer exponent.

### Example 4: Using Taylor Series to Evaluate a Limit
Evaluate the limit $\lim_{x \to 0} \frac{\cos(x) - 1 + \frac{x^2}{2}}{x^4}$

Solution:
Using the Maclaurin series for $\cos(x)$:
$\cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \ldots$

Substitute into the limit:
$\lim_{x \to 0} \frac{\cos(x) - 1 + \frac{x^2}{2}}{x^4} = \lim_{x \to 0} \frac{1 - \frac{x^2}{2} + \frac{x^4}{24} - \ldots - 1 + \frac{x^2}{2}}{x^4}$
$= \lim_{x \to 0} \frac{\frac{x^4}{24} - \frac{x^6}{720} + \ldots}{x^4} = \lim_{x \to 0} \left(\frac{1}{24} - \frac{x^2}{720} + \ldots\right) = \frac{1}{24}$

### Example 5: Using Taylor Series for Integration
Compute $\int_0^1 \frac{\sin(x^2)}{x} \, dx$

Solution:
First, use the Maclaurin series for $\sin(x)$:
$\sin(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \ldots$

Substitute $u = x^2$:
$\sin(x^2) = x^2 - \frac{x^6}{6} + \frac{x^{10}}{120} - \ldots$

Divide by $x$:
$\frac{\sin(x^2)}{x} = x - \frac{x^5}{6} + \frac{x^9}{120} - \ldots$

Now integrate term by term:
$\int_0^1 \frac{\sin(x^2)}{x} \, dx = \int_0^1 \left(x - \frac{x^5}{6} + \frac{x^9}{120} - \ldots\right) \, dx$
$= \left.\left(\frac{x^2}{2} - \frac{x^6}{36} + \frac{x^{10}}{1200} - \ldots\right)\right|_0^1$
$= \frac{1}{2} - \frac{1}{36} + \frac{1}{1200} - \ldots$

This series converges rapidly, and we can approximate the integral with just a few terms:
$\int_0^1 \frac{\sin(x^2)}{x} \, dx \approx 0.5 - 0.02778 + 0.00083 - \ldots \approx 0.47305$

## Strategy for Solving Series Problems

1. **Identification**:
   - Recognize common series types (geometric, p-series, alternating)
   - Identify if a series can be transformed into a known form
   - For Taylor series, determine the function and center point

2. **For Finding the Sum**:
   - Use closed-form formulas for standard series
   - Consider telescoping properties
   - Transform into a known series if possible
   - Use partial fractions for rational functions

3. **For Taylor/Maclaurin Series**:
   - Compute successive derivatives
   - Identify patterns in the derivatives
   - Use known series for standard functions
   - Combine operations on existing series

4. **For Convergence Analysis**:
   - Check the necessary condition: $\lim_{n \to \infty} a_n = 0$
   - Determine the radius and interval of convergence for power series
   - For alternating series, verify decreasing terms
   - For positive series, apply the appropriate convergence test

5. **For Applications**:
   - Use series to approximate numerical values
   - Apply series to calculate limits
   - Use term-by-term differentiation or integration
   - Approximate integrals that lack elementary antiderivatives

See Also:
- [[Convergence Tests]]
- [[Sequences]]
- [[Power Series]]
- [[Taylor and Maclaurin Series]]
- [[Binomial Expansion]]
### Exercises

1. Given the series $\sum_{k=2}^{\infty} \frac{(-1)^k k^2}{k^3-2}$

2. Prove that $1+2^2+3^2+\cdots+n^2 = \frac{n(n+1)(2n+1)}{6}$.

3. Establish if the series $\sum_{n=1}^{\infty} a_n$ with $a_n = \frac{3^n}{n!+1}$ is absolutely convergent, convergent, divergent or not convergent.