def PerfectMatching_mark2(graph_)
	graph = Marshal.load(Marshal.dump(graph_))
	graph.cut_off!

	if graph.all? {|e| !e} then
		return 1
	else
		num=0
		#take an edge.
		i=graph.index{|e| e}
		j=graph[i][0]

		graph[i].delete(j)
		graph[j].delete(i)

		#case in which the edge is not used for matching.
		num+=PerfectMatching_mark2(graph)

		#case in which the edge is used for matching.
		graph[i].each{|k| graph[k].delete(i)}
		graph[j].each{|k| graph[k].delete(j)}
		graph[i]=nil
		graph[j]=nil

		num+=PerfectMatching_mark2(graph)

		return num

	end
end

