def AztecDiamond(n)
	graph=[]
	for i in 1..n do
		for j in 0..(2*n-2*i) do
				graph << [[j,j-1+2*i],[j+1,j+2*i]]
				graph << [[j-1+2*i,j],[j+2*i,j+1]]
				graph << [[2*n-j,2*i-1+j],[2*n-j-1,2*i+j]]
				graph << [[2*n-2*i+1-j,j],[2*n-2*i+1-j-1,j+1]]
		end
	end
	return graph
end

def SquareLattice(n,m)
	graph=[]
	for i in 0..n do
		for j in 0...m do
				graph << [[i,j],[i,j+1]]
		end
	end
	for i in 0...n do
		for j in 0..m do
				graph << [[i,j],[i+1,j]]
		end
	end
	return graph
end

def Cube(n)
	if n==1
		return [[0,1]]
	else
		graph = Cube(n-1)
		graph=graph.concat(graph.map{|e|[e[0]+2**(n-1),e[1]+2**(n-1)]})
		for i in 0...2**(n-1)
			graph << [i,i+2**(n-1)]
		end
		return graph
	end
end