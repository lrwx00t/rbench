# rbench

## dig benchmark

```bash
Warming up --------------------------------------
      Hash#dig found   160.152k i/100ms
  Hash#dig not found   167.623k i/100ms
Hash navigation found
                       165.851k i/100ms
Hash navigation not found
                       151.784k i/100ms
     Array#dig found   182.665k i/100ms
 Array#dig not found   182.684k i/100ms
Array navigation found
                       210.329k i/100ms
Array navigation not found
                       219.132k i/100ms
Calculating -------------------------------------
      Hash#dig found      1.617M (± 5.1%) i/s -      8.168M in   5.069391s
  Hash#dig not found      1.714M (± 3.1%) i/s -      8.716M in   5.090343s
Hash navigation found
                          1.889M (± 8.0%) i/s -      9.454M in   5.066714s
Hash navigation not found
                          1.647M (± 3.0%) i/s -      8.348M in   5.073124s
     Array#dig found      1.781M (± 7.3%) i/s -      8.951M in   5.060464s
 Array#dig not found      1.820M (± 2.1%) i/s -      9.134M in   5.021941s
Array navigation found
                          2.104M (± 3.1%) i/s -     10.516M in   5.003344s
Array navigation not found
                          2.198M (± 2.5%) i/s -     11.176M in   5.087555s

Comparison:
Array navigation not found:  2198099.7 i/s
Array navigation found:  2104127.9 i/s - same-ish: difference falls within error
Hash navigation found:  1889128.7 i/s - 1.16x  (± 0.00) slower
 Array#dig not found:  1819650.3 i/s - 1.21x  (± 0.00) slower
     Array#dig found:  1781445.2 i/s - 1.23x  (± 0.00) slower
  Hash#dig not found:  1714190.0 i/s - 1.28x  (± 0.00) slower
Hash navigation not found:  1647118.6 i/s - 1.33x  (± 0.00) slower
      Hash#dig found:  1616608.3 i/s - 1.36x  (± 0.00) slower
```

## `freeze` benchmark

```bash
Warming up --------------------------------------
       normal string   196.411k i/100ms
       frozen string   272.013k i/100ms
Calculating -------------------------------------
       normal string      2.148M (± 2.4%) i/s -     10.803M in   5.032173s
       frozen string      2.767M (± 2.8%) i/s -     13.873M in   5.017850s
```
