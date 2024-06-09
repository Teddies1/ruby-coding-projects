def main()
    arr = [-2, 45, 0, 11, -9]
    ans = bubble_sort(arr)
    return ans
end

def bubble_sort(arr)
    n = arr.length()
    for i in 0...n
        flag = 0
        for j in 0...n-i-1
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
                flag = 1
            end
        end
        if flag == 0
            break
        end
    end
    return arr
end

p main()