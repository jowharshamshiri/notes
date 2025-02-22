![[Screenshot 2025-02-20 at 13.44.51.png]]
# Convergence Tests

## Infinite Series Fundamentals

An infinite series is an expression of the form $\sum_{n=1}^{\infty} a_n = a_1 + a_2 + a_3 + \ldots$, where $a_n$ is the general term of the sequence.

### Sequence of Partial Sums
For a series $\sum_{n=1}^{\infty} a_n$, the sequence of partial sums $\{S_N\}$ is defined as:
$$S_N = \sum_{n=1}^{N} a_n = a_1 + a_2 + \ldots + a_N$$

### Convergence Definition
A series $\sum_{n=1}^{\infty} a_n$ converges if the sequence of partial sums $\{S_N\}$ converges to a finite limit $S$. That is:
$$\lim_{N \to \infty} S_N = S$$

If this limit doesn't exist or is infinite, the series diverges.

### Necessary Condition for Convergence
If $\sum_{n=1}^{\infty} a_n$ converges, then $\lim_{n \to \infty} a_n = 0$.

**Note**: This is a necessary but not sufficient condition. If $\lim_{n \to \infty} a_n \neq 0$, the series diverges. However, if $\lim_{n \to \infty} a_n = 0$, the series may or may not converge.

## Convergence Tests for Series with Positive Terms

### 1. Comparison Test
If $0 \leq a_n \leq b_n$ for all $n \geq N$ (some fixed $N$), then:
- If $\sum b_n$ converges, then $\sum a_n$ converges.
- If $\sum a_n$ diverges, then $\sum b_n$ diverges.

### 2. Limit Comparison Test
If $a_n > 0$, $b_n > 0$ for all sufficiently large $n$, and $\lim_{n \to \infty} \frac{a_n}{b_n} = L$ where $0 < L < \infty$, then:
- $\sum a_n$ and $\sum b_n$ either both converge or both diverge.

### 3. Ratio Test
For a series $\sum a_n$ with positive terms, compute $\lim_{n \to \infty} \frac{a_{n+1}}{a_n} = L$:
- If $L < 1$, the series converges absolutely.
- If $L > 1$ or $L = \infty$, the series diverges.
- If $L = 1$, the test is inconclusive.

### 4. Root Test
For a series $\sum a_n$ with positive terms, compute $\lim_{n \to \infty} \sqrt[n]{a_n} = L$:
- If $L < 1$, the series converges absolutely.
- If $L > 1$ or $L = \infty$, the series diverges.
- If $L = 1$, the test is inconclusive.

### 5. Integral Test
If $f(x)$ is a positive, continuous, decreasing function for $x \geq k$ (for some $k$), and $f(n) = a_n$ for integers $n \geq k$, then:
- $\sum_{n=k}^{\infty} a_n$ converges if and only if $\int_{k}^{\infty} f(x) \, dx$ converges.

### 6. p-Series Test
The series $\sum_{n=1}^{\infty} \frac{1}{n^p}$:
- Converges if $p > 1$
- Diverges if $p \leq 1$

### 7. Cauchy Condensation Test
If ${a_n}$ is a positive, non-increasing sequence, then:
- $\sum_{n=1}^{\infty} a_n$ converges if and only if $\sum_{n=0}^{\infty} 2^n a_{2^n}$ converges.

## Tests for Series with Terms of Any Sign

### 1. Absolute Convergence Test
If $\sum_{n=1}^{\infty} |a_n|$ converges, then $\sum_{n=1}^{\infty} a_n$ also converges, and the series is said to be absolutely convergent.

### 2. Alternating Series Test (Leibniz's Test)
If $\{a_n\}$ is a sequence such that:
- $a_n > 0$ for all $n$
- $a_{n+1} \leq a_n$ for all $n$ (non-increasing)
- $\lim_{n \to \infty} a_n = 0$

Then the alternating series $\sum_{n=1}^{\infty} (-1)^{n+1} a_n$ converges.

