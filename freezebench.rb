require 'benchmark/ips'

def noop(arg); end

Benchmark.ips do |x|
  x.report('normal string') { noop('hello there') }
  x.report('frozen string') { noop('hello there'.freeze) }
end
