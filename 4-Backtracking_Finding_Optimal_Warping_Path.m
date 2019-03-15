%backtracking procedure is fairly simple and involves trying to move back from the last point (m, n) 
%and finding from which place we would have reached there, by minimizing the cost. 
%It also does this in a repetitive fashion until point (0,0).

def path_cost(x, y, accumulated_cost, distances):
path = [[len(x)-1, len(y)-1]] 

i = len(y)-1 

j = len(x)-1 

while i>0 and j>0: 

    if i==0: 

        j = j - 1 

    elif j==0: 

        i = i - 1 

    else: 

        if accumulated_cost[i-1, j] == min(accumulated_cost[i-1, j-  1], accumulated_cost[i-1, j], accumulated_cost[i, j-1]): 

            i = i – 1 % meaning we get the min next point on i-1 point 

        elif accumulated_cost[i, j-1] == min(accumulated_cost[i-1, j-1], accumulated_cost[i-1, j], accumulated_cost[i, j-1]): 

            j = j-1   % meaning we get minimal next point on j-1 point 

        else:   % meaning we should get down diagonally 

            i = i – 1   

            j= j- 1 

    path.append([j, i]) 

path.append([0,0])  %final step 

%%this is total cost
    for [y, x] in path:
        cost = cost +distances[x, y]
    return path, cost    

%REFERENCE https://nipunbatra.github.io/blog/2014/dtw.html