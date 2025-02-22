
This file covers practical and numerical approaches to optimization problems. For the mathematical theory, see [[../../calculus/multivariable_calculus/Optimization]].

## Numerical Optimization Methods

### Gradient Descent

Gradient descent is an iterative first-order optimization algorithm for finding a local minimum of a differentiable function.

#### Basic Algorithm:
1. Start with an initial guess $\mathbf{x}_0$
2. Update the position iteratively: $\mathbf{x}_{k+1} = \mathbf{x}_k - \alpha_k \nabla f(\mathbf{x}_k)$
3. Terminate when $\|\nabla f(\mathbf{x}_k)\| < \epsilon$ or after a maximum number of iterations

#### Types of Gradient Descent:
1. **Batch Gradient Descent**: Uses the entire dataset to compute the gradient in each iteration
2. **Stochastic Gradient Descent (SGD)**: Uses a single randomly chosen sample in each iteration
3. **Mini-batch Gradient Descent**: Uses a small random subset of data in each iteration

#### Learning Rate Strategies:
1. **Fixed Learning Rate**: $\alpha_k = \alpha$ is constant
2. **Time-based Decay**: $\alpha_k = \frac{\alpha_0}{1 + kt}$, where $t$ is the decay rate
3. **Exponential Decay**: $\alpha_k = \alpha_0 e^{-kt}$
4. **Line Search**: Find $\alpha_k$ that approximately minimizes $f(\mathbf{x}_k - \alpha_k \nabla f(\mathbf{x}_k))$

#### Advantages:
- Simple to implement and understand
- Low memory requirements
- Works well for many problems

#### Disadvantages:
- Slow convergence for ill-conditioned problems
- Can get stuck in shallow local minima
- Performance depends heavily on the choice of learning rate

### Newton's Method

Newton's method is a second-order optimization algorithm that uses both gradient and Hessian information.

#### Algorithm:
1. Start with an initial guess $\mathbf{x}_0$
2. Update: $\mathbf{x}_{k+1} = \mathbf{x}_k - [\mathbf{H}_f(\mathbf{x}_k)]^{-1} \nabla f(\mathbf{x}_k)$
3. Terminate when $\|\nabla f(\mathbf{x}_k)\| < \epsilon$

#### Advantages:
- Quadratic convergence rate near the solution
- Often requires fewer iterations than gradient descent

#### Disadvantages:
- Requires computing and inverting the Hessian matrix, which is computationally expensive
- Not guaranteed to converge for non-convex functions
- Can diverge if the initial guess is far from the solution

### Quasi-Newton Methods

Quasi-Newton methods approximate the Hessian or its inverse using gradient information, avoiding the costly computation of second derivatives.

#### BFGS (Broyden-Fletcher-Goldfarb-Shanno) Algorithm:
1. Start with initial guess $\mathbf{x}_0$ and Hessian approximation $\mathbf{B}_0$ (usually the identity matrix)
2. Compute the search direction $\mathbf{p}_k = -\mathbf{B}_k^{-1} \nabla f(\mathbf{x}_k)$
3. Perform line search to find $\alpha_k$
4. Update: $\mathbf{x}_{k+1} = \mathbf{x}_k + \alpha_k \mathbf{p}_k$
5. Compute $\mathbf{s}_k = \mathbf{x}_{k+1} - \mathbf{x}_k$ and $\mathbf{y}_k = \nabla f(\mathbf{x}_{k+1}) - \nabla f(\mathbf{x}_k)$
6. Update the Hessian approximation: $\mathbf{B}_{k+1} = \mathbf{B}_k + \frac{\mathbf{y}_k\mathbf{y}_k^T}{\mathbf{y}_k^T\mathbf{s}_k} - \frac{\mathbf{B}_k\mathbf{s}_k\mathbf{s}_k^T\mathbf{B}_k}{\mathbf{s}_k^T\mathbf{B}_k\mathbf{s}_k}$

#### L-BFGS (Limited-memory BFGS):
- Stores only the most recent m vector pairs $\{\mathbf{s}_i, \mathbf{y}_i\}$ instead of the full matrix
- Computes matrix-vector products implicitly
- Suitable for large-scale problems

#### Advantages:
- Faster convergence than gradient descent
- No need to compute second derivatives
- L-BFGS has low memory requirements

