def main()
    puts "Input your string: "
    str = gets.to_s()
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    ans = substrings(str, dictionary)
    return ans
end

def substrings(string, dictionary)
    ans = Hash.new(0)
    string = string.downcase().split(" ")
    dictionary.each() do |word|
        string.each() do |s|
            if s.downcase().include?(word)
                ans[word] += 1 
            end
        end
    end
    return ans
end

puts main()