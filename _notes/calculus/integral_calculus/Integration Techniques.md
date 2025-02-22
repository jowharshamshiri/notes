---
---

# Integration Techniques

## Basic Integration Rules

### Power Rule
$$\int x^n \, dx = \frac{x^{n+1}}{n+1} + C \quad (n \neq -1)$$

### Exponential Functions
$$\int e^x \, dx = e^x + C$$
$$\int a^x \, dx = \frac{a^x}{\ln a} + C$$

### Logarithmic Functions
$$\int \ln x \, dx = x \ln x - x + C$$
$$\int \log_a x \, dx = \frac{x \ln x - x}{\ln a} + C$$

### Trigonometric Functions
$$\int \sin x \, dx = -\cos x + C$$
$$\int \cos x \, dx = \sin x + C$$
$$\int \tan x \, dx = -\ln|\cos x| + C = \ln|\sec x| + C$$
$$\int \cot x \, dx = \ln|\sin x| + C$$
$$\int \sec x \, dx = \ln|\sec x + \tan x| + C$$
$$\int \csc x \, dx = \ln|\csc x - \cot x| + C$$

### Inverse Trigonometric Functions
$$\int \frac{1}{\sqrt{1-x^2}} \, dx = \arcsin x + C$$
$$\int \frac{1}{1+x^2} \, dx = \arctan x + C$$
$$\int \frac{1}{|x|\sqrt{x^2-1}} \, dx = \text{arcsec } |x| + C$$

### Hyperbolic Functions
$$\int \sinh x \, dx = \cosh x + C$$
$$\int \cosh x \, dx = \sinh x + C$$
$$\int \tanh x \, dx = \ln(\cosh x) + C$$
$$\int \coth x \, dx = \ln|\sinh x| + C$$

## Advanced Integration Techniques

### 1. U-Substitution (Substitution Method)

The substitution method works by replacing a complicated integral with a simpler one through a change of variable.

#### Procedure:
1. Identify a substitution $u = g(x)$ such that $du = g'(x) \, dx$
2. Rewrite the integral in terms of $u$
3. Integrate with respect to $u$
4. Substitute back to express the answer in terms of $x$

#### Example:
$$\int x \sin(x^2) \, dx$$

Let $u = x^2$, then $du = 2x \, dx$ or $x \, dx = \frac{du}{2}$

$$\int x \sin(x^2) \, dx = \int \sin(u) \frac{du}{2} = \frac{1}{2} \int \sin(u) \, du = -\frac{1}{2} \cos(u) + C = -\frac{1}{2} \cos(x^2) + C$$

### 2. Integration by Parts

Based on the product rule for derivatives, this technique is useful for integrating products of functions.

#### Formula:
$$\int u \, dv = uv - \int v \, du$$

where $u$ and $dv$ are chosen parts of the integrand.

#### Strategy for choosing $u$ and $dv$:
Remember the LIATE mnemonic (in descending priority):
- L: Logarithmic functions
- I: Inverse trigonometric functions
- A: Algebraic functions
- T: Trigonometric functions
- E: Exponential functions

Choose $u$ from the earlier part of this list and $dv$ from the later part.

#### Example:
$$\int x \ln x \, dx$$

Let $u = \ln x$ and $dv = x \, dx$, then $du = \frac{1}{x} \, dx$ and $v = \frac{x^2}{2}$

$$\int x \ln x \, dx = \ln x \cdot \frac{x^2}{2} - \int \frac{x^2}{2} \cdot \frac{1}{x} \, dx = \frac{x^2 \ln x}{2} - \int \frac{x}{2} \, dx = \frac{x^2 \ln x}{2} - \frac{x^2}{4} + C$$

### 3. Partial Fractions

This technique is used for integrating rational functions (ratios of polynomials).

#### Procedure:
1. Ensure the numerator's degree is less than the denominator's; otherwise, perform polynomial long division
2. Factor the denominator into linear and irreducible quadratic factors
3. Decompose the rational function into a sum of simpler fractions
4. Integrate each simple fraction separately

#### For Distinct Linear Factors:
If the denominator is $(x-a)(x-b)...(x-k)$, then:
$$\frac{P(x)}{(x-a)(x-b)...(x-k)} = \frac{A}{x-a} + \frac{B}{x-b} + ... + \frac{K}{x-k}$$

#### For Repeated Linear Factors:
If the denominator has $(x-a)^m$, then:
$$\frac{P(x)}{(x-a)^m} = \frac{A_1}{x-a} + \frac{A_2}{(x-a)^2} + ... + \frac{A_m}{(x-a)^m}$$

#### For Irreducible Quadratic Factors:
If the denominator has $(x^2+px+q)$ (irreducible), then:
$$\frac{P(x)}{x^2+px+q} = \frac{Ax+B}{x^2+px+q}$$

