s = [1,2]; %start nodes
t = [2,3]; %end nodes
G = graph(s,t); %create a graph objects

%or
%G = graph([1 2],[2 3]);

plot(G); %plot the graph
title('Graph'); %add a title