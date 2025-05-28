A = [10, 20, 30, 40, 50];
target = 30;
function index = linearSearch(arr, target)
    index = -1; % Default if not found
    for i = 1:length(arr)
        if arr(i) == target
            index = i;
            return;
        end
    end
end

result = linearSearch(A, target);
disp(['Element found at index: ', num2str(result)]);
