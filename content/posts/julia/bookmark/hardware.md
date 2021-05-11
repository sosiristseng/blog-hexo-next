---
title: 🔖 Hardward and Robotics in Julia
comments: false
date: 2021-04-23 14:26:35
tags: [julia, bookmark]
categories: [Julia, Bookmark]
---

> Other hardware-related software libraries[^1]

[^1]: [Julia.jl](https://github.com/svaksha/Julia.jl) is under COPYRIGHT © 2012-Now SVAKSHA, dual-licensed for the data (ODbL-v1.0+) and the software (AGPLv3+), respectively.

## See also

- [Julia robotics](https://github.com/JuliaRobotics)
- [Julia embedded](https://github.com/Julia-Embedded)
- [Julia berry](https://github.com/JuliaBerry)

<!--more-->

- 🏚️ means the package may not support current versions of Julia.
- 🏗️ means the package may be a WIP.

## APIs

+ [Instruments.jl](https://github.com/BBN-Q/Instruments.jl) :: A package for controlling laboratory instruments through Julia over TCPIP/GPIB/USB/Serial, wrapped around the NI-VISA library (which needs to be separately installed) similar to PyVISA and has some starts towards making it easier to write custom instrument drivers.
+ [NIDAQ.jl](https://github.com/JaneliaSciComp/NIDAQ.jl) :: This package provides an interface to NIDAQmx - National Instruments' driver for their data acquisition boards.

{{< admonition type=warning title="WIP or may not work" open=false >}}

+ 🏚️ [Alazar.jl](https://github.com/ajkeller34/Alazar.jl) :: [AlazarTech](http://www.alazartech.com/) API wrapper for Julia.
+ 🏚️ [DIDebug.jl](https://github.com/Keno/DIDebug.jl) :: Debug the destination index in an x86 computer architecture using the standardized DWARF-ELF debugging data format.
+ 🏚️ [FTD2XX.jl](https://github.com/cstook/FTD2XX.jl) :: Wrapper for FTDI [FTD2XX](http://www.ftdichip.com/Drivers/D2XX.htm) library.
+ 🏚️ [MichrochipRTDM.jl](https://github.com/cstook/MicrochipRTDM.jl) :: A bunch of functions usefull for working with MicrochipTM's RTDM interface.
+ 🏚️ [RdRand.jl](https://github.com/SamChill/RdRand.jl) :: Generate random numbers using Intel's RDRAND instruction.
+ 🏚️ [Vectorize.jl](https://github.com/rprechelt/Vectorize.jl) :: Cross-platform vectorization of Julia code using Accelerate, VML, Yeppp! and LLVM.
+ 🏚️ [VISA.jl](https://github.com/ajkeller34/VISA.jl) :: [VISA](https://www.ni.com/visa/) wrapper for Julia.
+ 🏚️ [ZenFab.jl](https://github.com/FactoryOS/ZenFab.jl) :: Software for using digital manufacturing devices.
{{< /admonition >}}

## Computer-assisted design / manufacture (CAD/CAM)

+ [Devices.jl](https://github.com/PainterQubits/Devices.jl) :: For simplified generation of device CAD files for superconducting device design.
+ [LTspice.jl](https://github.com/cstook/LTspice.jl) :: It provides a julia interface to [LTspice](http://www.linear.com/designtools/software/#LTspice).
+ 🏚️ [Gcode.jl](https://github.com/sjkelly/Gcode.jl) :: A wrapper for writing [Gcode](http://en.wikipedia.org/wiki/Gcode) from Julia easily.

## Embedded Systems

[Embedded Systems](https://en.wikipedia.org/wiki/Category:Embedded_systems)

+ [JuliaBerry.jl](https://github.com/JuliaBerry/JuliaBerry.jl) :: An omnibus package with a high level API for controlling peripherals on the Raspberry Pi computer.
+ [PiGPIO.jl](https://github.com/JuliaBerry/PiGPIO.jl) :: Manage external hardware using GPIO pins on the Raspberry Pi.

{{< admonition type=warning title="WIP or may not work" open=false >}}

+ 🏚️ [Arduino.jl](https://github.com/ihnorton/Arduino.jl) :: Basic Arduino interface for Julia.
+ 🏚️ [TinyG.jl](https://github.com/sjkelly/TinyG.jl) :: This package provides support for CNC controllers running the TinyG firmware, principally developed by Synthetos.
{{< /admonition >}}

## Robots

+ [Caesar.jl](https://github.com/JuliaRobotics/Caesar.jl) :: Robot toolkit: Towards non-parametric and parametric navigation solutions.
+ [MotionCaptureJointCalibration.jl](https://github.com/JuliaRobotics/MotionCaptureJointCalibration.jl) :: Kinematic calibration for robots using motion capture data.
+ [RigidBodyDynamics.jl](https://github.com/JuliaRobotics/RigidBodyDynamics.jl) :: Julia implementation of various rigid body dynamics and kinematics algorithms.
+ [RobotOS.jl](https://github.com/Julia-Embedded/RobotOS.jl) :: Julia interface to [ROS](http://wiki.ros.org/) (Robot Operating System).

{{< admonition type=warning title="WIP or may not work" open=false >}}

+ 🏚️ [FPTControl.jl](https://github.com/krisztiankosi/FPTControl.jl) :: Fixed Point Transformation Based Control.
+ 🏚️ [Robotics.jl](https://github.com/cdsousa/Robotics.jl) :: Toolbox for (serial manipulator) robotics, focusing robot dynamics.
{{< /admonition >}}

## TouchScreen

{{< admonition type=warning title="WIP or may not work" open=false >}}

+ 🏚️ [Taste.jl](https://github.com/jiahao/Taste.jl) :: A simple package for computerized human-computer olfaction and gustation interactivity that supports integrated Instant Olfaction Technology Screens.
{{< /admonition >}}