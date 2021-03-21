---
title: "Install Julia"
date: 2020-10-22T16:25:54+08:00
tags: ["julia", "linux"]
categories: ["Linux", "Packages", "Julia"]
---

[Julia](https://julialang.org/), a general-purpose programming language focused on ease of syntax, composibility, and high performance.

<!--more-->

## Install Julia

MacOS/Linux: install Julia using [jill](https://github.com/abelsiqueira/jill) bash script:

```bash
bash -ci "$(curl -fsSL https://raw.githubusercontent.com/abelsiqueira/jill/master/jill.sh)"
```

Or using its python fork [jill.py](https://github.com/johnnychen94/jill.py) installer.

```bash
# pip is required

[[ -x $(command -v pip) ]] && pip install -U --user jill
[[ -x $(command -v pip3) ]] && pip3 install -U --user jill

~/.local/bin/jill install --confirm
```

## Configurations

- `~/.profile`: for some environment variables before Julia startup
- `~/.julia/config/startup.jl`: environment for regular Julia startup
- `~.julia/config/startup_ijulia.jl`: environment for IJulia Jupyter kernel startup

### Auto-activate Project.toml

In `~/.profile`, add the following line

```bash
export JULIA_PROJECT=@.
```

### Use all CPU cores by default

In `~/.profile`, add the following line

```bash
export JULIA_NUM_THREADS=$(nproc)
```

### Custom Miniconda location

In `~/.julia/config/startup.jl`, add the following line

```julia
ENV["CONDA_JL_HOME"] = "/path/to/conda/install"
```

or in `~/.profile`, add the following line

```bash
export CONDA_JL_HOME=/path/to/conda/install
```

### Autoload Revise.jl

In `~/.julia/config/startup.jl`, add the following lines

```julia
try
    using Revise
catch e
    @warn "Error initializing Revise" exception=(e, catch_backtrace())
end

```

In `~.julia/config/startup_ijulia.jl`, add the following lines

```julia
try
    @eval using Revise
catch e
    @warn "Error initializing Revise" exception=(e, catch_backtrace())
end
```