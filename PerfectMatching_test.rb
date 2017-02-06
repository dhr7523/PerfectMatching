require_relative "PerfectMatching"
require_relative "Graph"

#Ladder type diagram.
#One can easily see that the results coincide with the Fibonacci sequence.
p PerfectMatching(SquareLattice(1,1)) #=> 2
p PerfectMatching(SquareLattice(1,2)) #=> 3
p PerfectMatching(SquareLattice(1,3)) #=> 5
p PerfectMatching(SquareLattice(1,4)) #=> 8
p PerfectMatching(SquareLattice(1,5)) #=> 13
p PerfectMatching(SquareLattice(1,6)) #=> 21

#Formula for the number of perfect matching on Aztec Diamond
#  #PM(AD(n))=2^(n(n+1)/2)
#can be derived theoretically.
p PerfectMatching(AztecDiamond(1)) #=> 2=2^1
p PerfectMatching(AztecDiamond(2)) #=> 8=2^3
p PerfectMatching(AztecDiamond(3)) #=> 64=2^6
#Larger cases take some time..
#p PerfectMatching(AztecDiamond(4)) #=> 1024=2^10
#p PerfectMatching(AztecDiamond(5)) #=> 32768=2^15

#n dimensional cube
p PerfectMatching(Cube(1)) #=> 1
p PerfectMatching(Cube(2)) #=> 2
p PerfectMatching(Cube(3)) #=> 9
p PerfectMatching(Cube(4)) #=> 272
#Larger cases take some time..
#p PerfectMatching(Cube(5)) #=> 589185