### 3. Dirichlet's Test
If $\{a_n\}$ is a monotonic sequence converging to 0, and the partial sums of $\{b_n\}$ are bounded (i.e., $|\sum_{j=1}^{n} b_j| \leq M$ for all $n$ and some constant $M$), then:
$$\sum_{n=1}^{\infty} a_n b_n \text{ converges}$$

### 4. Abel's Test
If $\sum_{n=1}^{\infty} b_n$ converges and $\{a_n\}$ is a monotonic bounded sequence, then:
$$\sum_{n=1}^{\infty} a_n b_n \text{ converges}$$

## Special Series and Their Convergence

### Geometric Series
$$\sum_{n=0}^{\infty} ar^n = a + ar + ar^2 + ar^3 + \ldots$$
- Converges to $\frac{a}{1-r}$ when $|r| < 1$
- Diverges when $|r| \geq 1$

### Harmonic Series
$$\sum_{n=1}^{\infty} \frac{1}{n} = 1 + \frac{1}{2} + \frac{1}{3} + \ldots$$
- Diverges (p = 1)

### p-Series
$$\sum_{n=1}^{\infty} \frac{1}{n^p} = 1 + \frac{1}{2^p} + \frac{1}{3^p} + \ldots$$
- Converges for $p > 1$
- Diverges for $p \leq 1$