#### Example:
$$\int \frac{dx}{x(x-2)}$$

Decompose into partial fractions:
$$\frac{1}{x(x-2)} = \frac{A}{x} + \frac{B}{x-2}$$

Multiply both sides by $x(x-2)$:
$$1 = A(x-2) + Bx$$
$$1 = Ax - 2A + Bx$$
$$1 = (A+B)x - 2A$$

Comparing coefficients:
$A+B = 0$ and $-2A = 1$, so $A = -\frac{1}{2}$ and $B = \frac{1}{2}$

Therefore:
$$\int \frac{dx}{x(x-2)} = \int \left( \frac{-\frac{1}{2}}{x} + \frac{\frac{1}{2}}{x-2} \right) \, dx = -\frac{1}{2} \ln|x| + \frac{1}{2} \ln|x-2| + C = \frac{1}{2} \ln\left|\frac{x-2}{x}\right| + C$$

### 4. Trigonometric Substitution

This technique is useful for integrals involving $\sqrt{a^2-x^2}$, $\sqrt{a^2+x^2}$, or $\sqrt{x^2-a^2}$.

#### For $\sqrt{a^2-x^2}$:
Substitute $x = a\sin\theta$ where $-\frac{\pi}{2} \leq \theta \leq \frac{\pi}{2}$
Then $dx = a\cos\theta \, d\theta$ and $\sqrt{a^2-x^2} = a\cos\theta$

#### For $\sqrt{a^2+x^2}$:
Substitute $x = a\tan\theta$ where $-\frac{\pi}{2} < \theta < \frac{\pi}{2}$
Then $dx = a\sec^2\theta \, d\theta$ and $\sqrt{a^2+x^2} = a\sec\theta$

#### For $\sqrt{x^2-a^2}$:
Substitute $x = a\sec\theta$ where $0 \leq \theta < \frac{\pi}{2}$ or $\pi \leq \theta < \frac{3\pi}{2}$
Then $dx = a\sec\theta\tan\theta \, d\theta$ and $\sqrt{x^2-a^2} = a\tan\theta$

#### Example:
$$\int \frac{dx}{\sqrt{1-x^2}}$$

Let $x = \sin\theta$, then $dx = \cos\theta \, d\theta$ and $\sqrt{1-x^2} = \cos\theta$

$$\int \frac{dx}{\sqrt{1-x^2}} = \int \frac{\cos\theta \, d\theta}{\cos\theta} = \int d\theta = \theta + C = \arcsin x + C$$

### 5. Completing the Square

This technique helps simplify integrals containing quadratic expressions in the denominator or within a square root.

#### Procedure:
1. Rearrange the quadratic into the form $(x+h)^2 + k$
2. Make an appropriate substitution based on this form
3. Integrate the resulting expression

#### Example:
$$\int \frac{dx}{x^2+4x+5}$$

Complete the square: $x^2+4x+5 = (x^2+4x+4) + 1 = (x+2)^2 + 1$

Let $u = x+2$, then $du = dx$ and the integral becomes:
$$\int \frac{dx}{x^2+4x+5} = \int \frac{du}{u^2+1} = \arctan(u) + C = \arctan(x+2) + C$$

### 6. Using Trigonometric Identities

This approach is helpful for integrals involving products of trigonometric functions.

#### Useful Identities:
- $\sin^2 x = \frac{1 - \cos(2x)}{2}$
- $\cos^2 x = \frac{1 + \cos(2x)}{2}$
- $\sin x \cos x = \frac{\sin(2x)}{2}$
- $\sin(a) \sin(b) = \frac{\cos(a-b) - \cos(a+b)}{2}$
- $\cos(a) \cos(b) = \frac{\cos(a-b) + \cos(a+b)}{2}$
- $\sin(a) \cos(b) = \frac{\sin(a-b) + \sin(a+b)}{2}$

#### Example:
$$\int \sin^2 x \, dx$$

Using the identity $\sin^2 x = \frac{1-\cos(2x)}{2}$:
$$\int \sin^2 x \, dx = \int \frac{1-\cos(2x)}{2} \, dx = \frac{1}{2} \int (1-\cos(2x)) \, dx = \frac{x}{2} - \frac{\sin(2x)}{4} + C$$

### 7. Integration of Special Functions

#### Rational Functions of Sine and Cosine
Substitute $t = \tan(x/2)$ to transform $\sin x$ and $\cos x$:
- $\sin x = \frac{2t}{1+t^2}$
- $\cos x = \frac{1-t^2}{1+t^2}$
- $dx = \frac{2dt}{1+t^2}$

#### Integrals with $\sqrt{ax^2+bx+c}$
Complete the square and use an appropriate trigonometric or hyperbolic substitution.

## Steps for Solving Complex Integrals

