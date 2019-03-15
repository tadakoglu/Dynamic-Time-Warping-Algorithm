accumulated_cost = np.zeros((len(y), len(x)))
accumulated_cost[0,0] = distances[0,0] 
for i in range(1, len(y)): 
 for j in range(1, len(x)): 
 accumulated_cost[i, j] = min(accumulated_cost[i-1, j-1], accumulated_cost[i-1, j], accumulated_cost[i, j-1]) +distances[i, j]


%REFERENCE https://nipunbatra.github.io/blog/2014/dtw.html