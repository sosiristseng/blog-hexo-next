---
title: "🔖 Super computing in Julia"
subtitle: ""
date: 2021-04-06T01:02:41+08:00
author: ""
authorLink: ""
description: ""

tags: []
categories: ["Julia", "Bookmark"]

hiddenFromHomePage: false
hiddenFromSearch: false

featuredImage: ""
featuredImagePreview: ""

toc:
  enable: true
math:
  enable: false
lightgallery: false
comment: false
---

**Super Computing: HPC, Distributed Computing, Cloud computing, Cluster computing, Grid computing, Parallel computing, Hardware arch (ARM, CUDA, GPU, MIPS), Kernels, Compilers (source-to-source compiler, transcompiler/ transpilers)**

<!--more-->

- 🏚️ means the package may not support current versions of Julia.
- 🏗️ means the package may be a WIP.

## Portal

- [Julia parallel]()


## Benchmarking and profiling

Links:

[Julia Microbenchmarks against other programming languages](https://julialang.org/benchmarks/)

Packages:

+ [BenchmarksTools.jl](https://github.com/JuliaCI/BenchmarkTools.jl) :: A benchmarking framework for the Julia language.
+ [ConicBenchmarkUtilities.jl](https://github.com/JuliaOpt/ConicBenchmarkUtilities.jl) :: Julia utilities for the conic benchmark format for mathematical optimization.
+ [CPUTime.jl](https://github.com/schmrlng/CPUTime.jl) :: A module for CPU timing.
+ [DataBench.jl](https://github.com/xiaodaigh/DataBench.jl) :: A package to benchmark data manipulation in Julia vs `R data.table`.
+ [ProfileSVG.jl](https://github.com/kimikage/ProfileSVG.jl) :: Write flame graphs to SVG format and explore them interactively in Jupyter, Pluto, etc.
+ [ProfileView.jl](https://github.com/timholy/ProfileView.jl) :: Visualization of Julia profiling data
+ [SimplexBenchmarks](https://github.com/mlubin/SimplexBenchmarks) :: Benchmarks comparing individual operations of the Simplex method for linear programming in Julia and other languages. Uses modified version of jlSimplex to generate data from real instances.
+ [StatProfilerHTML.jl](https://github.com/tkluck/StatProfilerHTML.jl) :: Show Julia profiling data in an explorable HTML page.
+ 🏚️ [Benchmark.jl](https://github.com/johnmyleswhite/Benchmark.jl) :: A package for computing simple benchmarks, comparing functions and packages.
+ 🏚️ [BenchmarkLite.jl](https://github.com/lindahua/BenchmarkLite.jl) :: A lightweight Julia package for simple performance benchmark.
+ 🏚️ [Benchmarks.jl](https://github.com/johnmyleswhite/Benchmarks.jl) :: A new benchmarking library for Julia.
+ 🏚️ [Criterion.jl](https://github.com/jakebolewski/Criterion.jl) :: A port of the Haskell's Criterion and Clojure's Criterium library to Julia, that runs benchmarks, analyzing the results using various statistical techniques.
+ 🏚️ [IACA.jl](https://github.com/carnaval/IACA.jl) :: A wrapper around intel's arch code analyzer for Julia.
+ 🏚️ [IProfile](https://github.com/timholy/IProfile.jl) :: Replaced by profile in Julia base.
+ 🏚️ [ISPC.jl](https://github.com/damiendr/ISPC.jl) :: Tools to work with [ISPC](https://ispc.github.io/) in Julia.
+ 🏚️ [julia_qsortbenchmarks](https://github.com/illerucis/julia_qsortbenchmarks) ::  Suggested improvements to Julia's Quicksort implementation.
+ 🏚️ [JuliaBenchmarks](https://github.com/kapiliitr/JuliaBenchmarks) :: Porting HPC Challenge benchmarks to Julia.
+ 🏚️ [Perftests.jl](https://github.com/staticfloat/Perftests.jl) :: Base perftests for Julia.
+ 🏚️ [SortPerf.jl](https://github.com/kmsquire/SortPerf.jl) :: Julia module to test the performance of sorting algorithms.
+ 🏚️ [USERTime.jl](https://github.com/christianpeel/USERTime.jl) :: A Julia package for measuring elapsed user time.
+ PerfPlot.jl(404) :: Performance Profile Plot.
+ raytracer.jl(404) :: Raytracer in the Julia kernel and other [raytracer](https://github.com/jakebolewski/rays) packages.

## Compilers

+ [Clang.jl](https://github.com/ihnorton/Clang.jl) :: Julia interface to libclang and C wrapper generator.
+ [llvm-cbe](https://github.com/JuliaComputing/llvm-cbe) :: A resurrected LLVM C Backend, with improvements for Julia.
+ [PackageCompiler.jl](https://github.com/JuliaLang/PackageCompiler.jl) :: Compile your Julia Package.
+ 🏚️ [CompilerOptions.jl](https://github.com/sjkelly/CompilerOptions.jl) :: A Julia package for reading compiler options.
+ 🏚️ [CompilerTools.jl](https://github.com/IntelLabs/CompilerTools.jl) :: The CompilerTools package, part of the High Performance Scripting project at Intel Labs.
+ 🏚️ [Eglib.jl](https://github.com/ihnorton/Eglib.jl) :: Clang.jl wrapping example, C code from @kindlmann.
+ 🏚️ [JITTools.jl](https://github.com/Keno/JITTools.jl) :: Tools for working with in-memory object.
+ 🏚️ [julia-icc-travis](https://github.com/sunoru/julia-icc-travis) :: Build Julia using icc on the Travis CI.
+ 🏚️ [LLVM.jl](https://github.com/jakebolewski/LLVM.jl) :: A Julia package for LLVM.
+ 🏚️ [ParallelAccelerator.jl](https://github.com/IntelLabs/ParallelAccelerator.jl) :: The ParallelAccelerator package, part of the High Performance Scripting project at Intel Labs.

### Preprocessor

+ Precompile.jl(404) :: Precompilation is merged in Julia base, [documentation](https://docs.julialang.org/en/v1/manual/modules/#Module-initialization-and-precompilation)
+ [SnoopCompile.jl](https://github.com/timholy/SnoopCompile.jl) :: Make your packages work faster with more extensive precompilation - Spy on the JIT-compiler and learn which functions & types it's compiling.

### Transpiler

+ Julia2C(404) :: A source-to-source translator from Julia to C. This initial version converts basic Julia types and expressions into the corresponding C types and statements.

## Concurrency and Parallel Computing

Links:

- [📖 Concurrency](https://en.wikipedia.org/wiki/Concurrency_%28computer_science%29)
- [📖 Parallel Computing](https://en.wikipedia.org/wiki/Category:Parallel_computing)
- [Parallel Computing](https://docs.julialang.org/en/v1/manual/parallel-computing/) in Julia manual.
- [Julia Folds](https://github.com/JuliaFolds) :: packages for sequential and parallel fold (aka reduce) algorithms.
- [Julia Parallel](https://github.com/JuliaParallel) :: Parallel programming in Julia

General Concurrency Packages:

+ [Actors.jl](https://github.com/JuliaActors/Actors.jl) :: An Actor Model implementation in Julia.
+ [FLoops.jl](https://github.com/JuliaFolds/FLoops.jl):: provides a macro `@floop`. It can be used to generate a fast generic iteration over complex collections.
+ [Folds.jl](https://github.com/JuliaFolds/Folds.jl) :: A unified interface for sequential, threaded, and distributed fold.
+ [TiledIteration.jl](https://github.com/JuliaArrays/TiledIteration.jl) :: Julia package to facilitate writing mulithreaded, multidimensional, cache-efficient code.
+ 🏚️ [Blocks.jl](https://github.com/JuliaParallel/Blocks.jl) :: A framework to represent chunks of entities and parallel methods on them.
+ [Heptapus.jl](https://github.com/lcw/Heptapus.jl) :: The roofline function is a translation of the roofline code from https://github.com/paranumal/libparanumal/. Accelerated finite element flow solvers
+ [Hwloc.jl](https://github.com/JuliaParallel/Hwloc.jl) :: The Portable Hardware Locality (hwloc) package wraps the hwloc library to provide a portable abstraction (across OS, versions, architectures, ...) of the hierarchical topology of modern architectures, including NUMA memory nodes, sockets, shared caches, cores and simultaneous multithreading.
+ 🏚️ [ScaLAPACK.jl](https://github.com/JuliaParallel/ScaLAPACK.jl) :: Scalable Linear Algebra PACKage.

### APIs and bindings

+ [ArrayFire.jl](https://github.com/JuliaComputing/ArrayFire.jl) by @JuliaComputing :: Julia Wrapper for the ArrayFire library.
+ [Elly.jl](https://github.com/JuliaParallel/Elly.jl) :: Hadoop HDFS and Yarn client.
+ [MPI.jl](https://github.com/JuliaParallel/MPI.jl) :: MPI wrappers for Julia
+ [Slurm.jl](https://github.com/JuliaParallel/Slurm.jl) :: Experimental Julia interface to `slurm.schedmd.com`.
+ 🏚️ [ArrayFire.jl](https://github.com/hshindo/ArrayFire.jl) by @hshindo :: Julia bindings for ArrayFire.
+ 🏚️ [HDFS.jl](https://github.com/JuliaParallel/HDFS.jl) :: An interface wrapper over the Hadoop HDFS library that wraps the HDFS C library libhdfs and provides APIs similar to Julia Filesystem APIs which can be used for direct access to HDFS files.
+ 🏚️ [OCCA.jl](https://github.com/ReidAtcheson/OCCA.jl) :: Julia interface into [OCCA2](https://github.com/tcew/OCCA2) by @tcew, an extensible multi-threading programming API written in C++.

#### Cloud Computing

Also see [Julia Cloud](https://github.com/JuliaCloud).

+ [AWS.jl](https://github.com/JuliaCloud/AWS.jl) :: supports the EC2 and S3 API's, letting you start and stop EC2 instances dynamically.
+ [AWSCore.jl](https://github.com/samoconnor/AWSCore.jl) :: Amazon Web Services Core Functions and Types.
+ [AWSS3.jl](https://github.com/samoconnor/AWSS3.jl) :: AWS S3 Simple Storage Service interface for Julia.
+ [GCloud.jl](https://github.com/spencerlyon2/GCloud.jl) :: Tools for working with Google Compute engine via the cloud CLI.
+ [GoogleCloud.jl](https://github.com/JuliaCloud/GoogleCloud.jl) :: Google Cloud APIs for Julia.
+ 🏚️ [CloudArray.jl](https://github.com/gsd-ufal/CloudArray.jl) :: Easy big data programming in the cloud.
+ OCAWS.jl(404) :: An AWS library.

### Multiprocessing and Distributed Computing

Links:

- [📖 Distributed Computing](https://en.wikipedia.org/wiki/Category:Distributed_computing) across multiple compute nodes.
- [📖 Job Scheduler](https://en.wikipedia.org/wiki/Job_scheduler)
- [Julia at scale](https://discourse.julialang.org/c/domain/parallel/34) topic on discourse.

Packages:

+ [ClusterManagers.jl](https://github.com/JuliaLang/ClusterManagers.jl) :: Support for different clustering technologies.
+ [Dagger.jl](https://github.com/JuliaParallel/Dagger.jl) :: A framework for out-of-core and parallel computation and hierarchical Scheduling of DAG Structured Computations.
+ [DistributedArrays.jl](https://github.com/JuliaParallel/DistributedArrays.jl) :: A task persistency mechanism based on hash-graphs for Dispatcher.jl.
+ [FunHPC.jl](https://github.com/eschnett/FunHPC.jl) :: Functional High-Performance Computing - A high-level API for distributed computing, implemented on top of MPI. Also on [Bitbucket](https://bitbucket.org/eschnett/funhpc.jl).
+ [HPAT.jl](https://github.com/IntelLabs/HPAT.jl) :: High Performance Analytics Toolkit (HPAT) is a Julia-based framework for big data analytics on clusters.
+ [JuliaMPIMonteCarlo.jl](https://github.com/mcreel/JuliaMPIMonteCarlo.jl) :: Illustrative examples using Julia and MPI to do Markov Chain Monte Carlo (MCMC) methods.
+ [MessageUtils.jl](https://github.com/JuliaParallel/MessageUtils.jl) :: A collection of utilities for messaging.
+ [Persist.jl](https://github.com/eschnett/Persist.jl) :: The package Persist allows running jobs independent of the Julia shell.
+ [Schedulers.jl](https://github.com/ChevronETC/Schedulers.jl) :: It provides elastic and fault tolerant parallel map and parallel map reduce methods. The primary feature that distinguishes Schedulers parallel map method from Julia's `Distributed.pmap` is elasticity where the cluster is permitted to dynamically grow/shrink.
+ [SimJulia.jl](https://github.com/BenLauwens/SimJulia.jl) ::A discrete event process oriented simulation framework written in Julia inspired by the Python library [SimPy](https://simpy.readthedocs.io/).
+ 🏚️ [ChainedVectors.jl](https://github.com/tanmaykm/ChainedVectors.jl) :: Few utility types over Julia Vector type.
+ 🏚️ [ClusterDicts.jl](https://github.com/amitmurthy/ClusterDicts.jl) :: Global and Distributed dictionaries for Julia.
+ 🏚️ [Collectl.jl](https://github.com/ranjanan/Collectl.jl) :: Plotting information from Collectl in julia.
+ 🏚️ [Dispatcher.jl](https://github.com/invenia/Dispatcher.jl) :: A framework for out-of-core and parallel computation and hierarchical Scheduling of DAG Structured Computations.
+ 🏚️ [DispatcherCache.jl](https://github.com/zgornel/DispatcherCache.jl) :: Tool for building and executing a computation graph given a series of dependent operations.
+ 🏚️ [Dtree.jl](https://github.com/kpamnany/Dtree.jl) :: Julia wrapper for a distributed dynamic scheduler for HPC applications.
+ 🏚️ [Flume.jl](https://github.com/malmaud/Flume.jl) :: A port of the Google Flume Data-Parallel Pipeline system.
+ 🏚️ [HavenOnDemand.jl](https://github.com/richitmx/HavenOnDemand.jl) :: Julia package to access HPE Haven OnDemand API.
+ 🏚️ [hpcc.jl](https://github.com/jiahao/hpcc.jl) :: Implementation of the HPC Challenge kernels in Julia.
+ 🏚️ [IBFS.jl](https://github.com/eurika-kaiser/IBFS.jl) :: Grid simulation solver.
+ 🏚️ [LCJC.jl](https://github.com/amitmurthy/LCJC.jl) :: Loosely Coupled Julia Clusters.
+ 🏚️ [ParallelGLM.jl](https://github.com/dmbates/ParallelGLM.jl) :: Parallel fitting of GLMs using SharedArrays.
+ 🏚️ [PTools.jl](https://github.com/amitmurthy/PTools.jl) :: A collection of utilities for parallel computing in Julia.
+ 🏚️ [SGEArrays.jl](https://github.com/davidavdav/SGEArrays.jl) :: SGEArray implements a simple iterator in Julia to efficiently handle Sun Grid Engine task arrays.

### SIMD Computing

Links:

- [📖 SIMD Computing](https://en.wikipedia.org/wiki/Category:SIMD_computing).
- [`@simd` macro in Julia docs](https://docs.julialang.org/en/v1/base/base/#Base.SimdLoop.@simd)

Packages:

+ [MPIArrays.jl](https://github.com/barche/MPIArrays.jl) :: Distributed arrays based on MPI onesided communication.
+ [SIMD.jl](https://github.com/eschnett/SIMD.jl) :: Explicit SIMD vector operations for Julia.
+ 🏚️ [SIMDPirates.jl](https://github.com/chriselrod/SIMDPirates.jl) :: A library for SIMD intrinsics. The code was stolen from SIMD.jl, whose authors and maintainers deserve credit for most of the good work here. Aside from pirating code, SIMDPirates also provides an @pirate macro that lets you imagine you're commiting type piracy
+ 🏚️ [SIMDVectors.jl](https://github.com/KristofferC/SIMDVectors.jl) :: An experimental package that uses the PR #15244 to create a stack allocated fixed size vector which supports SIMD operations and very similar in spirit to the SIMD.jl package.
+ 🏚️ [Yeppp.jl](https://github.com/JuliaLang/Yeppp.jl) :: A low level, high performance library for vectorized operations, elementwise operation on arrays.

### Multi-Threading

+ [KissThreading.jl](https://github.com/bkamins/KissThreading.jl) :: Simple patterns supporting working with threads in Julia.
+ [ThreadsX.jl](https://github.com/tkf/ThreadsX.jl) :: Parallelized Base functions.
+ 🏚️ [RawMutex.jl](https://github.com/vchuravy/RawMutex.jl) :: A __MUT__ual __EX__clusion program object in Julia that allows multiple program threads to share the same resource, such as file access, but not simultaneously.
+ 🏚️ [MT-Workloads](https://github.com/ranjanan/MT-Workloads) :: Multi-threaded workloads in Julia.


### GPU computing

[📖 GPGPU](https://en.wikipedia.org/wiki/General-purpose_computing_on_graphics_processing_units)

Packages:

* [CVortex.jl](https://github.com/hjabird/CVortex.jl) :: Julia wrapper for GPU accelerated vortex filament and vortex particle methods.
+ [CuCountMap.jl](https://github.com/xiaodaigh/CuCountMap.jl) :: Fast `StatsBase.countmap` for small types on the GPU via CUDA.jl
+ [CUDA.jl](https://github.com/JuliaGPU/CUDA.jl) :: This package wraps key functions in CUDA Driver API.
+ [FoldsCUDA.jl](https://github.com/JuliaFolds/FoldsCUDA.jl):: provides Transducers.jl-compatible fold (reduce) implemented using CUDA.jl. This brings the transducers and reducing function combinators implemented in Transducers.jl to GPU. Furthermore, using FLoops.jl, you can write parallel for loops that run on GPU.
+ [OpenCL.jl](https://github.com/JuliaGPU/OpenCL.jl) :: OpenCL 1.2 Julia bindings - a cross platform parallel computation API for programming parallel devices, with implementations from AMD, Nvidia, Intel, and others, similar in scope to PyOpenCL.
+ 🏚️ [CLBLAS.jl](https://github.com/JuliaGPU/CLBLAS.jl) :: CLBLAS integration for Julia.
+ 🏚️ [CUBLAS.jl](https://github.com/JuliaGPU/CUBLAS.jl) :: Julia interface to CUBLAS.
+ 🏚️ [CUDAnative.jl](https://github.com/JuliaGPU/CUDAnative.jl) :: Support for compiling and executing native Julia kernels on CUDA hardware.
+ 🏚️ [CUDArt.jl](https://github.com/JuliaAttic/CUDArt.jl) :: Wrapper for CUDA runtime API.
+ 🏚️ [CUDNN.jl](https://github.com/JuliaAttic/CUDNN.jl) :: Julia wrapper for the NVIDIA cuDNN GPU deep learning library.
+ 🏚️ [CURAND.jl](https://github.com/JuliaAttic/CURAND.jl) : Wrapper for NVidia's cuRAND library.
+ 🏚️ [HSA.jl](https://github.com/JuliaGPU/HSA.jl) :: Julia Bindings for the HSA Runtime.
+ 🏚️ [julia-CuMatrix](https://github.com/stefan-k/julia-CuMatrix) :: CUDA Matrix library.
+ 🏚️ [julia-kernels](https://github.com/toivoh/julia-kernels) :: A small suite of tools aimed at being able to write kernels in Julia, which could be executed on the CPU, or as GPU kernels.
+ 🏚️ [MXNet.jl](https://github.com/dmlc/MXNet.jl) :: The dmlc/mxnet Julia package that brings flexible and efficient GPU computing and state-of-art deep learning to Julia. `MXNet.jl` is a part of Apache [MXNet](https://github.com/apache/incubator-mxnet) project now.
+ 🏚️ [Titan.jl](https://github.com/malmaud/Titan.jl) :: Write GPU kernels using pure Julia.
+ 🏚️ [UberSignals.jl](https://github.com/SimonDanisch/UberSignals.jl) :: Concept for a fast event signal system, using JIT and GPU acceleration, loosely inspired by Reactive.jl.

#### Resources

+ Blog post on [Compiling Julia for NVIDIA GPUs](http://blog.maleadt.net/2015/01/15/julia-cuda/)
+ Sample notebooks for: [GPU Julia](http://nbviewer.ipython.org/7436359), and [GPU Transpose](http://nbviewer.ipython.org/7436439).
+ Blog post on [High-Performance GPU Computing](https://devblogs.nvidia.com/parallelforall/gpu-computing-julia-programming-language/#more-8555) in the Julia Programming Language.
+ 🏚️ [GPU-benchmarking](https://github.com/ranjanan/GPU-benchmarking) :: GPU benchmarking on Julia.


## Publications
+ [Parallel Prefix Polymorphism Permits Parallelization, Presentation & Proof](http://jiahao.github.io/parallel-prefix/) :: A short [paper](https://github.com/jiahao/parallel-prefix) about parallel prefix.
