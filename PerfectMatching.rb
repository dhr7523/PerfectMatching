#counts perfect matching recursively.
#weight of all edges are 1.

def PerfectMatching(graph_)
	graph=Marshal.load(Marshal.dump(graph_))

	if graph.size==0 then
		1
	else
		num=0
		edge=graph.pop #take an edge.

		#case in which the edge is not used for matching.
		#the edge should not be connected with endpoints.
		if graph.flatten(1).include?edge[0] and graph.flatten(1).include?edge[1]  then
			num+=PerfectMatching(graph)
		end

		#case in which the edge is used for matching.
		#edges which is connected with the edge should not be connected with endpoints.
		flag=true # false when an edge which is connected with the edge is connected with an endpoint.

		for e in 0..graph.size-1 do
			if graph[e].include?(edge[0]) then
				deletedEdge=graph[e]
				graph[e]=nil
				if !graph.flatten(1).include?(deletedEdge[1-deletedEdge.index(edge[0])]) then
					flag=false
					break
				end
			elsif graph[e].include?(edge[1]) then
				deletedEdge=graph[e]
				graph[e]=nil
				if !graph.flatten(1).include?(deletedEdge[1-deletedEdge.index(edge[1])]) then
					flag=false
					break
				end
			end
		end
		graph.compact!

		if flag then
			num+=PerfectMatching(graph)
		end
		return num
	end
end