#### Disadvantages:
- More complex to implement than gradient descent
- Not as efficient as Newton's method near the solution
- May not converge for non-smooth functions

### Conjugate Gradient Method

The conjugate gradient method is designed to solve linear systems of the form $\mathbf{A}\mathbf{x} = \mathbf{b}$ or minimize quadratic functions, but can be extended to non-quadratic functions.

#### Algorithm for Quadratic Functions:
1. Start with initial guess $\mathbf{x}_0$ and compute $\mathbf{r}_0 = \mathbf{b} - \mathbf{A}\mathbf{x}_0$, $\mathbf{p}_0 = \mathbf{r}_0$
2. For $k = 0, 1, 2, \ldots$ until convergence:
   a. Compute $\alpha_k = \frac{\mathbf{r}_k^T\mathbf{r}_k}{\mathbf{p}_k^T\mathbf{A}\mathbf{p}_k}$
   b. Update $\mathbf{x}_{k+1} = \mathbf{x}_k + \alpha_k\mathbf{p}_k$
   c. Compute new residual $\mathbf{r}_{k+1} = \mathbf{r}_k - \alpha_k\mathbf{A}\mathbf{p}_k$
   d. Compute $\beta_k = \frac{\mathbf{r}_{k+1}^T\mathbf{r}_{k+1}}{\mathbf{r}_k^T\mathbf{r}_k}$
   e. Update search direction $\mathbf{p}_{k+1} = \mathbf{r}_{k+1} + \beta_k\mathbf{p}_k$

#### Nonlinear Conjugate Gradient:
For general functions, $\mathbf{A}$ is replaced with the Hessian, and the residual is the negative gradient.

#### Advantages:
- More efficient than gradient descent
- Does not require storing or inverting matrices
- Guaranteed to converge in at most n steps for n-dimensional quadratic functions

#### Disadvantages:
- More complex than gradient descent
- Less effective for highly non-quadratic functions
- Numerical stability issues can occur

### Trust Region Methods

Trust region methods define a region around the current point within which a model (usually quadratic) is trusted to be a good approximation of the objective function.

#### Algorithm:
1. Start with initial guess $\mathbf{x}_0$ and trust region radius $\Delta_0$
2. In each iteration k:
   a. Construct a quadratic model: $m_k(\mathbf{p}) = f(\mathbf{x}_k) + \nabla f(\mathbf{x}_k)^T\mathbf{p} + \frac{1}{2}\mathbf{p}^T\mathbf{B}_k\mathbf{p}$
   b. Find approximate solution $\mathbf{p}_k$ to the subproblem: $\min_{\mathbf{p}} m_k(\mathbf{p})$ subject to $\|\mathbf{p}\| \leq \Delta_k$
   c. Compute ratio $\rho_k = \frac{f(\mathbf{x}_k) - f(\mathbf{x}_k + \mathbf{p}_k)}{m_k(\mathbf{0}) - m_k(\mathbf{p}_k)}$
   d. Update $\mathbf{x}_{k+1}$ and $\Delta_{k+1}$ based on $\rho_k$:
      - If $\rho_k$ is close to 1, increase the trust region radius
      - If $\rho_k$ is small or negative, decrease the trust region radius
      - If $\rho_k$ is sufficiently positive, set $\mathbf{x}_{k+1} = \mathbf{x}_k + \mathbf{p}_k$, otherwise $\mathbf{x}_{k+1} = \mathbf{x}_k$

#### Advantages:
- More robust than line search methods
- Can handle non-convex functions better
- Naturally adapts step size based on model accuracy

#### Disadvantages:
- Subproblem solving can be computationally expensive
- More complex to implement
- Usually requires more function evaluations per iteration

### Evolutionary Algorithms

Evolutionary algorithms are population-based metaheuristic optimization algorithms inspired by biological evolution.

#### Genetic Algorithm:
1. Initialize a population of candidate solutions
2. Evaluate the fitness of each candidate
3. Repeat until termination:
   a. Select parents based on fitness
   b. Recombine pairs of parents to form new offspring
   c. Mutate offspring with small probability
   d. Evaluate fitness of offspring
   e. Select individuals for the next generation

#### Particle Swarm Optimization (PSO):
1. Initialize particles with random positions and velocities
2. Evaluate the objective function for each particle
3. Update personal best for each particle
4. Update global best among all particles
5. Update velocity and position of each particle based on personal and global best
6. Repeat steps 2-5 until convergence

