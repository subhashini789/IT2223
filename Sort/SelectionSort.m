arr = [64, 25, 12, 22, 11];  % Example array
n = length(arr);

for i = 1:n-1
    min_index = i;
    
    for j = i+1:n
        if arr(j) < arr(min_index)
            min_index = j;
        end
    end
    
    % Swap if min_index has changed
    if min_index ~= i
        temp = arr(i);
        arr(i) = arr(min_index);
        arr(min_index) = temp;
    end
end

disp('Sorted array:');
disp(arr);