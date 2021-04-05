---
title: "Julia module loading"
date: 2020-10-21T16:08:01+08:00
tags: ["submodule"]
categories: ["Julia"]
---

When the code grows to a certain size and you want to separte the common parts.

<!--more-->

## Reference
- [Pkg.jl docs](https://julialang.github.io/Pkg.jl/v1/)
- [Comparison between v0.6 and v0.7 (SO)](https://stackoverflow.com/questions/36398629/change-package-directory-in-julia/36400065#36400065)
- [Lutz Hendricks' notes (pdf)](https://lhendricks.org/julia_notes.pdf)

Assuming we have the file structure for the submodules

```tree
. present working directory (pwd)
| - main.jl
| - Manifest.toml
| - Project.toml
|
+---Mod1.jl
|   | - Manifest.toml
|   | - Project.toml
|   |
|   \---src
|         - Mod1.jl
|
\---Mod2.jl
    | - Manifest.toml
    | - Project.toml
    |
    \---src
          - Mod2.jl
```

## Submodules: include code

You could include the little packages as submodules like this

```julia
include("./Mod1.jl/src/Mod1.jl")
using .Mod1

include("./Mod2.jl/src/Mod2.jl")
using .Mod2
```

- Best when the submodules are used exclusively for this project.
- `include` and `using` lines are needed to be executed again when the code in Modx changes.
- Use [relative module path](https://stackoverflow.com/questions/54410557/submodule-intra-dependencies-in-julia) when `Mod2` also requires `Mod1`.
- There might be recursive `include()` calls and `replace module` warnings.

## `dev --local pkg...`

[Julia docs | Pkg | dev](https://docs.julialang.org/en/v1/stdlib/Pkg/)

Add local packages and track the file changes in the Julia REPL

```julia-repl
julia> ]
pkg> activate .
pkg> dev --local Mod1 Mod2
```

Or by the Julia script counterpart

```julia
import Pkg

# To generate Project.toml if not present
Pkg.activate(".")

Pkg.develop(PackageSpec(path="Mod1.jl"))
Pkg.develop(PackageSpec(path="Mod2.jl"))
```

- Best when `Mod1` and `Mod2` are modified frequently and shared.
- Loaded code is determined by local files instead of package versions.
- The updates are loaded when `using` is invoked, along with precompilation. [Revise.jl](https://timholy.github.io/Revise.jl/stable/) tracks and updates modified files and you don't have to restart the Julia process should you make changes.

## Hosted from your repo

Make a Git repo for your custom module and publish it to Git service providers, e.g. GitHub / Gitlab.

And then you can: `]add https://github.com/username/Mod1.jl.git`

[PkgTemplates.jl](https://github.com/invenia/PkgTemplates.jl) is recommended to generate package with unit tests and CI/CD settings.

Nonetheless, it's just one step away from proper [registeration](https://github.com/JuliaRegistries/Registrator.jl) to the general Julia registry to used by more people.

## Appending `LOAD_PATH` (⚠️ outdated)

```julia
push!(LOAD_PATH, ".")

using Mod1
using Mod2
```

- The old way before Pkg3 and Julia 1.0, which is not recommended by now.
- *No* need for `Project.toml` nor `Manifest.toml` in the `pwd`.
- Local files are tracked instead of package versions.
- VS Code language server could not identify symbols from the custom modules.
