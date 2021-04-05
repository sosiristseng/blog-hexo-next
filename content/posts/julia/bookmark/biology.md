---
title: "🔖 Biology in Julia"
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

Bioinformatics, genomics, agriculture, food science, medicine, genetic engineering, etc...

<!--more-->

- 🏚️ means the package may not support current versions of Julia.
- 🏗️ means the package may be a WIP.

## API

APIs for biology and medicine databases.

+ [BioServices.jl](https://github.com/BioJulia/BioServices.jl) :: Julia interface to APIs for various bio-related web services.
+ [BioMedQuery.jl](https://github.com/JuliaHealth/BioMedQuery.jl) :: Julia utilities to process and save results from BioMedical databases/APIs.
+ [PubChemCrawler.jl](https://github.com/JuliaHealth/PubChemCrawler.jl) :: Utilities to programmatically query the PubChem database.
+ [PubMedMiner.jl](https://github.com/JuliaHealth/PubMedMiner.jl) :: Julia package for studying co-occurrences in PubMed articles.

## Modeling

+ [Gillespie.jl](https://github.com/sdwfrost/Gillespie.jl) :: Stochastic Gillespie-type simulations using Julia.
+ [Pathogen.jl](https://github.com/jangevaa/Pathogen.jl) :: Utilities to simulate and perform inference of disease dynamics.

## Bioinformatics

As well as genomics.

+ [Ensemble.jl](https://github.com/farr/Ensemble.jl) :: Stochastic samplers based on the "stretch move" for ensembles of walkers.
+ [FastaIO.jl](https://github.com/carlobaldassi/FastaIO.jl) :: Utilities to read/write FASTA format files in Julia.
+ [MethylUtils.jl](https://github.com/nw11/MethylUtils.jl) :: Tools for WGBS Methylation analysis.
+ [MIToS.jl](https://github.com/diegozea/MIToS.jl) :: Mutual Information Tools for protein Sequence analysis in Julia.
+ [MMTF.jl](https://github.com/BioJulia/MMTF.jl) :: The Macromolecular Transmission Format (MMTF) is a new compact binary format to transmit and store biomolecular structures for fast 3D visualization and analysis.
+ [NormalizeQuantiles.jl](https://github.com/oheil/NormalizeQuantiles.jl) :: implements quantile normalization
+ [PlmDCA](https://github.com/pagnani/PlmDCA) :: Pseudo Likelihood Maximization for protein in Julia.
+ [SpeedDate.jl](https://github.com/Ward9250/SpeedDate.jl) :: A utility for rapidly estimating coalescence times between sequences.
+ [XSim.jl](https://github.com/reworkhow/XSim.jl) :: A fast and user-friendly tool to simulate sequence data and complicated pedigree structures.
+ 🏚️ [BioArgParse.jl](https://github.com/Ward9250/BioArgParse.jl) :: Extension to 'ArgParse.jl', enabling parsing of command line parameters to types in 'Bio.jl'.
+ 🏚️ [BioFeatures.jl](https://github.com/nw11/BioFeatures.jl).
+ 🏚️ [BismarkSummary.jl](https://github.com/nw11/BismarkSummary.jl) :: Basic summary of multiple Bismark runs.
+ 🏚️ [Circuitscape.jl](https://github.com/tanmaykm/Circuitscape.jl) :: The Julia implementation of the [Circuitscape lib in Python](http://www.circuitscape.org/) that uses electronic circuit theory to solve problems in landscape ecology.
+ 🏚️ [COSMIC.jl](https://github.com/haploxer/COSMIC.jl) :: Data analysis engine for [COSMIC](http://cancer.sanger.ac.uk/cosmic) written in Julia.
+ 🏚️ [Crispulator.jl](https://github.com/tlnagy/Crispulator.jl) :: A discrete simulation tool for designing pooled genetic screens.
+ 🏚️ [DynamicTimeWarp.jl](https://github.com/joefowler/DynamicTimeWarp.jl) :: Implement Dynamic Time Warping for sequence alignment in Julia.
+ 🏚️ [EMIRT.jl](https://github.com/seung-lab/EMIRT.jl) :: Electron Microscopy Image Reconstruction Toolbox using julia language.
+ 🏚️ [FusionDirect.jl](https://github.com/OpenGene/FusionDirect.jl) :: Detect gene fusion directly from raw fastq files.
+ 🏚️ [GenomeAnnotations.jl](https://github.com/nw11/GenomeAnnotations.jl) :: Manage Local Genome Annotation files.
+ 🏚️ [GenomicTiles.jl](https://github.com/nw11/GenomicTiles.jl)
+ 🏚️ [gtf-parse-off](https://github.com/dcjones/gtf-parse-off) :: Experiments with parsing gene transfer format (GTF).
+ 🏚️ [HyperNEAT.jl](https://github.com/kzahedi/HyperNEAT.jl) :: A generative encoding for evolving ANN based on the NeuroEvolution of Augmented Topologies (NEAT) algorithm for evolutionary computation.
+ 🏚️ [OBC.jl](https://github.com/binarybana/OBC.jl) :: Optimal Bayesian classification for RNA-Seq data.
+ 🏚️ [OpenGene.jl](https://github.com/OpenGene/OpenGene.jl) :: OpenGene core library in Julia.
+ 🏚️ [Pagel.jl](https://github.com/porterjamesj/Pagel.jl) :: Detect correlated evolution on phylogenies.
+ 🏚️ [ProgressiveAligner.jl](https://github.com/latticetower/ProgressiveAligner.jl) :: Progressive alignment scripts for protein sequences.
+ 🏚️ [PseudoGenomes.jl](https://github.com/nw11/PseudoGenomes.jl) :: Read alleles without a VCF parser.
+ 🏚️ [PureSeq.jl](https://github.com/slundberg/PureSeq.jl) :: Code for the Pure-seq project.
+ 🏚️ [Rosalind.jl](https://github.com/PilgrimShadow/Rosalind.jl) :: A bioinformatics library for solving problems from rosalind.info.
+ 🏚️ [seqhax.jl](https://github.com/kdmurray91/seqhax.jl) :: yet another NGS command.
+ 🏚️ [smoothlife-jl](https://github.com/jamak/smoothlife-jl) :: an implementation of the SmoothLife algorithm in Julia.
+ 🏚️ [Subsequences.jl](https://github.com/WestleyArgentum/Subsequences.jl) :: A package for finding longest common and longest contiguous subsequences.
+ 🏚️ [taxize.jl](https://github.com/sckott/taxize.jl) :: A taxonomic toolbelt for Julia.
+ 🏚️ [TimeTrees.jl](https://github.com/tgvaughan/TimeTrees.jl) :: Phylogenetic tree type for julia.
+ 🏚️ [VariantCall.jl](https://github.com/mgvel/VariantCall.jl).
+ 🏚️ [YARS.jl](https://github.com/kzahedi/YARS.jl) :: YARS communication for RNA/proteins.
+ Bioinformatics.jl(404) :: Helper functions for bioinformatics and rosalind.info problems.
+ HTSLIB.jl(404) :: A julia wrapper of htslib for accessing common high-throughput sequencing data file formats such as BAM/SAM files.
+ PedModule.jl(404) :: Geno-type pedigree module.

### The [BioJulia](https://github.com/BioJulia) organization

+ [BioAlignments.jl](https://github.com/BioJulia/BioAlignments.jl) ::  Sequence alignment tools in BioJulia
+ [BioSequences.jl](https://github.com/BioJulia/BioSequences.jl) :: Biological sequences for the julia language.
+ [BioServices.jl](https://github.com/BioJulia/BioServices.jl) :: Julia interface to APIs for various bio-related web services
+ [BioStructures.jl](https://github.com/BioJulia/BioStructures.jl) :: A Julia package to read, write and manipulate macromolecular structures (particularly proteins).
+ [BioSymbols.jl](https://github.com/BioJulia/BioSymbols.jl) :: Nucleic and amino acid primitive types.
+ [BioTools.jl](https://github.com/BioJulia/BioTools.jl) :: Interfaces to common external biological tools from julia scripts and programs (e.g. BLAST).
+ [GeneticVariation.jl](https://github.com/BioJulia/GeneticVariation.jl) :: types and methods for working with genetic variation.
+ [GenomeGraphs.jl](https://github.com/BioJulia/GenomeGraphs.jl) ::  A modern genomics framework for julia
+ [GenomicFeatures.jl](https://github.com/BioJulia/GenomicFeatures.jl) :: utilities for working with interval based genomic annotations.
+ [IntervalTrees.jl](https://github.com/BioJulia/IntervalTrees.jl) :: A data structure for efficient manipulation of sets of intervals.
+ [KmerAnalysis.jl](https://github.com/BioJulia/KmerAnalysis.jl) ::  Kmer counting algorithms and count-data utilities for the BioJulia framework

### Phylogeny

Evolution trees from biosequences.

+ [Phylogenies.jl](https://github.com/BioJulia/Phylogenies.jl) :: Phylogenetic trees and geneologies
+ [PhyloNetworks.jl](https://github.com/crsl4/PhyloNetworks.jl) :: A Julia package for statistical inference, data manipulation and visualization of phylogenetic networks.
+ [PhyloTrees.jl](https://github.com/jangevaare/PhyloTrees.jl) :: Phylogenetic tree simulation.

## Genome Wide Association Study (GWAS)

+ [JWAS.jl](https://github.com/reworkhow/JWAS.jl) :: An open-source software tool written in Julia for Bayesian multiple regression methods applied to genome-wide association studies and genomic prediction.
+ [MendelBase.jl](https://github.com/OpenMendel/MendelBase.jl) :: contains the base functions of OpenMendel.
+ [SnpArrays.jl](https://github.com/OpenMendel/SnpArrays.jl) :: provides utilities for handling compressed storage of biallelic SNP (Single-Nucleotide Polymorphism) data.
+ 🏚️ [AlignmentStatistics.jl](https://github.com/DanielHoffmann32/AlignmentStatistics.jl) :: A package for statistical analyses of sequence alignments.
+ 🏚️ [StatGenData.jl](https://github.com/dmbates/StatGenData.jl) :: Statistical analysis of genomic data.
+ 🏚️ [VarianceComponentTest.jl](https://github.com/Tao-Hu/VarianceComponentTest.jl) :: A Julia package for performing exact variance component tests in genome-wide association study (GWAS).

### Resources

+ Wikipedia's [list of RNA-Seq bioinformatics tools](http://en.wikipedia.org/wiki/List_of_RNA-Seq_bioinformatics_tools), not many of which are in Julia but depending on the language, they may have an API.
+ [Data Analysis for Genomics](https://genomicsclass.github.io/book/) : This is entirely in R-language but learners can use it to learn Julia.
+ 🏚️ [BioTutorials](https://github.com/BioJulia/BioTutorials) :  Tutorial Notebooks of BioJulia

## Metabolic networks

+ [COBRA.jl](https://github.com/opencobra/COBRA.jl) :: COnstraint-Based Reconstruction and Analysis, used to perform COBRA analyses such as Flux Balance Anlysis (FBA), Flux Variability Anlysis (FVA), or any of its associated variants such as `distributedFBA`.

## Healthcare

[Wikipedia | Biomedicine](https://en.wikipedia.org/wiki/Category:Biomedicine)

See [Julia Health](https://juliahealth.org) organization.

+ [DICOM](https://github.com/JuliaHealth/DICOM.jl) :: Julia package for reading and writing DICOM (Digital Imaging and Communications in Medicine) files.
+ [openBF](https://github.com/INSIGNEO/openBF) :: A finite-volume solver for elastic arterial blood flow networks.

## BioStatistics

+ 🏚️ [pedigree.jl](https://github.com/Rpedigree/pedigree.jl) :: Pedigree extractors and representation as a Julia type with two integer members, sire and dam. A parent not in the pedigree is coded as 0.
+ [ROC.jl](https://github.com/diegozea/ROC.jl) :: Receiver Operating Characteristic (ROC) Curve for Julia Language.

## Ecology

Also see [EcoJulia](https://ecojulia.org) organization.

+ [Diversity.jl](https://github.com/richardreeve/Diversity.jl) :: Diversity analysis package for Julia, with submodules containing standard ecological and other diversity measures.
+ [EcologicalNetwork.jl](https://github.com/EcoJulia/EcologicalNetworks.jl) :: Measure various aspects of the structure of ecological networks in Julia.
+ [FishABM.jl](https://github.com/jangevaare/FishABM.jl) :: An agent based life cycle model for managed fisheries.
+ [GBIF.jl](https://github.com/EcoJulia/GBIF.jl) :: Functions and types to access GBIF data from Julia.
+ [SpatialEcology.jl](https://github.com/EcoJulia/SpatialEcology.jl) :: Julia framework for spatial ecology - data types and utilities.

### [Agronomy](https://en.wikipedia.org/wiki/Category:Agronomy) and [Forest Modelling](https://en.wikipedia.org/wiki/Category:Forest_modelling)

+ [LAIscript](https://github.com/ETC-UA/LAIscript) :: scripts to automatically run LAI calculations with ODBC link to custom database.
+ [LeafAreaIndex.jl](https://github.com/ETC-UA/LeafAreaIndex.jl) :: Package to calculate Leaf Area Index from Hemisperical Images.

### Aquatic Ecology

+ 🏚️ [Iceberg.jl](https://github.com/njwilson23/Iceberg.jl) :: Ice-seawater interface calculations using level set methods.
+ TEOS.jl(404) :: Julia wrapper for TEOS-10 Gibbs Seawater Oceanographic Toolbox.

## Molecular Biology

+ 🏚️ [EvoDuplexes.jl](https://github.com/timbitz/EvoDuplexes.jl) :: A Julia package to fold all local and long-range RNA duplexes.
+ [CellFishing.jl ](https://github.com/bicycle1885/CellFishing.jl) :: (cell finder via hashing) is a tool to find similar cells of query cells based on their transcriptome expression profiles, a.k.a. single-cell sequencing.

## [Microscopy](https://en.wikipedia.org/wiki/Microscopy)

+ [MicroscopyLabels.jl](https://github.com/tlnagy/MicroscopyLabels.jl) :: Embed annotations in your microscopy images.


## Neuroscience

[CodeNeuro](http://codeneuro.org/) :: Bringing neuroscience and data science together.

+ [BrainWave.jl](https://github.com/sam81/BrainWave.jl) :: Julia functions to process electroencephalographic (EEG) recordings.
+ [DCEMRI.jl](https://github.com/davidssmith/DCEMRI.jl) :: A Fast, Validated Toolkit for Dynamic Contrast Enhanced MRI Analysis. A paper on the code is in press at [PeerJ](https://peerj.com/preprints/670/).
+ [EEG.jl](https://github.com/codles/EEG.jl) :: Process EEG files in Julia.
+ [NeuroAnalysis.jl](https://github.com/babaq/NeuroAnalysis.jl) :: Julia package for neural signal analysis.
+ [NeuronBuilder](https://github.com/Dhruva2/NeuronBuilder) :: Builds conductance based neural networks iteratively, from ion channels and synapses.
+ [OpenEphysLoader.jl](https://github.com/galenlynch/OpenEphysLoader.jl) :: A set of tools to load data written by the Open Ephys GUI.
+ 🏚️ [NEAT.jl](https://github.com/Andy-P/NEAT.jl) :: Julia implemention of NEAT (NeuroEvolution of Augmenting Topologies) algorithm.
+ 🏚️ [SkullSegment.jl](https://github.com/simonster/SkullSegment.jl) :: Macaque brain and skull extraction tools.
+ 🏚️ [SpikeSorter.jl](https://github.com/grero/SpikeSorter.jl) :: Spike sorting tool for experimental neuroscientists.

## [Pharmacology](https://en.wikipedia.org/wiki/Pharmacology)

Also see [Pumas AI](https://github.com/PumasAI), Pharmaceutical Modeling and Simulation in Julia.

+ [DataInterpolations.jl](https://github.com/PumasAI/DataInterpolations.jl) :: A library of data interpolation and smoothing functions.
+ [PumasTutorials.jl](https://github.com/PumasAI/PumasTutorials.jl) :: Tutorials for pharmaceutical modeling and simulation with Pumas.jl. http://tutorials.pumas.ai

## Resources and Teaching

__NotaBene__:: Some resources and teaching aids listed here are not Julia language specific but you may be able to find something common and useful that can be reused and shared with attribution if it is CC-licensed.

+ A google document listing [Python for biologists resources](https://docs.google.com/spreadsheets/d/1BjKsN0B1hqd4dJW5slZ5KPuToCjSMRyA7Bl8MwWrbS4/edit#gid=0) by Lenny Teytelman (@lteytelman on twitter).
+ [Software Carpentry](https://software-carpentry.org/lessons.html) teaching material.
+ [Train online @ EMBL-EBI](https://www.ebi.ac.uk/training/on-demand) provides free courses on Europe's most widely used data resources, created by experts at EMBL-EBI and collaborating institutes.
+ [TrainingPhyloIntro](https://github.com/aidanbudd/trainingPhyloIntro) :: Practical exercises and slides for teaching computational molecular evolution.
+ [capetown2014](https://github.com/aidanbudd/capetown2014) :: Teaching material for EMBO Practical Course on Computational analysis of protein-protein interactions - From sequences to networks run in Cape Town 2014.
+ [course_EMBO_at_TGAC_PPI_Sep2015](https://github.com/aidanbudd/course_EMBO_at_TGAC_PPI_Sep2015) :: Program and some material for EMBO Practical Course on computational analysis of protein-protein interactions: From sequences to networks, taking place at TGAC, Norwich, UK, Sep-Oct 2015.
+ Ian Quigley's (@mucociliary on twitter) notes on teaching [applied bioinformatics / compbio](http://daudin.icmb.utexas.edu/wiki/index.php/List_of_sessions).
+ [Ubiquitous Genomics](http://ubiquitousgenomics.teamerlich.org) :: COMSE6998/ Class 2015 by Prof. Yaniv Erlich. The [source is available on github](https://github.com/erlichya/ubiquitousgenomics).