### Alternating Harmonic Series
$$\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \ldots$$
- Converges to $\ln 2$ (by Leibniz's test)

## Asymptotic Comparison for Complex Series

When dealing with complex series, it's often useful to compare with a known series using asymptotic comparison:

### Asymptotic Comparison Test
If $\lim_{n \to \infty} \frac{a_n}{b_n} = L$ where $0 < L < \infty$, then:
- $\sum a_n$ and $\sum b_n$ either both converge or both diverge.

This is similar to the limit comparison test but is often used with more complex terms where direct comparison is difficult.

## Worked Examples

### Example 1: Ratio Test for Factorial Series
Determine if the series $\sum_{n=1}^{\infty} \frac{2^n}{n!}$ converges.

Solution:
Using the ratio test:
$$\lim_{n \to \infty} \frac{a_{n+1}}{a_n} = \lim_{n \to \infty} \frac{2^{n+1}/(n+1)!}{2^n/n!} = \lim_{n \to \infty} \frac{2^{n+1}}{2^n} \cdot \frac{n!}{(n+1)!} = \lim_{n \to \infty} 2 \cdot \frac{1}{n+1} = 0$$

Since the limit is 0 (which is < 1), the series converges absolutely.

### Example 2: Comparison Test with Square Root
Establish if the series $\sum_{n=1}^{\infty} (\sqrt{n+1} - \sqrt{n})$ converges.

Solution:
First, rationalize to find an equivalent form:
$$\sqrt{n+1} - \sqrt{n} = \frac{(\sqrt{n+1} - \sqrt{n})(\sqrt{n+1} + \sqrt{n})}{(\sqrt{n+1} + \sqrt{n})} = \frac{(n+1) - n}{(\sqrt{n+1} + \sqrt{n})} = \frac{1}{\sqrt{n+1} + \sqrt{n}}$$

As $n \to \infty$, $\sqrt{n+1} + \sqrt{n} \sim 2\sqrt{n}$, so:
$$\sqrt{n+1} - \sqrt{n} \sim \frac{1}{2\sqrt{n}}$$

Compare with $\frac{1}{\sqrt{n}}$ using the limit comparison test:
$$\lim_{n \to \infty} \frac{\sqrt{n+1} - \sqrt{n}}{\frac{1}{\sqrt{n}}} = \lim_{n \to \infty} \frac{\sqrt{n}}{\sqrt{n+1} + \sqrt{n}} = \lim_{n \to \infty} \frac{1}{1 + \sqrt{\frac{n+1}{n}}} = \frac{1}{2}$$

Since $\sum_{n=1}^{\infty} \frac{1}{\sqrt{n}}$ diverges (p-series with p = 1/2 < 1), and the limit is a finite positive number, the original series also diverges.

### Example 3: Alternating Series
Establish if the series $\sum_{k=2}^{\infty} \frac{(-1)^k k^2}{k^3-2}$ converges.

Solution:
Step 1: Check if the terms approach zero
$$\lim_{k \to \infty} \frac{k^2}{k^3-2} = \lim_{k \to \infty} \frac{k^2}{k^3(1-\frac{2}{k^3})} = \lim_{k \to \infty} \frac{1}{k} = 0$$

Step 2: Check for absolute convergence
For absolute convergence, consider $\sum_{k=2}^{\infty} \frac{k^2}{k^3-2}$

As $k \to \infty$, $\frac{k^2}{k^3-2} \sim \frac{k^2}{k^3} = \frac{1}{k}$

Using the limit comparison test with the harmonic series:
$$\lim_{k \to \infty} \frac{\frac{k^2}{k^3-2}}{\frac{1}{k}} = \lim_{k \to \infty} \frac{k \cdot k^2}{k^3-2} = \lim_{k \to \infty} \frac{k^3}{k^3-2} = 1$$

Since the harmonic series diverges, the series $\sum_{k=2}^{\infty} \frac{k^2}{k^3-2}$ also diverges, meaning the original alternating series is not absolutely convergent.

Step 3: Apply the alternating series test
To check if the series is conditionally convergent, we need to verify if $\frac{k^2}{k^3-2}$ is decreasing for $k \geq 2$.

The derivative of $f(x) = \frac{x^2}{x^3-2}$ is:
$$f'(x) = \frac{2x(x^3-2) - 3x^2 \cdot x^2}{(x^3-2)^2} = \frac{2x^4-4x-3x^4}{(x^3-2)^2} = \frac{-x^4-4x}{(x^3-2)^2}$$

For $x > 0$, this derivative is negative, indicating that $f(x)$ is decreasing for $k \geq 2$.

Since the terms approach zero and form a decreasing positive sequence, by the alternating series test, the series $\sum_{k=2}^{\infty} \frac{(-1)^k k^2}{k^3-2}$ converges.

Therefore, the series is conditionally convergent.

### Example 4: Ratio Test for Complex Expression
Determine if the series $\sum_{n=1}^{\infty} \frac{n^2}{2^n}$ converges.

Solution:
Using the ratio test:
$$\lim_{n \to \infty} \frac{a_{n+1}}{a_n} = \lim_{n \to \infty} \frac{(n+1)^2/2^{n+1}}{n^2/2^n} = \lim_{n \to \infty} \frac{(n+1)^2}{n^2} \cdot \frac{1}{2} = \lim_{n \to \infty} \frac{1}{2} \cdot \left(1 + \frac{1}{n}\right)^2 = \frac{1}{2}$$

Since the limit is 1/2 (< 1), the series converges absolutely.

### Example 5: Testing Series with Logarithm
Establish if the series $\sum_{n=1}^{\infty} \frac{1}{n} - \ln\left(1+\frac{1}{n}\right)$ converges.

Solution:
Step 1: Use the Taylor expansion of $\ln(1+x)$ around $x = 0$:
$$\ln(1+x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \ldots$$

Substituting $x = \frac{1}{n}$:
$$\ln\left(1+\frac{1}{n}\right) = \frac{1}{n} - \frac{1}{2n^2} + \frac{1}{3n^3} - \ldots$$

Step 2: Find the difference:
$$\frac{1}{n} - \ln\left(1+\frac{1}{n}\right) = \frac{1}{n} - \left(\frac{1}{n} - \frac{1}{2n^2} + \frac{1}{3n^3} - \ldots\right) = \frac{1}{2n^2} - \frac{1}{3n^3} + \ldots$$

Step 3: Compare with a known convergent series
For large $n$, the dominant term is $\frac{1}{2n^2}$, which can be compared with $\frac{1}{n^2}$.

$$\lim_{n \to \infty} \frac{\frac{1}{n} - \ln\left(1+\frac{1}{n}\right)}{\frac{1}{n^2}} = \lim_{n \to \infty} \frac{\frac{1}{2n^2} - \frac{1}{3n^3} + \ldots}{\frac{1}{n^2}} = \frac{1}{2}$$

Since $\sum_{n=1}^{\infty} \frac{1}{n^2}$ converges (p-series with p = 2 > 1), and the limit is a finite positive number, the original series also converges.

## Strategic Approach to Convergence Problems

1. **Examine the General Term**:
   - Does $a_n \to 0$ as $n \to \infty$? If not, the series diverges.
   - Is $a_n$ always positive, always negative, or does it change sign?
   - Does $a_n$ involve factorial, exponential, or power functions?

2. **Choose the Appropriate Test**:
   - For positive terms, try ratio test for factorials, exponentials
   - For alternating series, check Leibniz's test conditions
   - For complex expressions, try asymptotic comparison
   - For rational functions, compare with p-series

3. **When Tests are Inconclusive**:
   - If one test is inconclusive, try another
   - For series with ratio = 1, try the root test or direct comparison
   - Break the series into parts if needed

4. **For Special Cases**:
   - Recognize geometric series: $\sum r^n$ converges when $|r| < 1$
   - Identify p-series: $\sum \frac{1}{n^p}$ converges when $p > 1$
   - Look for telescoping series where most terms cancel

5. **Verification**:
   - Double-check your work, especially with complex manipulations
   - Confirm that all conditions of the test you're using are satisfied

See Also:
- [[Series]]
- [[Sequences]]
- [[Improper Integrals]]
- [[Power Series]]
- [[Taylor and Maclaurin Series]]
### Exercises

1. Consider the series $\sum_{n=1}^{\infty} \sqrt{n+1} - \sqrt{n}$
   a) Verify that $a_n = \sqrt{n+1} - \sqrt{n}$ satisfies $\lim_{n \to \infty} a_n = 0$
   b) Prove that the series diverges.

