# Given a string s, find the length of the longest substring without repeating characters.
# Example 1:

# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.

# @param {String} s
# @return {Integer}

####### MODULER APPROACH ##########
def length_of_longest_substring(s)
    result_str = substring_chunks(s).max_by(&:length)
    result_str.length
end

def substring_chunks(string)
    str_length = string.length
    substring_chunks = (0..str_length).to_a.map {|i| make_chunks(string[i,str_length]) }
end

def make_chunks(str)
    arr = []
    str.chars do |c|
        break if arr.include? c
        arr << c
    end
    arr.join
end

########## IN A SINGLE METHOD ########

def length_of_longest_substring(s)
    str_length = s.length
    chunks = (0..str_length).to_a.map do |c|
        new_str_arr = s[c,str_length]
        arr = []
        new_str_arr.chars do |char|
            break if arr.include? char
            arr << char
        end
        arr.join
    end
    result_str = chunks.max_by(&:length)
    result_str.length
end