---
title: "🔖 APIs in Julia"
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

Interfaces for other programming languages and general server backends.

<!--more-->

- 🏚️ means the package may not support current versions of Julia.
- 🏗️ means the package may be a WIP.

## Portal

- [JuliaInterop](https://github.com/JuliaInterop) for interoperability interfaces.
- [Biology database APIs](biology.md#api)
- [Database APIs](database.md#api)

## server backends

+ [Discord.jl](https://github.com/PurgePJ/Discord.jl) :: Julia Discord wrapper.
+ [Joseki.jl](https://github.com/amellnik/Joseki.jl) :: Suggested opening moves for building APIs in Julia.
+ [NewsAPI.jl](https://github.com/joshday/NewsAPI.jl) :: Helper functions for using [newsapi.org](https://newsapi.org)
+ [Twitter.jl](https://github.com/randyzwitch/Twitter.jl) :: Julia package to access the Twitter API.
+ 🏚️ [DandelionSlack.jl](https://github.com/dandeliondeathray/DandelionSlack.jl) :: Slack API in Julia.
+ 🏚️ [FFIExamples.jl](https://github.com/johnmyleswhite/FFIExamples.jl) :: Many small examples that demonstrate how Julia's [FFI](http://en.wikipedia.org/wiki/Foreign_function_interface) works as of v0.4.
+ 🏚️ [Hydna.jl](https://github.com/jfd/Hydna.jl) :: Hydna Julia Client Library implements support for the Hydna Push API.
+ 🏚️ [MakiBot.jl](https://github.com/SimonDanisch/MakiBot.jl) :: A Telegram plot bot for MakiE.jl.
+ 🏚️ [MapLight.jl](https://github.com/WestleyArgentum/MapLight.jl) :: A Julia package for using the MapLight API.
+ 🏚️ [OpenSecrets.jl](https://github.com/WestleyArgentum/OpenSecrets.jl) :: An API package for working with [OpenSecrets data](http://opensecrets.org/resources/create/)
+ 🏚️ [Slackbot.jl](https://github.com/jiahao/Slackbot.jl) :: A Julia REPL that interacts with Slack.com's webhook integration.
+ 🏚️ [Sunlight.jl](https://github.com/WestleyArgentum/Sunlight.jl) :: A Julia package for interfacing with the [Sunlight Foundation's API's](http://sunlightfoundation.com/api).
+ 🏚️ [Toxcore.jl](https://github.com/SimonDanisch/Toxcore.jl) :: A Julia wrapper for [Tox](http://en.wikipedia.org/wiki/Tox_%28software%29).
+ 🏚️ [Twilert.jl](https://github.com/glesica/Twilert.jl) :: A small SMS alert library for Julia.



## Mathematica

+ [MathLink.jl][] :: Julia language interface for Mathematica/Wolfram Engine.
+ 🏚️ [Mathematica.jl](https://github.com/MikeInnes/Mathematica.jl) :: is a package that provides an interface for using Wolfram Mathematica™ from the Julia language. Use [MathLink.jl][] instead.

[MathLink.jl]: https://github.com/JuliaInterop/MathLink.jl

## Git

+ [Git.jl](https://github.com/JuliaVersionControl/Git.jl) :: Julia wrapper for command line Git.
+ [GitHub.jl](https://github.com/JuliaWeb/GitHub.jl) :: A Julia package for interfacing with the GitHub API.
+ 🏚️ LibGit2.jl(404) :: Julia bindings to the LibGit2 library.
+ 🏚️ [MechaJulia](https://github.com/MechaJulia/MechaJulia) :: A little GitHub bot that will assist with anything and everything Julia-related that is needed of it.
+ 🏚️ [Octokit.jl](https://github.com/Keno/Octokit.jl) :: Julia package to access the GitHub API.

## C

Julia has [native c interface](https://docs.julialang.org/en/v1/manual/calling-c-and-fortran-code/). Projects like `GetC.jl` and [julia-ffi](https://github.com/o-jasper/julia-ffi) are deprecated.

## Cpp

+ [CxxWrap.jl][] :: A package to provide a Boost.Python-like wrapping for C++ types and functions to Julia.
+ 🏚️ [Cpp.jl](https://github.com/timholy/Cpp.jl) :: Utilities for calling C++ from Julia. Superseded by [CxxWrap.jl][].
+ 🏚️ [Cxx.jl](https://github.com/Keno/Cxx.jl) :: The Julia C++ Foreign Function Interface (FFI) with `@cxx` macro. Only works (out of the box) currently with Julia 1.1.x to 1.3.x.
+ 🏚️ [CxxROOT.jl](https://github.com/Keno/CxxROOT.jl) :: A Cxx.jl based interface to CERN's ROOT.

[CxxWrap.jl]: https://github.com/barche/CxxWrap.jl

## Erlang

+ [ErlPort.jl](https://github.com/thorgisl/ErlPort.jl) :: A Julia-Erlang module for use in the [erlport](http://erlport.org) project.
+ 🏚️ [FsBert](https://github.com/et4te/FsBert) :: A Julia library for encoding / decoding binary Erlang terms.

## Fortran

Julia has [native Fortran interface](https://docs.julialang.org/en/v1/manual/calling-c-and-fortran-code/), making 🏚️ [FortranIO.jl](https://github.com/rephorm/FortranIO.jl) obsolete.

## Go

+ 🏚️ [GoTMSupport.jl](https://github.com/ordovician/GoTMSupport.jl) :: Support for writing bundle commands for the Go programming language in Julia.

## Java

+ [JavaCall.jl](https://github.com/JuliaInterop/JavaCall.jl) :: is a package that lets you call Java programs from Julia.
+ [JDBC.jl](https://github.com/aviks/JDBC.jl) :: Julia interface to Java database drivers.
+ [TeaSeis.jl](https://github.com/ChevronETC/TeaSeis.jl) :: JavaSeis IO implementation for the Julia language.

## JavaScript

+ [JSExpr.jl](https://github.com/JuliaGizmos/JSExpr.jl) :: Translate Julia to JavaScript.
+ [Mustache.jl](https://github.com/jverzani/Mustache.jl) : Port of mustache.js to julia.
+ [Plotly.jl](https://github.com/plotly/Plotly.jl) :: A Julia interface to the plot.ly plotting library and cloud services.
+ [PlotlyJS.jl](https://github.com/JuliaPlots/PlotlyJS.jl) :: Julia wrapper API for `plotly.js` by @spencerlyon2.
+ [TableView.jl](https://github.com/JuliaComputing/TableView.jl) :: an ag-grid based table viewer built on [WebIO.jl](https://github.com/JuliaGizmos/WebIO.jl).
+ 🏚️ [DThree.jl](https://github.com/jverzani/DThree.jl) :: Simple interface to d3.js from Julia. And its fork 🏚️ [d3.jl](https://github.com/EricForgy/d3.jl)
+ 🏚️ [GoogleCharts.jl](https://github.com/jverzani/GoogleCharts.jl) :: Julia interface to Google Chart Tools.
+ 🏚️ [jlbox](https://github.com/compressed/jlbox) :: Use node.js to provide a mechanism for automatically reloading julia source and test files via gulp.js and a ZMQ socket.
+ 🏚️ [JSTypes.jl](https://github.com/johnmyleswhite/JSTypes.jl) :: Mimic Javascript objects using Julian types.
+ 🏚️ [node-julia](https://github.com/waTeim/node-julia) ::  Fast and simple access to `Julia` embedded in `node.js`.
+ 🏚️ [PlotlyJS.jl](https://github.com/EricForgy/PlotlyJS.jl) :: A Julia wrapper API for `plotly.js`by @EricForgy. Merged with the package above?
+ 🏚️ [Vue.jl](https://github.com/JuliaGizmos/Vue.jl) :: A Julia wrapper for `Vue.js`.
+ j2d3.jl(404) :: trying to generate d3 statements from within julia.
+ JavaScriptBridge.jl(404) :: A simple package that allows Julia to interact with JavaScript in a browser and is heavily inspired by Blink.jl.
+ twiddle.jl(404) :: Bit twiddle port from port from bit-twiddle.

## MATLAB

+ [MAT.jl](https://github.com/JuliaIO/MAT.jl) :: A Julia module for reading MATLAB files.
+ [matlab-to-julia](https://lakras.github.io/matlab-to-julia/) translator.
+ [MATLAB.jl](https://github.com/lindahua/MATLAB.jl) :: an interface for using MATLAB® from Julia using the MATLAB C api.
+ 🏚️ [MatlabCompat.jl](https://github.com/MatlabCompat/MatlabCompat.jl) :: Julia library aimed at simplifying conversion of legacy MATLAB/Octave code into Julia by providing functions similar to MATLAB/Octave.
+ 🏚️ [Mex.jl](https://github.com/juliamatlab/mexjulia) :: Call Julia from matlab. Call Julia from MATLAB. This project is effectively in hibernation as its author no longer has access to matlab.
+ 🏚️ [Moonwalk.jl](https://github.com/diogo149/Moonwalk.jl) :: A partial MATLAB to Julia compiler, just to ease the transition of libraries.
+ MATJulia(404) :: Call Julia from matlab.

## ObjectiveC

+ [ObjectiveC.jl](https://github.com/JuliaInterop/ObjectiveC.jl) :: A Julia library that allows you to call Objective-C methods using native syntax.

## Perl

+ 🏚️ [FileFind.jl](https://github.com/johnmyleswhite/FileFind.jl) :: Minimal Implementation of Perl's `File::Find` in Julia.

## Python

+ [FStrings.jl](https://github.com/magonser/FStrings.jl) :: Implementation of Python style 'fsrings' literal string interpolation based on `Printf.@sprintf`.
+ [PyCall.jl](https://github.com/JuliaPy/PyCall.jl) :: Call Python functions from the Julia language.
+ [PyJulia](https://github.com/JuliaPy/pyjulia) :: Python interface to julia.
+ 🏚️ [Polyglot.jl](https://github.com/wavexx/Polyglot.jl) :: Transparent remote/recursive evaluation between languages - it also supports Perl, PHP and Javascript.
+ 🏚️ [PySyntax.jl](https://github.com/kdheepak/PySyntax.jl) :: Allows Python-like syntax in Julia by providing a light wrapper on top of PyCall.jl in the form of a macro.
+ pyju(404) :: Python to Julia cffi bindings.

## R

+ [Julia in Rmarkdown](https://cran.r-project.org/web/packages/JuliaCall/vignettes/Julia_in_RMarkdown.html) using [JuliaCall](https://rpubs.com/Consistency/310507).
+ [RCall.jl](https://github.com/JuliaStats/RCall.jl) :: Embedded R within Julia - ports all the `R` API functions from C into Julia.
+ [RData.jl](https://github.com/JuliaData/RData.jl) :: CodeIssues 5Pull requests 0Projects 0WikiSecurityInsightsRead R data files from Julia.
+ [ReadStat.jl](https://github.com/WizardMac/ReadStat.jl) :: Read files from Stata, SAS, and SPSS.
+ 🏚️ [jl4R](https://github.com/rcqls/jl4R) :: `Julia for R` will embed the julia language in R, with very basic julia types getting converted into R objects.
+ 🏚️ [ProjectTemplate.jl](https://github.com/johnmyleswhite/ProjectTemplate.jl) :: is a draft port of the ProjectTemplate package for R to Julia.
+ 🏚️ [RCalling.jl](https://github.com/randy3k/RCalling.jl) :: An R interface of Julia - uses the Julia API (in C) and `R` API (also in C) intensively to call R library packages.
+ 🏚️ [Rif.jl](https://github.com/lgautier/Rif.jl) :: An interface to the R language and its fork, 🏚️ [Julio](https://github.com/tshort/julio).
+ 🏚️ [RJulia](https://github.com/armgong/RJulia) :: R package to call Julia - Use Julia embedded API to write a packege for R.
+ 🏚️ [utils.jl](https://github.com/johnmyleswhite/utils.jl) :: Utility functions for Julia -R compatibility wrapper.
+ 🏚️ Run Julia code chunk in [knitr](http://rpubs.com/yihui/julia-knitr) :: Allows you to run Julia from R using [julia_socket.jl](https://github.com/yihui/runr/blob/master/inst/lang/julia_socket.jl)

## REDUCE

+ [ReduceAlgebra.jl][] :: Meta-package for [Reduce.jl][] and External Packages (e.g. [ReduceLinAlg.jl][])
  + [Reduce.jl][] :: Symbolic parser generator for Julia language expressions using REDUCE algebra term rewriter.
  + [ReduceLinAlg.jl][] :: A selection of functions that are useful in the world of linear algebra.

[ReduceAlgebra.jl]: https://github.com/JuliaReducePkg/ReduceAlgebra.jl
[Reduce.jl]: https://github.com/chakravala/Reduce.jl
[ReduceLinAlg.jl]: https://github.com/JuliaReducePkg/ReduceLinAlg.jl

## Ruby

[Ruby communicates with other Languages](https://github.com/arbox/ruby-interoperability)

+ 🏚️ [guard-julia](https://github.com/svs14/guard-julia) :: Guard plugin for Julia development. Julia guard automatically launches respective tests when Julia files are modified.
+ 🏗️ [jl4rb](https://github.com/rcqls/jl4rb) :: Julia for Ruby embeds the julia language in ruby, with very basic julia types being converted to ruby objects.
+ 🏗️🏚️ [ruby-julia](https://github.com/mrkn/ruby-julia) :: Julia on Ruby (frequently updated, but supports Julia 1.1 only)
