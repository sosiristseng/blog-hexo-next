---
title: "🔖 Database in Julia"
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

General database utilities.

<!--more-->

- 🏚️ means the package may not support current versions of Julia.
- 🏗️ means the package may be a WIP.

## Portal

- [Data Science](/julia/datascience.md) section for data source, retrieval and manipulation.
- [File IO](/julia/datascience.md) section for saving / loading files.
- [Julia Databases](https://github.com/JuliaDatabases) organization.

## API

+ [DBInterface.jl](https://github.com/JuliaDatabases/DBInterface.jl) :: An abstract DBI interface to provide a database-independent API protocol that all database drivers can be expected to comply with.
+ [JDBC.jl](https://github.com/JuliaDatabases/JDBC.jl) :: Julia interface to Java database drivers.
+ [LevelDB.jl](https://github.com/jerryzhenleicai/LevelDB.jl) :: Julia interface to Google's LevelDB key value database.
+ [Memcache.jl](https://github.com/tanmaykm/Memcache.jl) :: Julia memcached client.
+ [ODBC.jl](https://github.com/quinnj/ODBC.jl) :: A low-level ODBC interface for the Julia programming language. [Tabular Data I/O in Julia](http://randyzwitch.com/julia-import-data/)
+ 🏚️ [Accumulo.jl](https://github.com/JuliaDB/Accumulo.jl) :: Apache Accumulo client.
+ 🏚️ [D4M.jl](https://github.com/achen12/D4M.jl) :: A D4M module for Julia. [D4M](http://www.mit.edu/~kepner/D4M/) was developed in MATLAB by Dr Jeremy Kepner and his team at Lincoln Labs.
+ 🏚️ [DBAPI.jl](https://github.com/JuliaDB/DBAPI.jl) :: A new database interface proposal.
+ 🏚️ [DBPerf.jl](https://github.com/JuliaDatabases/DBPerf.jl) :: The code repository that benchmarks all the Julia Database Drivers / Wrappers.
+ 🏚️ [kyotocabinet.jl](https://github.com/tuzzeg/kyotocabinet.jl) :: Implementation of Kyoto Cabinet in Julia language.
+ 🏚️ [Neo4j.jl](https://github.com/glesica/Neo4j.jl) :: Messing around with building a Neo4j driver for Julia.
+ 🏚️ [SciDB-Julia](https://github.com/Paradigm4/SciDB-Julia) :: The SciDB-Julia package allows users of Julia to interface with SciDB.
+ 🏚️ [ViewDBI.jl](https://github.com/kmsquire/ViewDBI.jl) :: View-based DBI for Julia.
+ 🏚️ [Q.jl](https://github.com/enlnt/Q.jl) :: Julia for [kdb+](https://github.com/prologic/kdb) database.

## In-Memory Storage

+ [DataFrames.jl](https://github.com/JuliaData/DataFrames.jl) :: In-memory tabular data in Julia.
+ [DataFramesMeta.jl](https://github.com/JuliaStats/DataFramesMeta.jl) :: Metaprogramming tools for `DataFrame`s and `AbstractDict` objects. These macros improve performance and provide more convenient syntax.
+ [IndexedTables.jl](https://github.com/JuliaData/IndexedTables.jl) :: Tabular data structures where some of the columns form a sorted index.
+ [Pandas.jl](https://github.com/JuliaPy/Pandas.jl) :: A Julia front-end to Python's Pandas package.
+ 🏚️ [FastGroupBy.jl](https://github.com/xiaodaigh/FastGroupBy.jl) :: Some helper functions to make some group by operations on DataFrames and IndexedTables faster.

## [HDF5](https://www.hdfgroup.org/solutions/hdf5/) format

+ [HDF5.jl](https://github.com/JuliaIO/HDF5.jl) :: Save and load data in the HDF5 file format from Julia.
+ [JLD2.jl](https://github.com/JuliaIO/JLD2.jl) :: HDF5-compatible file format in pure Julia.
+ 🏚️ [EasyData.jl](https://github.com/ma-laforge/EasyData.jl) :: Simple/Fast(+HDF5) solution to writing datasets & plots to file.

## NOSQL databases

+ [CQLdriver.jl](https://github.com/r3tex/CQLdriver.jl) :: A Julia package for interfacing with CQL compliant databases. Used with `DataFrames.jl`.
+ [DataKnots.jl](https://github.com/MechanicalRabbit/DataKnots.jl) :: an extensible, practical and coherent algebra of query combinators.

### LMDB

+ [LMDB.jl](https://github.com/wildart/LMDB.jl) :: A Julia wrapper interface to [Lightning Memory-Mapped Database](http://symas.com/mdb/) (LMDB) key-value embedded data store developed by Symas for the OpenLDAP Project.

### MongoDB

+ [Mongo.jl](https://github.com/ScottPJones/Mongo.jl) :: Mongo bindings for the Julia programming language.
+ [Mongoc.jl](https://github.com/felipenoris/Mongoc.jl) :: MongoDB bindings (newer) and a wrapper around libbson, for the Julia language.
+ 🏚️ [LibBSON.jl](https://github.com/ScottPJones/LibBSON.jl) :: libbson bindings for the Julia programming language.

### Redis

+ [Redis.jl](https://github.com/JuliaDatabases/Redis.jl) :: A fully-featured Redis client for the Julia programming language.
+ 🏚️ [Redis.jl](https://github.com/msainz/Redis.jl) :: Pure Julia implementation of a Redis client, largely based on redis-py.

## Relational Database Management Systems and SQL

+ [Octo.jl](https://github.com/wookay/Octo.jl) :: an SQL Query DSL in Julia.
+ [SQLStrings.jl](https://github.com/JuliaComputing/SQLStrings.jl) :: It provides the @sql_cmd macro to allow SQL query strings to be constructed by normal-looking string interpolation but without risking SQL formatting errors or SQL injection attacks on your application.

### MariaDB-MySQL

+ [MySQL.jl](https://github.com/JuliaDatabases/MySQL.jl) :: Julia bindings and helper functions for MariaDB/MySQL C library.
+ 🏚️ [MariaDB.jl](https://github.com/Junia18/MariaDB.jl) :: A wrapper around the MariaDB C connector.
+ 🏚️ [MySQL.jl](https://github.com/johnmyleswhite/MySQL.jl) :: MySQL DBI driver that uses the C MySQL API and obeys the DBI.jl protocol.
+ 🏚️ [SQLAlchemy.jl](https://github.com/malmaud/SQLAlchemy.jl) :: Wrapper over Python's SQLAlchemy library.

### PostgreSQL

+ [LibPQ.jl](https://github.com/invenia/LibPQ.jl) :: A Julia wrapper for the PostgreSQL libpq C library.
+ 🏚️ [DBI.jl](https://github.com/swt30/DBI.jl) :: Abstract DBI interface meant to provide a database-independent API.
+ 🏚️ [Postgres.jl](https://github.com/NCarson/Postgres.jl) :: Postgres database interface for the Julia language. {Tag: Unmaintained}
+ 🏚️ [PostgreSQL.jl](https://github.com/swt30/PostgreSQL.jl) :: An interface to PostgreSQL from Julia, [maintained from an older fork](https://github.com/JuliaDatabases/PostgreSQL.jl) use `LibPQ.jl` instead.

### SQLite

+ [SQLite.jl](https://github.com/JuliaDatabases/SQLite.jl) :: Julia interface to the SQLite library with support for operations on DataFrames.
+ 🏚️ [DBDSQLite.jl](https://github.com/JuliaDatabases/DBDSQLite.jl) :: DBI-compliant driver for SQLite3.

## Resources

+ Blog on [The Lesser Known Normal Forms of Database Design](http://www.johnmyleswhite.com/notebook/2014/09/10/the-lesser-known-normal-forms/)
