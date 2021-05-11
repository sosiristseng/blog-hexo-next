---
title: 🔖 Space science in Julia
comments: false
date: 2021-04-23 15:28:42
tags: [julia, bookmark]
categories: [Julia, Bookmark]
---

> Aeronautics, Astronomy, [Space science](https://en.wikipedia.org/wiki/Outline_of_space_science) related packages[^1]

[^1]: [Julia.jl](https://github.com/svaksha/Julia.jl) is under COPYRIGHT © 2012-Now SVAKSHA, dual-licensed for the data (ODbL-v1.0+) and the software (AGPLv3+), respectively.

## See also

- [Julia space](https://github.com/JuliaSpace)
- [Julia Astro](https://github.com/juliaastro)

<!--more-->

- 🏚️ means the package may not support current versions of Julia.
- 🏗️ means the package may be a WIP.

## Aeronautics

{{< admonition type=warning title="WIP or may not work" open=false >}}
+ 🏚️ [ices-desktop](https://github.com/abieler/ices-desktop).
+ 🏚️ [Spice.jl](https://github.com/abieler/Spice.jl) :: NASA's SPICE observation geometry system.
{{< /admonition >}}

## Astronomy

+ [Astro.jl](https://github.com/cormullion/Astro.jl) :: Jan Meeus astronomical formulas and some time/date code in Julia.
+ [Astrodynamics.jl](https://github.com/helgee/Astrodynamics.jl) :: An astrodynamics library in Julia.
+ [AstroImages.jl](https://github.com/JuliaAstro/AstroImages.jl) :: Plots.jl and Images.jl integration of Astronomical Images for Julia.
+ [AstroLib.jl](https://github.com/JuliaAstro/AstroLib.jl) :: Bundle of small astronomical and astrophysical routines, based on IDL Astronomy User's Library (AstroLib).
+ [Cosmology.jl](https://github.com/JuliaAstro/Cosmology.jl) :: Cosmology library for Julia.
+ [DustExtinction.jl](https://github.com/JuliaAstro/DustExtinction.jl) :: Models for the interstellar extinction due to dust.
+ [ERFA.jl](https://github.com/JuliaAstro/ERFA.jl) :: Julia wrapper for [liberfa](https://github.com/liberfa/erfa).
+ [FITSIO.jl](https://github.com/JuliaAstro/FITSIO.jl) :: Flexible Image Transport System (FITS) support for Julia.
+ [JPLEphemeris.jl](https://github.com/JuliaAstro/JPLEphemeris.jl) :: The JPL Development Ephemerides are the results of simulations of the Solar System used for spacecraft navigation and astronomical purposes.
+ [Reproject.jl](https://github.com/JuliaAstro/Reproject.jl) :: Reproject Astronomical Images from one world coordinate to another.
+ [SatelliteToolbox.jl](https://github.com/JuliaSpace/SatelliteToolbox.jl) :: A toolbox for satellite analysis written in julia language.
+ [SkyCoords.jl](https://github.com/JuliaAstro/SkyCoords.jl) :: Astronomical coordinate systems in Julia.
+ [WCS.jl](https://github.com/JuliaAstro/WCS.jl) :: Astronomical [World Coordinate System](http://www.atnf.csiro.au/people/mcalabre/WCS/) library for Julia.

{{< admonition type=warning title="WIP or may not work" open=false >}}

+ 🏚️ [AperturePhotometry.jl](https://github.com/kbarbary/AperturePhotometry.jl) :: Astronomical photometry library for Julia.
+ 🏚️ [CasaCore.jl](https://github.com/mweastwood/CasaCore.jl) :: A Julia wrapper of CasaCore. (No `Project.toml`)
+ 🏚️ [Celeste.jl](https://github.com/jeff-regier/Celeste.jl) :: Scalable inference for a generative model of astronomical images. (No `Project.toml`)
+ 🏚️ [Interplanetary.jl](https://github.com/crbinz/Interplanetary.jl) :: Functions for low-fidelity interplanetary navigation and guidance simulations. (No `Project.toml`)
+ 🏚️ [Jadex.jl](https://github.com/autocorr/Jadex.jl) :: Julia port of RADEX.
+ 🏚️ [SDSS.jl](https://github.com/kbarbary/SDSS.jl) :: Collection of code snippets for querying and reading Sloan Digital Sky Survey data.
+ 🏚️ [SGP4.jl](https://github.com/crbinz/SGP4.jl) :: Julia wrapper for the SGP4 satellite propagation model. (No `Project.toml`)
+ 🏚️ [WCSLIB.jl](https://github.com/JuliaAstro/WCSLIB.jl) :: wcslib wrapper for Julia.
{{< /admonition >}}

### Resources

{{< admonition type=warning title="WIP or may not work" open=false >}}
+ 🏚️ [ioa-julia-tutorials](https://github.com/swt30/ioa-julia-tutorials) :: An introductory Julia tutorial for the Institute of Astronomy, University of Cambridge
{{< /admonition >}}

## Space

+ [Airship.jl](https://github.com/ordovician/Airship.jl) :: Julia code for performing temperature, pressure and volume and buoyancy calculations.
+ [SPICE.jl](https://github.com/JuliaAstro/SPICE.jl) :: a Julia wrapper for the [SPICE toolkit](https://naif.jpl.nasa.gov/naif/index.html) which is provided by NASA's Navigation and Ancillary Information Facility (NAIF). It provides functionality to read SPICE data files and compute derived observation geometry such as altitude, latitude/longitude and lighting angles.