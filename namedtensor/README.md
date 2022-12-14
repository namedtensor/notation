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

## Credits

David Chiang, University of Notre Dame, dchiang@nd.edu
Alexander M. Rush, Cornell University, arush@cornell.edu
Boaz Barak, Harvard University, b@boazbarak.org

## License

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>
