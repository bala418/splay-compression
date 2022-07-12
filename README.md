# Splay compression

A C++ implementation of file compression and decompression based on Douglas W Jones's compression algorithm.

## Introduction

The idea behind using splay trees to data compression is to minimize the weighted expected length of the code by assigning shorter codes to frequently used characters and longer codes to rarely used characters.


## Usage

If on Linux or have Make installed in Windows/macOS compile with:
```
make run
```

Else compile and run individually