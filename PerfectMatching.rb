#counts perfect matching recursively.
#weight of all edges are 1.

def PerfectMatching(graph)
	if graph.size==0 then
		1
	else
		num=0
		edge=graph.pop #take an edge.

		#case in which the edge is not used for matching.
		#the edge should not be connected with endpoints.
		if graph.flatten(1).include?edge[0] and graph.flatten(1).include?edge[1]  then
			num+=PerfectMatching(Marshal.load(Marshal.dump(graph)))
		end

		#case in which the edge is used for matching.
		#edges which is connected with the edge should not be connected with endpoints.
		flag=true # false when an edge which is connected with the edge is connected with an endpoint.

		newG=Marshal.load(Marshal.dump(graph))
		for e in 0..newG.size-1 do
			if newG[e].include?(edge[0]) then
				deletedEdge=newG[e]
				newG[e]=nil
				if !newG.flatten(1).include?(deletedEdge[1-deletedEdge.index(edge[0])]) then
					flag=false
					break
				end
			elsif newG[e].include?(edge[1]) then
				deletedEdge=newG[e]
				newG[e]=nil
				if !newG.flatten(1).include?(deletedEdge[1-deletedEdge.index(edge[1])]) then
					flag=false
					break
				end
			end
		end
		newG.compact!

		if flag then
			num+=PerfectMatching(newG)
		end
		return num
	end
end