#### Advantages:
- Can handle non-differentiable, discontinuous, and noisy functions
- Good for global optimization (less likely to get stuck in local optima)
- Easily parallelizable

#### Disadvantages:
- No guarantee of finding the global optimum
- Slower convergence compared to gradient-based methods
- Requires careful parameter tuning

## Convex Optimization

Convex optimization deals with minimizing convex functions over convex sets, which guarantees that any local minimum is also a global minimum.

### Convex Sets and Functions

#### Convex Set:
A set $C$ is convex if for any two points $\mathbf{x}, \mathbf{y} \in C$ and any $\theta \in [0,1]$, the point $\theta \mathbf{x} + (1-\theta) \mathbf{y} \in C$.

#### Convex Function:
A function $f$ is convex if its domain is a convex set, and for all $\mathbf{x}, \mathbf{y}$ in the domain and all $\theta \in [0,1]$:
$f(\theta \mathbf{x} + (1-\theta) \mathbf{y}) \leq \theta f(\mathbf{x}) + (1-\theta) f(\mathbf{y})$

#### Strictly Convex Function:
A function is strictly convex if the above inequality is strict whenever $\mathbf{x} \neq \mathbf{y}$ and $\theta \in (0,1)$.

### Classes of Convex Optimization Problems

#### Linear Programming (LP):
Minimize a linear objective function subject to linear equality and inequality constraints:
$$\min_{\mathbf{x}} \mathbf{c}^T\mathbf{x} \quad \text{subject to} \quad \mathbf{A}\mathbf{x} \leq \mathbf{b}, \, \mathbf{E}\mathbf{x} = \mathbf{d}$$

#### Quadratic Programming (QP):
Minimize a quadratic objective function subject to linear constraints:
$$\min_{\mathbf{x}} \frac{1}{2}\mathbf{x}^T\mathbf{Q}\mathbf{x} + \mathbf{c}^T\mathbf{x} \quad \text{subject to} \quad \mathbf{A}\mathbf{x} \leq \mathbf{b}, \, \mathbf{E}\mathbf{x} = \mathbf{d}$$
where $\mathbf{Q}$ is positive semidefinite.

#### Second-Order Cone Programming (SOCP):
Minimize a linear function subject to second-order cone constraints:
$$\min_{\mathbf{x}} \mathbf{c}^T\mathbf{x} \quad \text{subject to} \quad \|\mathbf{A}_i\mathbf{x} + \mathbf{b}_i\|_2 \leq \mathbf{c}_i^T\mathbf{x} + d_i, \, \mathbf{F}\mathbf{x} = \mathbf{g}$$

#### Semidefinite Programming (SDP):
Minimize a linear function subject to the constraint that a matrix is positive semidefinite:
$$\min_{\mathbf{x}} \mathbf{c}^T\mathbf{x} \quad \text{subject to} \quad \mathbf{F}_0 + \sum_{i=1}^{n} x_i\mathbf{F}_i \succeq 0, \, \mathbf{A}\mathbf{x} = \mathbf{b}$$

### Convex Optimization Algorithms

#### Interior-Point Methods:
1. Convert inequality constraints to equality constraints using slack variables
2. Incorporate constraints into the objective using a barrier function
3. Solve a sequence of subproblems with decreasing barrier parameter
4. Converge to the optimal solution

#### Cutting-Plane Methods:
1. Start with a simple relaxation of the feasible set
2. Solve the relaxed problem
3. Add constraints (cuts) to exclude the current solution if it's not feasible for the original problem
4. Repeat until finding a feasible and optimal solution

#### Subgradient Methods:
For non-differentiable convex functions, use subgradients instead of gradients:
1. Start with initial guess $\mathbf{x}_0$
2. Update: $\mathbf{x}_{k+1} = \mathbf{x}_k - \alpha_k \mathbf{g}_k$, where $\mathbf{g}_k$ is a subgradient of $f$ at $\mathbf{x}_k$
3. Use diminishing step sizes: $\alpha_k \to 0$ as $k \to \infty$, but $\sum_{k=0}^{\infty} \alpha_k = \infty$

## Constrained Optimization Algorithms

### Penalty Methods

Penalty methods transform constrained optimization problems into unconstrained problems by adding penalty terms for constraint violations.