2. Consider the series $\sum_{n=1}^{\infty} \frac{(n^2 + 1)}{2^n}$
   a) Verify that $a_n = \frac{(n^2+1)}{2^n}$ satisfies $\lim_{n \to \infty} a_n = 0$
   b) Prove that the series converges by using the ratio test.

3. Consider the series $\sum_{n=1}^{\infty} \frac{(n^2 + 1)}{n^2\sqrt{n+1}}$
   a) Verify that $a_n = \frac{(n^2+1)}{n^2\sqrt{n+1}}$ satisfies $\lim_{n \to \infty} a_n = 0$
   b) Prove that the series diverges by using an asymptotic comparison with $\sum_{n=1}^{\infty} \frac{1}{\sqrt{n}}$.

4. (Written Test, Analysis - TEST 2) Given the series $\sum_{k=2}^{\infty} a_k$ with $a_k = \frac{k^2-\sqrt{k}}{k^3-2k}$
   a) Establish if $a_k$ tends to zero as $k$ tends to infinity.
   b) Establish if the series is absolutely convergent, convergent, divergent or not convergent.

5. Consider the series $\sum_{n=1}^{\infty}\left(1-\cos\left(\frac{1}{n}\right)\right)$. Mark true or false in the following sentences:
   a) The series is absolutely convergent.
   b) The series is convergent.
   c) The series has the same character of the series $\sum_{n=1}^{\infty}\frac{1}{n^2}$
   d) The series diverges.

6. Study the character of the infinite series $\sum_{n=1}^{\infty} n \ln\left(1 + \frac{1}{n^3}\right)$.

7. Given the series $\sum_{k=1}^{+\infty} \frac{k^2-1}{k^4+3k^2+k-1}$
   a) Establish if the series has positive terms.
   b) Prove that the series diverges.

