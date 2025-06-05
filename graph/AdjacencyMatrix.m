%01 - adjacency matrix
A = [0 1 0;
    1 0 1;
    0 1 0];

G = graph(A);
plot(G);
title("Adjacency Matrix Representation.");