#### External Penalty Method:
1. Replace the original constrained problem with:
   $$\min_{\mathbf{x}} f(\mathbf{x}) + \mu_k \sum_i P(g_i(\mathbf{x})) + \mu_k \sum_j Q(h_j(\mathbf{x}))$$
   where $P$ and $Q$ are penalty functions for inequality and equality constraints
2. Solve a sequence of unconstrained problems with increasing penalty parameter $\mu_k$

#### Internal Penalty (Barrier) Method:
For inequality constraints $g_i(\mathbf{x}) \leq 0$:
1. Replace the original problem with:
   $$\min_{\mathbf{x}} f(\mathbf{x}) - \mu_k \sum_i \ln(-g_i(\mathbf{x}))$$
2. Solve a sequence of unconstrained problems with decreasing barrier parameter $\mu_k$

### Augmented Lagrangian Methods

Augmented Lagrangian methods combine Lagrange multipliers with penalty functions:

#### Algorithm:
1. Start with initial guess $\mathbf{x}_0$, multipliers $\lambda_0$, $\mu_0$, and penalty parameter $\rho_0$
2. For $k = 0, 1, 2, \ldots$:
   a. Approximately minimize the augmented Lagrangian:
      $$L_A(\mathbf{x}, \lambda_k, \mu_k; \rho_k) = f(\mathbf{x}) + \sum_i \lambda_{k,i} g_i(\mathbf{x}) + \sum_j \mu_{k,j} h_j(\mathbf{x}) + \frac{\rho_k}{2} \left( \sum_i \max(0, g_i(\mathbf{x}))^2 + \sum_j h_j(\mathbf{x})^2 \right)$$
   b. Update Lagrange multipliers:
      $$\lambda_{k+1,i} = \lambda_{k,i} + \rho_k \max(0, g_i(\mathbf{x}_{k+1}))$$
      $$\mu_{k+1,j} = \mu_{k,j} + \rho_k h_j(\mathbf{x}_{k+1})$$
   c. Update penalty parameter $\rho_{k+1}$ based on constraint violation

### Sequential Quadratic Programming (SQP)

SQP solves a sequence of quadratic programming subproblems that approximate the original problem.

#### Algorithm:
1. Start with initial guess $\mathbf{x}_0$, Lagrange multiplier estimates $\lambda_0$, and Hessian approximation $\mathbf{B}_0$
2. For $k = 0, 1, 2, \ldots$:
   a. Formulate and solve the QP subproblem:
      $$\min_{\mathbf{p}} \nabla f(\mathbf{x}_k)^T \mathbf{p} + \frac{1}{2} \mathbf{p}^T \mathbf{B}_k \mathbf{p}$$
      $$\text{subject to } \nabla g_i(\mathbf{x}_k)^T \mathbf{p} + g_i(\mathbf{x}_k) \leq 0$$
      $$\nabla h_j(\mathbf{x}_k)^T \mathbf{p} + h_j(\mathbf{x}_k) = 0$$
   b. Perform line search to find step size $\alpha_k$
   c. Update: $\mathbf{x}_{k+1} = \mathbf{x}_k + \alpha_k \mathbf{p}_k$
   d. Update Lagrange multipliers $\lambda_{k+1}$ from the QP solution
   e. Update Hessian approximation $\mathbf{B}_{k+1}$ using BFGS or similar method

### Active Set Methods

Active set methods maintain a guess of the active inequality constraints at the solution.

#### Algorithm:
1. Start with a feasible point $\mathbf{x}_0$ and an initial working set $\mathcal{W}_0$ of active constraints
2. For $k = 0, 1, 2, \ldots$:
   a. Solve the equality-constrained subproblem using constraints in $\mathcal{W}_k$
   b. Compute Lagrange multipliers $\lambda_i$ for constraints in $\mathcal{W}_k$
   c. If all $\lambda_i \geq 0$, check for additional violated constraints:
      - If none, $\mathbf{x}_k$ is optimal
      - If some constraint is violated, add the most violated one to $\mathcal{W}_k$
   d. If some $\lambda_i < 0$, remove the constraint with the most negative $\lambda_i$ from $\mathcal{W}_k$
   e. Update $\mathbf{x}_{k+1}$ and $\mathcal{W}_{k+1}$

### Interior-Point Methods for Constrained Optimization