1. **Identify the appropriate technique** based on the form of the integrand
2. **Simplify the integrand** if possible (using algebraic manipulations, trigonometric identities, etc.)
3. **Apply the chosen integration technique** methodically
4. **Verify your answer** by differentiating it (to ensure it gives back the original integrand)

## Worked Examples

### Example 1: Using Substitution
Compute the antiderivative of $f(x) = \frac{\sqrt{x+1}}{2x+1}$

Solution:
Let $u = x+1$, then $x = u-1$ and $dx = du$
The integrand becomes:
$$\frac{\sqrt{u}}{2(u-1)+1} = \frac{\sqrt{u}}{2u-1}$$

This is still challenging, so let's try a different approach.
Let $v = \sqrt{x+1}$, then $v^2 = x+1$ and $x = v^2-1$
Also, $dx = 2v \, dv$

The integral becomes:
$$\int \frac{\sqrt{x+1}}{2x+1} \, dx = \int \frac{v}{2(v^2-1)+1} \cdot 2v \, dv = \int \frac{2v^2}{2v^2-1} \, dv$$
$$= \int \left(1 + \frac{1}{2v^2-1}\right) \, dv = v + \frac{1}{2} \int \frac{1}{v^2-\frac{1}{2}} \, dv$$

Continue with appropriate techniques to complete the integration.

### Example 2: Integration by Parts
Compute the antiderivative of $f(x) = \frac{\sin x}{2\cos x + 1}$

Solution:
This doesn't immediately fit a standard integration by parts pattern. Let's try substitution first.

Let $u = \cos x$, then $du = -\sin x \, dx$ or $\sin x \, dx = -du$
The integral becomes:
$$\int \frac{\sin x}{2\cos x + 1} \, dx = -\int \frac{du}{2u + 1} = -\frac{1}{2} \int \frac{du}{u + \frac{1}{2}} = -\frac{1}{2} \ln\left|u + \frac{1}{2}\right| + C = -\frac{1}{2} \ln|2\cos x + 1| + C$$

### Example 3: Partial Fractions
Compute the antiderivative of $f(x) = \frac{x+1}{x^2-4}$

Solution:
Factor the denominator: $x^2-4 = (x-2)(x+2)$
Decompose into partial fractions:
$$\frac{x+1}{(x-2)(x+2)} = \frac{A}{x-2} + \frac{B}{x+2}$$

Multiply both sides by $(x-2)(x+2)$:
$$x+1 = A(x+2) + B(x-2)$$
$$x+1 = Ax + 2A + Bx - 2B$$
$$x+1 = (A+B)x + (2A-2B)$$

Comparing coefficients:
$A+B = 1$ and $2A-2B = 1$, so $A = \frac{3}{4}$ and $B = \frac{1}{4}$

Therefore:
$$\int \frac{x+1}{x^2-4} \, dx = \int \left( \frac{3/4}{x-2} + \frac{1/4}{x+2} \right) \, dx = \frac{3}{4} \ln|x-2| + \frac{1}{4} \ln|x+2| + C$$

### Example 4: For functions with square roots
Compute $\int \frac{dx}{x^2+2}$

Solution:
This can be solved by completing the square and using the arctangent integral formula.

$$\int \frac{dx}{x^2+2} = \int \frac{dx}{2((\frac{x}{\sqrt{2}})^2+1)} = \frac{1}{2}\int \frac{dx}{(\frac{x}{\sqrt{2}})^2+1}$$

Let $u = \frac{x}{\sqrt{2}}$, then $dx = \sqrt{2} \, du$
The integral becomes:
$$\frac{1}{2}\int \frac{\sqrt{2} \, du}{u^2+1} = \frac{\sqrt{2}}{2}\int \frac{du}{u^2+1} = \frac{\sqrt{2}}{2} \arctan(u) + C = \frac{\sqrt{2}}{2} \arctan\left(\frac{x}{\sqrt{2}}\right) + C$$

See Also:
- [[Power Rule]]
- [[Antiderivatives]]
- [[Derivatives]]
- [[U-Substitution]]
- [[Integration by Parts]]
- [[Partial Fractions]]

### See Also
### - [[Power Rule]]
### - [[Antiderivatives]]
### - [[Derivatives]]
### - [[U-Substitution]]
### - [[Integration by Parts]]
### - [[Partial Fractions]]

### Exercises:
1. Compute the antiderivatives of $f(x) = \frac{\sqrt{x+1}}{2x+1}$
2. Compute the antiderivatives of $f(x) = \frac{\sin x}{2\cos x + 1}$
3. Compute the antiderivatives of $f(x) = \frac{x+1}{x^2-4}$
4. Determine that $f(x) = \frac{x-2}{x^2+2}$ is not integrable using asymptotic comparison.