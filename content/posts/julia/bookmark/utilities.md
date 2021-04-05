---
title: "🔖 Utilities in Julia"
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

# Utilities

- 🏚️ means the package may not support current versions of Julia.
- 🏗️ means the package may be a WIP.

## General Utilities

+ [FilePaths.jl](https://github.com/Rory-Finnegan/FilePaths.jl) ::  A type based approach to working with filesystem paths in julia.
+ [SO.jl](https://github.com/dlfivefifty/SO.jl) :: Personal macros for Julia by @dlfivefifty.
+ 🏚️ [Events.jl](https://github.com/SimonDanisch/Events.jl) :: Simple Event system.
+ 🏚️ [Graze.jl](https://github.com/iamed2/Graze.jl) :: A feed reader.
+ 🏚️ [Humanize.jl](https://github.com/IainNZ/Humanize.jl) :: Humanize numbers, based on the Python package [humanize](https://github.com/jmoiron/humanize) by @jmoiron. (No `Project.toml`)
+ 🏚️ [Osmosis.jl](https://github.com/SimonDanisch/Osmosis.jl) :: Chat client for Julia.
+ 🏚️ [Utils.jl](https://github.com/SimonDanisch/Utils.jl) :: Some utility functions by @SimonDanisch.


## File Compression

+ [Blosc.jl](https://github.com/JuliaIO/Blosc.jl) :: The Blosc Module provides fast lossless compression for the Julia language by interfacing the Blosc Library, currently limited to 32-bit buffer sizes.
+ [GZip.jl](https://github.com/JuliaIO/GZip.jl) :: A Julia interface for gzip functions in zlib.
+ [InfoZIP.jl](https://github.com/samoconnor/InfoZIP.jl) :: ZIP Archive Interface. Wrapper for Info-ZIP (and ZipFile.jl).
+ [Libz.jl](https://github.com/BioJulia/Libz.jl) :: Yet another zlib interface for Julia.
+ [ZipFile.jl](https://github.com/fhs/ZipFile.jl) :: Read/Write ZIP archives in Julia.
+ 🏚️ [gzip.jl](https://github.com/jvns/gzip.jl) :: GunZip in Julia.
+ 🏚️ [Snappy.jl](https://github.com/bicycle1885/Snappy.jl) :: A Julia wrapper for the snappy library - a compression/decompression library focusing on speed. (No `Project.toml`)
+ 🏚️ [Zlib.jl](https://github.com/dcjones/Zlib.jl) :: Zlib bindings for Julia.


## Microsoft Windows

+ [WAV.jl](https://github.com/dancasimiro/WAV.jl) :: Julia package for working with WAV files.
+ [XCB.jl](https://github.com/JuliaGL/XCB.jl) :: XCB windowing library wrapper.
+ 🏚️ [COMCall.jl](https://github.com/ihnorton/COMCall.jl) :: COM Interface for Julia.
+ 🏚️ [IniFile.jl](https://github.com/JuliaIO/IniFile.jl) :: Reading and writing Windows-style INI files. (No `Project.toml`)
+ 🏚️ [IUP.jl](https://github.com/joa-quim/IUP.jl) :: Julia interface to IUP windowing toolkit.
+ 🏚️ [RawFile.jl](https://github.com/tknopp/RawFile.jl) (No `Project.toml`)
+ 🏚️ [Win32GUIDemo.jl](https://github.com/ihnorton/Win32GUIDemo.jl) :: Call the Windows API with these Win32 GUI examples.
+ 🏚️ [Wine.jl](https://github.com/Keno/Wine.jl) :: Sniffing the wineserver protocol for fun and profit.
+ 🏚️ [WinReg.jl](https://github.com/simonbyrne/WinReg.jl) ::  Windows Registry interface for Julia. (No `Project.toml`)
+ 🏚️ [WinUser.jl](https://github.com/JuliaGL/WinUser.jl) :: wrapper for windows native windowing functions.


## Terminal

+ [ArgParse.jl](https://github.com/carlobaldassi/ArgParse.jl) :: Package for parsing command-line arguments to Julia programs.
+ [Comonicon.jl](https://github.com/Roger-luo/Comonicon.jl) :: command line interfaces.
+ [DocOpt.jl](https://github.com/docopt/DocOpt.jl) :: generates a command-line arguments parser from human-readable usage patterns and it is a port of DocOpt written in the Julia language.
+ [FTPClient.jl](https://github.com/invenia/FTPClient.jl) :: Julia FTP client using LibCURL.jl.
+ [LibArchive.jl](https://github.com/yuyichao/LibArchive.jl) :: Wrapper for [libarchive](http://www.libarchive.org/).
+ [OhMyREPL.jl](https://github.com/KristofferC/OhMyREPL.jl) :: Syntax highlighting and other enhancements for the Julia REPL.
+ [ProgressMeter.jl](https://github.com/timholy/ProgressMeter.jl) :: Progress meter for long-running computations.
+ [REPLMods.jl](https://github.com/spencerlyon2/REPLMods.jl) :: Mod your REPL and evaluate directly into any module on your path or defined within the current working module.
+ [Termbox.jl](https://github.com/jgoldfar/Termbox.jl) :: A wrapper for Termbox, a lightweight text-based user interface library. OSX and Linux are currently supported, and the low-level interface is complete enough to re-implement the demo from the original package (see test/outputexample.jl).
+ [TerminalExtensions.jl](https://github.com/Keno/TerminalExtensions.jl) :: A package that makes Julia take advantage of cool terminal emulator features.
+ [TerminalMenus.jl](https://github.com/nick-paul/TerminalMenus.jl) :: Simple interactive menus in the terminal.
+ [VT100.jl](https://github.com/Keno/VT100.jl) :: Terminal Emulation for terminal UI verification.
+ 🏚️ [AnsiColor.jl](https://github.com/Aerlinger/AnsiColor.jl) :: Support for ANSI colored strings in Julia. Supported in REPL/Shell environment for both Unix and Mac.
+ 🏚️ [CLI.jl](https://github.com/Roger-luo/CLI.jl) :: A library for automatically generating command line interfaces from absolutely Julia object, inspired by `python-fire`.
+ 🏚️ [GMT-julia-headers](https://github.com/meggart/GMT-julia-headers)
+ 🏚️ [LineEdit.jl](https://github.com/Keno/LineEdit.jl) :: Julia readline-like library.
+ 🏚️ [MetaTools.jl](https://github.com/burrowsa/MetaTools.jl) :: Handy MetaProgramming whatnots for Julia.
+ 🏚️ [NCurses.jl](https://github.com/Keno/NCurses.jl) :: NCurses bindings for Julia.
+ 🏚️ [REPL.jl](https://github.com/Keno/REPL.jl) :: Pure-julia REPL implementation.
+ 🏚️ [REPLCompletions.jl](https://github.com/Keno/REPLCompletions.jl) :: Tab completions for your Julia REPL.
+ 🏚️ [SaveREPL.jl](https://github.com/sjkelly/SaveREPL.jl) :: A package for saving entries in the Jula REPL.
+ 🏚️ [TerminalUI.jl](https://github.com/Keno/TerminalUI.jl) :: Terminal User Interface.
+ 🏚️ [TermWin.jl](https://github.com/tonyhffong/TermWin.jl) :: NCurses based GUI helper and data navigators.
+ 🏚️ [toolbox.jl](https://github.com/natj/toolbox.jl) :: Small tools and snippets used by @natj with julia.
