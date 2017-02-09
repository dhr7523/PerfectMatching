require_relative "PerfectMatching_mark2"
require_relative "Graph"
require_relative "Generator"

p PerfectMatching_mark2(SquareLattice(1,1).to_graph) #=> 2
p PerfectMatching_mark2(SquareLattice(1,2).to_graph) #=> 3
p PerfectMatching_mark2(SquareLattice(1,3).to_graph) #=> 5
p PerfectMatching_mark2(SquareLattice(1,4).to_graph) #=> 8
p PerfectMatching_mark2(SquareLattice(1,5).to_graph) #=> 13
p PerfectMatching_mark2(SquareLattice(1,6).to_graph) #=> 21

p PerfectMatching_mark2(AztecDiamond(1).to_graph) #=> 2=2^1
p PerfectMatching_mark2(AztecDiamond(2).to_graph) #=> 8=2^3
p PerfectMatching_mark2(AztecDiamond(3).to_graph) #=> 64=2^6
#Larger cases take some time..
#p PerfectMatching_mark2(AztecDiamond(4).to_graph) #=> 1024=2^10
#p PerfectMatching_mark2(AztecDiamond(5).to_graph) #=> 32768=2^15

p PerfectMatching_mark2(Cube(1).to_graph) #=> 1
p PerfectMatching_mark2(Cube(2).to_graph) #=> 2
p PerfectMatching_mark2(Cube(3).to_graph) #=> 9
p PerfectMatching_mark2(Cube(4).to_graph) #=> 272
#Larger cases take some time..
#p PerfectMatching_mark2(Cube(5).to_graph) #=> 589185
