## Methods for calculating precise logarithm of a sum and subtraction of very large or very small numbers

Disclosed are methods to compute the precise value of the logarithm of a sum and the logarithm of a subtraction of very large or very small numbers.

A number of practical problems can result in having too big or small values in intermediate values of a calculation. Then one tries to take logarithm of these values and operate on logarithms instead.

In the case: log (p • q) = log p + log q is very easy to compute, but the problem is then to compute (or approximate) the value of log (a + b) from the value of log a and log b.

Let us assume that log a and log b are known, and that we want to approximate log (a + b).
Most basic solution would be calculating
sum_log = log(exp(a_log) + exp(b_log),
where a_log = log a and b_log = log b and therefore sum_log = log(a + b).
But the method I propose requires calling only one exp() and one log(), instead of two exp() and one log() in the basic solution.
Additionally, the proposed method has the critical advantage of not overflowing in case of large numbers of a and b.

The method is based on the notion that
ln(a + b) = ln{exp[ln(a) - ln(b)] + 1} + ln(b).

In a similar manner we can compute the logarithm of subtraction, based on the notion that
ln(a - b) = ln{exp[ln(a) - ln(b)] - 1} + ln(b), if a > b.

## Overview of files
* Methods for calculating logarithm of sum or subtraction.
* Examples comparing the methods with a naive solution which will produce overflow.
* See also the attached [pdf file](https://github.com/levitation/log-of-sum-and-subtraction/blob/master/Method%20for%20calculating%20precise%20logarithm%20of%20a%20sum%20and%20subtraction.pdf) for more detail.


[![Analytics](https://ga-beacon.appspot.com/UA-351728-28/log-of-sum-and-subtraction/README.md?pixel)](https://github.com/igrigorik/ga-beacon)
