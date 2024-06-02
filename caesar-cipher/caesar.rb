def caesar_cipher(string, offset)
    num = 0
    arr = []
    string.each_char() do |s|
        if s.upcase != s.downcase
            num = s.ord()
            if num >= 65 && num <= 90
                num += offset
                num -= 65 
                num %= 26
                num += 65
            elsif num >= 97 && num <= 122
                num += offset
                num -= 97
                num %= 26
                num += 97
            end
            newchar = num.chr()  
            arr << newchar
        else
            arr << s
        end
    end
    return arr.join()
end

def main()
    puts "Input your string: "
    str = gets.to_s()
    puts "Input your offset: "
    shift = gets.to_i()
    
    ans = caesar_cipher(str, shift)
    puts ans
    return ans

end

main()