8. Given the series $\sum_{k=2}^{+\infty} a_k$ with $a_k = \frac{k \ln k}{k^2+2}$
   a) Establish if $a_k$ tends to zero as $k$ tends to infinity.
   b) Establish if the series is absolutely convergent, convergent, divergent or not convergent.

9. Given the series $\sum_{k=1}^{+\infty} \frac{k^2-1}{k^{3/2}+k}$
   a) Establish if the series has positive terms.
   b) Prove that the series diverges.

10. Given the series $\sum_{k=1}^{+\infty} (-1)^k \frac{k^2}{k^4+1}$
    a) Establish if the series has positive terms for every $k$.
    b) Establish if the series is absolutely convergent, convergent, divergent or not convergent.

11. TEST 2, Question 3: Establish if the series $\sum_{k=2}^{\infty} \frac{(-1)^k k^2}{k^3-2}$
    a) Has positive terms for every $k$.
    b) Is absolutely convergent, convergent, divergent or not convergent.

12. Written test 2022-4-18, Question 1: Analyze the convergence of $\sum_{m=1}^{\infty} \frac{x^m}{m}(1+\frac{1}{m})$ using the asymptotic comparison test and the ratio test.

13. Establish if the following sequences are convergent, divergent or indeterminate:
    a) $b_n = \frac{1}{1+\sqrt{n}}$
    b) $c_n = \frac{2n-1}{3n-1}$
    c) $d_n = \frac{6n^3-n^2+1}{n^3+5}$
    d) $s_n = \sqrt{n^2+2n-1} - \sqrt{n^2+2}$
    e) $t_n = \sqrt{n^2+1} - n$
    f) $u_n = (\sqrt{n+1}-\sqrt{n+2})\sqrt{n}$
    g) $v_n = \sqrt[3]{n} - \sqrt[3]{n+1}$
    h) $x_n = \frac{n^2-1}{n+1} - \frac{1}{n}\frac{n^2-2}{3n+1}$
    i) $y_n = \sqrt{n} - n$
    j) $z_n = \frac{\sqrt{n^2+n+1}}{\sqrt{n+1}}$

14. Given the series $\sum_{k=1}^{+\infty} \frac{(-1)^k k^2}{2^k+1}$:
    a) Establish if the series has positive terms.
    b) Prove that the series absolutely converges.

15. Given the series $\sum_{k=1}^{+\infty} \frac{k^2-1}{k^4+3k^2+k-1}$:
    a) Establish if the series has positive terms.
    b) Prove that the series diverges.

16. Given the series $\sum_{k=1}^{+\infty} \frac{2^k}{2^k+1}$:
    a) Establish if the series has positive terms.
    b) Prove that the series diverges.

17. Given the series $\sum_{k=1}^{+\infty} \frac{k!}{(k+2)!+1}$:
    a) Establish if the series has positive terms.
    b) Prove that the series converges.

18. Establish if the series $\sum_{n=1}^{\infty} a_n$ with $a_n = \frac{2^n}{n^3+1}$ is absolutely convergent, convergent, divergent or not convergent.

19. Study the absolute and simple convergence of the following series:
    a) $\sum_{n=1}^{\infty} \frac{1}{n} - \ln(1+\frac{1}{n})$
    b) $\sum_{n=1}^{\infty} \frac{(-1)^n n^5}{2^n}$
    c) $\sum_{n=1}^{\infty} (-1)^n \sin\frac{1}{n}$
    d) $\sum_{n=1}^{\infty} \sqrt{n+3} - \sqrt{n}$
    e) $\sum_{k=1}^{\infty} \frac{5k-1}{3k^2+2}$
    f) $\sum_{n=1}^{\infty} \frac{n}{2^n}$
    g) $\sum_{n=1}^{\infty} \frac{2^n}{n!}$
    h) $\sum_{n=1}^{\infty} \frac{n}{2^n}$