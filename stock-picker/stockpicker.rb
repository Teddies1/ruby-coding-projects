def main()
    arr = [17,3,6,9,15,8,6,1,10]
    ans = stock_picker(arr)
    return ans
end

def stock_picker(arr)
    ans = 0
    left = 0
    dict = Hash.new(0)
    for right in 0...9
        if arr[right] < arr[left]
            left = right
        else
            ans = [ans, arr[right] - arr[left]].max()
            dict[arr[right] - arr[left]] = [left, right]
        end
    end
    ans = dict.max_by{|k,v| k}
    return ans[1]
end

p main()