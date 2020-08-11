%i know this does not work but this is my thought process behind it
x = 0
y = 0
i = 0
j = 0


a = [1 2 3 4 5 6];
b = [2 6 1 2 4 8];

m = digraph(a,b)
n = adjacency(m)


c = []
o = [(1,2) (1,3) (1,4) (1,5) (1,6) (2,3) (2,4) (2,5) (2,6) (3,2) (3,4) (3,5) (3,6) (4,2) (4,3) (4,5) (4,6) (5,2) (5,3) (5,4) (5,6) (6,2) (6,3) (6,4) (6,5)]
input = o[x][y]
goal = o[i][j]
parent[]
d = sqrt((g[x] - goal[x])^2 + (g[y] - goal[y])^2)


for i = 1:6
    for j = 1:6
        for k = 1:6
            if d(k) > d(k+1)
            end
            else
            
    if g[i][j]> g[i+1][j+1]
        add g[i][j] -> o[]
    else
       add g[i][j] -> parent
    end
    end
end
end    
       
s = size(parent)
for 1:s
    fprintf('%i\n', s
end)

