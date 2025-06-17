% Define nodes
nodes = {'A', 'B', 'C', 'D', 'E', 'F', 'G'};

% Define edges and weights
s = [1 1 2 2 3 3];
t = [2 3 4 5 6 7];
weights = [5 3 2 4 6 1];

% Create directed graph
G = digraph(s, t, weights, nodes);

% Plot the graph
figure;
plot(G, 'Layout', 'layered', ...
    'Direction', 'down', ...
    'EdgeLabel', G.Edges.Weight);
title('Simple Tree with 3 Levels');

% Adjacency matrix (binary)
adjMatrix = adjacency(G) > 0;

% Initialize logical visited array
visited = false(1, numnodes(G));

disp('Recursive DFS Traversal Order:');

% Call DFS starting at node 1
visited = DFS_recursive(G, adjMatrix, 1, visited);

fprintf('\n');

% --- Recursive DFS function ---
function visited = DFS_recursive(G, adjMatrix, currentNode, visited)
    if visited(currentNode)
        return;
    end

    % Mark current node as visited
    visited(currentNode) = true;
    
    % Display current node label
    fprintf('%s ', G.Nodes.Name{currentNode});

    % Manually find neighbors by scanning adjacency matrix row
    for node = 1:size(adjMatrix, 2)
        if adjMatrix(currentNode, node) == 1 && ~visited(node)
            visited = DFS_recursive(G, adjMatrix, node, visited);
        end
    end
end