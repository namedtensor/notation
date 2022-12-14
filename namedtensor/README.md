# Named tensor notation in LaTeX

This style file provides macros for named tensor notation. Please see
the paper [Named Tensor Notation](https://arxiv.org/abs/2102.13196)
for background on this notation.

To use the style file, put

    \usepackage{namedtensor}

into the preamble of your LaTeX source file (after
`\documentclass{article}` but before `\begin{document}`).

We write axis names in sans-serif font. To make this easier,
`\name{axis}` prints the axis name "axis", and `\ndef{\ax}{axis}`
defines a macro `\ax` that prints the axis name "axis".

Binary operators

- Use `A \ndot{\ax} B` for contractions. You can use `\\` to stack up
  several names.

- You can use `\nbin` to make new binary operators. For example, `A
  \nbin{\ax}{\star} B` gives you a star operator with "axis" written
  under it.

Functions

- Use `\nsum{\ax} A` for summation over a named axis.

- You can use `\nfun` to make new functions. For example,
  `\nfun{\ax}{qux} A` defines a function "qux" with "axis" written
  under it.
