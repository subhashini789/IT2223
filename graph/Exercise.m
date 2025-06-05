s = [1 1 1 1 1 2 2 2 2 3 3 3 3 4 4 4 4 5 5 5 6 7 8 9 10];
t = [2 5 6 10 11 3 6 7 11 4 7 8 11 5 8 9 11 9 10 11 11 11 11 11 11];

G = graph(s,t);

h = plot(G, "LineWidth", 2); % Increase from defaault (0.5) to 2

% Magenta star edges from node 11
starEdges = [1,2,3,4,5,6,7,8,9,10];
%starEdges = [1 2 3 4 5 6 7 8 9 10];
for i = 1:length(starEdges)
    highlight(h, starEdges(i), 11, 'EdgeColor', [1 0 1]);
end

% Green edges: polygon-like outer ring (ex: 1-2, 2-3, ...,5-1)
ringEdges = [1 2; 2 3; 3 4; 4 5; 5 1;];
highlight(h, ringEdges(:,1), ringEdges(:,2), "EdgeColor", [0 1 0]);

% Red edges:
starEdges = [1 6; 6 2; 2 7; 7 3; 3 8; 8 4; 4 9; 9 5; 5 10; 10 1;];
highlight(h, starEdges(:,1), starEdges(:,2), "EdgeColor", [1 0 0]);