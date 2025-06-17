% --- 1. Import Graph Data ---
source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];

% Create an undirected graph
G = graph(source, destination);

% --- 2. Draw the Graph with Node Labels ---
figure;
p = plot(G, 'NodeLabel', 1:numnodes(G), 'LineWidth', 2);
title('Original Graph');

% --- 3. Display Subgraph for Given Nodes ---
subNodes = [1 2 4];           % Example subgraph nodes
subG = subgraph(G, subNodes);
figure;
plot(subG, 'NodeLabel', subNodes, 'LineWidth', 2);
title('Subgraph for Nodes 1, 2, 4');

% --- 4. Identify and Display Adjacent Vertices ---
disp(' Adjacent vertices for each node:');
for i = 1:numnodes(G)
    adj = neighbors(G, i);
    fprintf('Node %d → %s\n', i, mat2str(adj'));
end

% --- 5. Graph Coloring (Greedy Algorithm) ---
colors = zeros(numnodes(G), 1);
for u = 1:numnodes(G)
    usedColors = unique(colors(neighbors(G, u)));
    availableColors = setdiff(1:numnodes(G), usedColors);
    colors(u) = availableColors(1);
end

% Color display using HSV colormap
colorMap = hsv(max(colors));
figure;
p = plot(G, 'NodeLabel', 1:numnodes(G), 'LineWidth', 2);
for i = 1:numnodes(G)
    highlight(p, i, 'NodeColor', colorMap(colors(i), :));
end
title(' Graph Coloring');

% --- 6. Find and Display Shortest Path from Node 1 to Node 5 ---
[path, dist] = shortestpath(G, 1, 5);
fprintf('\n Shortest path from Node 1 to Node 5: %s\n', mat2str(path));
fprintf('Distance: %d\n', dist);

% Highlight the shortest path
figure;
p = plot(G, 'NodeLabel', 1:numnodes(G), 'LineWidth', 2);
highlight(p, path, 'EdgeColor', 'red', 'LineWidth', 2);
title(' Shortest Path from Node 1 to Node 5');
