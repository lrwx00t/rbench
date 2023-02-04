require 'benchmark/ips'

Benchmark.ips do |x|
  example_hash  = { k1: { k2: { k3: { k4: { k5: { k6: 1000 } } } } } }
  example_array = [1, [2, [3, [4, [5, [6]]]]]]

  x.report('Hash#dig found')             { example_hash.dig(:k1, :k2, :k3, :k4, :k5, :k6) }
  x.report('Hash#dig not found')         { example_hash.dig(:k1, :k2, :k3, :foo, :bar) }
  x.report('Hash navigation found')      { example_hash[:k1][:k2][:k3][:k4][:k5] }
  x.report('Hash navigation not found')  { example_hash[:k1][:k2][:k3][:k4][:k5][:k7] }

  x.report('Array#dig found')            { example_array.dig(1, 1, 1, 1, 1, 0) }
  x.report('Array#dig not found')        { example_array.dig(1, 1, 1, 1, 1, 1) }
  x.report('Array navigation found')     { example_array[1][1][1][1][1][0] }
  x.report('Array navigation not found') { example_array[1][1][1][1][1][1] }

  x.compare!
end
