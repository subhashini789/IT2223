s = [1 1 2 3 4];
t = [2 3 4 4 5];
G = graph(s,t);

nodeColors = [
    1 0 0; % red
    0 1 0; % green
    0 0 1; % blue
    1 1 0; % yellow
    1 0 1; % magenta
    ];

plot(G, 'NodeColor',nodeColors,'LineWidth',1.5);