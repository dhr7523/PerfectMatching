Here are scripts for counting perfect matching on given graph.  
Generator.rb provides some functions which generates graphs of specific type.  
PerfectMatching_mark2 is faster but old version is left for comparison.  
When using mark2, graphs should be converted to another format of graph by to_graph.

# PerfectMatching.rb
* PerfectMatching(graph)  

# PerfectMatching_mark2.rb
* PerfectMatching_mark2(graph)

# Generator.rb
* AztecDiamond(n)  
* SquareLattice(n,m)
* Cube(n)

# Graph.rb
* Array
	* to_graph
* Graph
	* inititialize
	* cut_off!
