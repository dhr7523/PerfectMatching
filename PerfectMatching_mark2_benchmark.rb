require_relative "PerfectMatching_mark2"
require_relative "Graph"
require_relative "Generator"

require_relative "PerfectMatching"
require "benchmark"

n=4
m=7
#g=Cube(n)
#g=AztecDiamond(n)
g=SquareLattice(n,m)

Benchmark.bm 10 do |r|
	r.report "zero" do
		p PerfectMatching(g)
	end
	g=g.to_graph
	r.report "mark2" do
		p PerfectMatching_mark2(g)
	end
end

