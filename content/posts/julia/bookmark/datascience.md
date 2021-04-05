---
title: "🔖 Data science in Julia"
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

This section focuses on data source, retrieval and manipulation.

<!--more-->

Not all data sets and data management are freely available. (Research Data Management, Clinical Research Data, Metadata, Library data, Computational reproducibility, etc..)

- 🏚️ means the package may not support current versions of Julia.
- 🏗️ means the package may be a WIP.

## Portal

- [Database](database.md) for storing data.
- [Julia ML](https://github.com/JuliaML)
- [Julia Data](https://github.com/JuliaData)
- [Julia stats](https://github.com/JuliaStats)
+ [Julia-data-science](https://github.com/tirthajyoti/Julia-data-science) :: Notebooks on DS basics with Julia and why it is suitable for data science.

## Loading datasets

+ [DataDeps.jl](https://github.com/oxinabox/DataDeps.jl): reproducible data setup for reproducible science.
+ [FaceDatasets.jl](https://github.com/dfdx/FaceDatasets.jl) :: A package for easy access to face-related datasets.
+ [Faker.jl](https://github.com/neomatrixcode/Faker.jl) :: A package that generates fake data.
+ [MLDatasets](https://github.com/JuliaML/MLDatasets.jl) :: Utility package for accessing common Machine Learning datasets in Julia
+ [PubMedMiner.jl](https://github.com/JuliaHealth/PubMedMiner.jl) :: Return and analyze a PubMed/Medline search using MESH descriptors and their corresponding UMLS concept.
+ [RDatasets.jl](https://github.com/JuliaStats/RDatasets.jl) :: Julia package for loading many of the datasets available in R.
+ [WorldBankData.jl](https://github.com/4gh/WorldBankData.jl) :: The [World Bank](https://data.worldbank.org/) data.
+ 🏚️ [CommonCrawl.jl](https://github.com/tanmaykm/CommonCrawl.jl) :: Interface to common crawl dataset on Amazon S3.
+ 🏚️ [Maker.jl](https://github.com/tshort/Maker.jl) :: A tool like `make` for data analysis in Julia.
+ 🏚️ [ModelerToolbox.jl](https://github.com/spencerlyon2/ModelerToolbox.jl) :: Utilities for working with many different versions/parameterizations of models.
+ 🏚️ [NetflixPrize.jl](https://github.com/jiahao/NetflixPrize.jl) :: Julia package for handling the Netflix Prize data set of 2006.
+ 🏚️ [PublicSuffix.jl](https://github.com/tanmaykm/PublicSuffix.jl) :: Julia Interface for working with the [Public Suffix List](http://publicsuffix.org/).
+ 🏚️ [REDCap.jl](https://github.com/bcbi/REDCap.jl) :: A Julia frontend for the [REDCap](https://en.wikipedia.org/wiki/REDCap) API.
+ 🏚️ [Socrata.jl](https://github.com/drewgendreau/Socrata.jl) :: An API wrapper for accessing the Socrata Open Data API and importing data into a DataFrame. Socrata is an open data platform used by many local and State governments as well as by the Federal Government in USA.
+ 🏚️ [UCIMLRepo.jl](https://github.com/siddhantjain/UCIMLRepo.jl) :: A small package to allow for easy access and download of datasets from UCI ML repository.

## Data Manipulation

+ [DataFrames.jl](https://github.com/JuliaData/DataFrames.jl) :: In-memory tabular data in Julia
+ [IndexedTables.jl](https://github.com/JuliaData/IndexedTables.jl) :: Tabular data structures where some of the columns form a sorted index.
+ [Pandas.jl](https://github.com/JuliaPy/Pandas.jl) :: A Julia front-end to Python's Pandas package
+ 🏚️ [StructuredQueries.jl](https://github.com/davidagold/StructuredQueries.jl) :: Data manipulation facilities for Julia.

## Where are the data sets

See [datasource](/datasource.md) section.
