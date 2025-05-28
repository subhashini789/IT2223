A = [10, 20, 30, 40, 50];  % Must be sorted
target = 40;
function index = binarySearch(arr, target)
    left = 1;
    right = length(arr);
    index = -1;

    while left <= right
        mid = floor((left + right) / 2);
        if arr(mid) == target
            index = mid;
            return;
        elseif arr(mid) < target
            left = mid + 1;
        else
            right = mid - 1;
        end
    end
end
result = binarySearch(A, target);
disp(['Element found at index: ', num2str(result)]);
