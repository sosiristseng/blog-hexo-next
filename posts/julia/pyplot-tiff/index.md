# Export to TIFF in PyPlot.jl (matplotlib)


Export to TIFF image for publications.

```julia
fig.savefig("fig.tif", dpi=300, format="tiff", pil_kwargs=Dict("compression" => "tiff_lzw"))
```

```python
fig.savefig("fig1.tif", dpi=300, format="tiff", pil_kwargs={"compression" : "tiff_lzw"})
```

<!--more-->

- Set dpi = 300
- LZW compression

