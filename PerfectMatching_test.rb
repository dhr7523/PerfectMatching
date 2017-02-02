require_relative "PerfectMatching"
require_relative "Graph"

#口、日、目…フィボナッチ数列になる
p PerfectMatching(SquareLattice(1,1)) #=> 2
p PerfectMatching(SquareLattice(1,2)) #=> 3
p PerfectMatching(SquareLattice(1,3)) #=> 5
p PerfectMatching(SquareLattice(1,4)) #=> 8
p PerfectMatching(SquareLattice(1,5)) #=> 13
p PerfectMatching(SquareLattice(1,6)) #=> 21


p PerfectMatching(AztecDiamond(1)) #=> 2=2^1
p PerfectMatching(AztecDiamond(2)) #=> 8=2^3
p PerfectMatching(AztecDiamond(3)) #=> 64=2^6
#p PerfectMatching(AztecDiamond(4)) #=> 1024=2^10
#p PerfectMatching(AztecDiamond(5)) #=> 32768=2^15
#2^(n(n+1)/2)




