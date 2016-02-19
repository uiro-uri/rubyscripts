#!/opt/freeware/bin/ruby
require 'benchmark'

n = 1000000
Benchmark.bm(7) do |x|
  x.report("each:")  { (1..n).each{String.new("a-newcomer")} }
  x.report("times:") { n.times{String.new("a-newcomer")}     }
  x.report("upto:")  { 1.upto(n){String.new("a-newcomer")}   }
end
