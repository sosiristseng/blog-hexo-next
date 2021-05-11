# Tips for solving differential equations in Julia


Thoughts and tips about solving differential equations in Julia using [DifferentialEquations.jl](https://github.com/SciML/DifferentialEquations.jl).

## Also see

- [Official docs](https://diffeq.sciml.ai/stable/) of DifferentialEquations.jl. Also see the [FAQ sections](https://diffeq.sciml.ai/stable/basics/faq/#faq).
- [Examples](https://github.com/SciML/SciMLTutorials.jl) of DifferentialEquations.jl.

<!--more-->

## How to solve a system of ODEs

[DifferentialEquations.jl | overview](https://diffeq.sciml.ai/stable/basics/overview/)

### Define the problem

ODE function could be one of the two forms:

- `f(u, p, t)`, the out of place form returning `du`.
- `f!(du, u, p, t)`, the in-place form where `du` is the output.

where

- `u` is the vector of state variable(s), or called dependent variables. (Actually `u` can also be a scalar value in the case of a single state variable)
- `p` are the parameters for the function, often constants thoughout the solution.
- `t` is the independent variable, usually time in chemical / physical systems.

For an example, to model the exponential growth / decay $\frac{du}{dt} = pu$ , write the right hand side (RHS) as the ODE function.

```julia
f(u, p, t) = p*u
```

And then you can define the problem

```julia
prob = ODEProblem(f, u0, tspan, p)
```

### Initial conditions

The initial conditions `u0` could be one of the three forms: (when in doubt, use the first one)

- A vector
- A scalar (if the RHS function takes a scalar `u`)
- The functional form: `u(p, t0)` returning the initial conditions depending on parameters.

### Time span

The time span `ts` could be one of the three forms: (when in doubt, use the first one)

- A tuple: `(tstart, tend)`.
- A scalar: `tend`, equivalent to `(0, tend)`.
- functional: `t(p)` which returns `(tstart, tend)`, when the time span depends on parameters.

> The type of timespan matters: Usually you'll want to set timespan to a real number (e.g `1.0`). If you set it to an integer `1`, the Julia solver will try to solve the problem in integers and fractions and exit with `not enought precision` error.

### Parameters

Parameters (`p`) in Julia could be tuples, namedtuples, arrays, functions, etc., as long as they could run the RHS function `f(u, params, t)` you wrote.

### More on the problem object and interface

[Problem interface | DiffEq docs](https://diffeq.sciml.ai/stable/basics/problem/#Problem-Interface)

Problem objects are **immutable**, but you can [remake](https://diffeq.sciml.ai/stable/basics/problem/#Modification-of-problem-types) a problem based on an existing one.

```julia
probNew = remake(prob, p=newParameters)
```

`remake()` is extensively used in [ensemble simulations](https://diffeq.sciml.ai/stable/features/ensemble/#ensemble) to vary the fields (e.g. `u0`, `p`) in the problem object.

## Dealing with Discontiuities and numerical instabilities

From a [post](https://discourse.julialang.org/t/handling-instability-when-solving-ode-problems/9019/5) in the Julia forum.

For example, there is a conditional statement in your model like `k9*X3/(k10*k11/(k12*(1.-min(1.,k13+k14*X5))) + X3)`. Calculating derivatives across this discontiuity caused by `min()` might cause an error in the solver.

### Option 1: Turn off autodiff to use finite differencing instead

Set `autodiff=false` in the solver

```julia
sol = solve(prob,Rosenbrock23(autodiff=false))
sol = solve(prob,Rodas4(autodiff=false))
```

Alternativly use `CVODE_BDF` since it uses finite differencing by default.

However, disable autodiff increases the number of evaluation significantly and makes the solver less efficient.

### Option 2: Replace the discontinuities with smooth functions

Replace step functions / `min()` / `max()` with `tanh()` or `exp()` for switch-like behavior. This increases problem stiffness but it is efficient for stiff ODE solvers.

```julia
smooth_min(x, y, k=10) = (exp(-k * x) + exp(-k * y)) / (exp(x) + exp(y))
	@@ -96,13 +128,21 @@ sol = solve(prob,Rodas4(autodiff=false), callback=cb)
sol = solve(prob,CVODE_BDF(), callback=cb)
```

If the discontiuities is large in the callback you might want to [propose a smaller `dt`](https://diffeq.sciml.ai/stable/features/callback_functions/#Modifying-the-Stepping-Within-A-Callback) to ensure numerical stability.

```julia
function affect!(integrator)
    # Do things
    set_proposed_dt!(integrator, 0.01)
end
```

## Plotting solutions

You can pass more options for the DifferentialEquations.jl solution to the `plot()` function thanks to Plot recipes.

- `vars` : [Choosing](https://diffeq.sciml.ai/stable/basics/plot/#plot_vars) which variable(s) to plot by passing `vars` to `plot()` function. Functions dependent on the state variables are also suported.
  ```julia
  f(x,y,z) = (sqrt(x^2+y^2+z^2),x)
  plot(sol,vars=(f,1,2,3))
	@@ -127,8 +167,6 @@ plt.plot(sol(ts,idxs=i),sol(ts,idxs=j),sol(ts,idxs=k))

## Cooperations with other packages

- [Agents.jl](https://juliadynamics.github.io/Agents.jl/stable/) with [integration with DiffEq](https://juliadynamics.github.io/Agents.jl/stable/examples/diffeq/)
- [DiffEqFlux](https://diffeqflux.sciml.ai/stable/): Neural Networks + Differential Equations
- [DiffEqGPU](https://github.com/SciML/DiffEqGPU.jl): Differential Equations + GPU computing with CUDA