Interior-point methods traverse the interior of the feasible region toward the optimal solution.

#### Primal-Dual Interior-Point Method:
1. Convert inequality constraints to equality constraints using slack variables
2. Form the barrier problem with logarithmic barrier terms
3. Solve the KKT conditions for the barrier problem using Newton's method
4. Gradually reduce the barrier parameter to converge to the solution

## Applications

### Machine Learning and Data Science

#### Linear Regression:
- Ordinary Least Squares (OLS): $\min_{\mathbf{w}} \|\mathbf{X}\mathbf{w} - \mathbf{y}\|_2^2$
- Ridge Regression: $\min_{\mathbf{w}} \|\mathbf{X}\mathbf{w} - \mathbf{y}\|_2^2 + \lambda\|\mathbf{w}\|_2^2$
- Lasso Regression: $\min_{\mathbf{w}} \|\mathbf{X}\mathbf{w} - \mathbf{y}\|_2^2 + \lambda\|\mathbf{w}\|_1$
- Elastic Net: $\min_{\mathbf{w}} \|\mathbf{X}\mathbf{w} - \mathbf{y}\|_2^2 + \lambda_1\|\mathbf{w}\|_1 + \lambda_2\|\mathbf{w}\|_2^2$

#### Classification:
- Logistic Regression: $\min_{\mathbf{w}} \sum_{i=1}^{n} \log(1 + \exp(-y_i \mathbf{w}^T\mathbf{x}_i)) + \lambda\|\mathbf{w}\|_2^2$
- Support Vector Machines (SVM): $\min_{\mathbf{w},b} \frac{1}{2}\|\mathbf{w}\|_2^2 + C\sum_{i=1}^{n} \max(0, 1-y_i(\mathbf{w}^T\mathbf{x}_i + b))$

#### Neural Network Training:
- Stochastic Gradient Descent (SGD)
- Adam, RMSprop, AdaGrad (adaptive learning rate methods)
- L-BFGS for smaller networks

### Operations Research

#### Resource Allocation:
- Maximize utility or profit subject to resource constraints
- Applications in production planning, portfolio optimization, and scheduling

#### Network Flow Problems:
- Shortest path, maximum flow, minimum cost flow
- Applications in transportation, logistics, and telecommunications

#### Integer Programming:
- Problems where some or all variables must be integers
- Applications in facility location, vehicle routing, and crew scheduling

### Control Systems

#### Model Predictive Control (MPC):
- Optimization-based control strategy that predicts system behavior over a horizon
- Solves an optimization problem at each time step to determine control inputs

#### Linear Quadratic Regulator (LQR):
- Optimal control for linear systems with quadratic cost
- Minimizes a weighted sum of state deviations and control effort

#### H-infinity Control:
- Robust control approach that minimizes the H-infinity norm of the closed-loop transfer function
- Provides guarantees of stability and performance despite uncertainty

### Computer Vision and Graphics

#### Image Registration:
- Aligning images by finding the optimal transformation parameters
- Applications in medical imaging, remote sensing, and augmented reality

#### Structure from Motion:
- Reconstructing 3D structure from 2D image sequences
- Involves optimization of camera poses and 3D point positions

#### Image Denoising and Reconstruction:
- Total Variation (TV) minimization: $\min_{\mathbf{u}} \|\nabla \mathbf{u}\|_1 + \lambda\|\mathbf{u} - \mathbf{f}\|_2^2$
- Applications in medical imaging, photography, and computer vision

### Economics and Finance

#### Portfolio Optimization:
- Mean-Variance Optimization: $\min_{\mathbf{w}} \mathbf{w}^T \mathbf{\Sigma} \mathbf{w} - \lambda \mathbf{w}^T \mathbf{\mu}$ subject to $\mathbf{1}^T\mathbf{w} = 1$
- Black-Litterman model: Incorporates both market equilibrium and investor views

#### Option Pricing and Risk Management:
- Calibration of financial models to market data
- Value-at-Risk (VaR) optimization for portfolio risk management

#### Game Theory Applications:
- Finding Nash equilibria in economic games
- Market clearing prices in auction mechanisms

## See Also
- [[../../calculus/multivariable_calculus/Optimization]]
- [[../../linear_algebra/advanced_topics/Least Squares Approximation]]
- [[../../numerical_analysis/Principal Component Analysis]]
- [[../../statistics/Regression]]