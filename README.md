<!-- README.md is generated from README.Rmd. Please edit that file -->

\*\*NOTE: This is just a toy package. Made by following the book: `R
Packages` from Hadley Wickham. \# Freekfoofactors

Contains two functions for working with factors.

## Installation

``` r
devtools::install_github("FreekManders/foofactors")
```

## Demo

``` r
library(Freekfoofactors)
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))
```

Simply catenating two factors leads to a result that most don’t expect.

``` r
c(a, b)
#> [1] 1 3 4 2 1 3 4 2
```

The `fbind()` function glues two factors together and returns factor.

``` r
fbind(a, b)
#> [1] character hits      your      eyeballs  but       integer   where it  counts   
#> Levels: but character counts eyeballs hits integer where it your
```

Often we want a table of frequencies for the levels of a factor. The
base `table()` function returns an object of class `table`, which can be
inconvenient for downstream work.

``` r
set.seed(1234)
x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
table(x)
#> x
#>  a  b  c  d  e 
#> 25 26 17 17 15
```

The `fcount()` function returns a frequency table as a tibble with a
column of factor levels and another of frequencies:

``` r
fcount(x)
#> # A tibble: 5 x 2
#>   f         n
#>   <fct> <int>
#> 1 b        26
#> 2 a        25
#> 3 c        17
#> 4 d        17
#> 5 e        15
```
