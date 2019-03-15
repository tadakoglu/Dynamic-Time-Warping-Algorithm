distances = np.zeros((len(y), len(x)))

%The Euclidean distance is simply the root of the squared difference.

for i in range(len(y)):
    for j in range(len(x)):
        distances[i,j] = (x[j]-y[i])**2  

%REFERENCE https://nipunbatra.github.io/blog/2014/dtw.html