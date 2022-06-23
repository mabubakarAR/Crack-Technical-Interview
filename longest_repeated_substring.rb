# Given a string s, find longest substring with repeating characters only.
# Example 1:

# Input: s = "abcabcbbbbbb"
# Output: "bbbbbb"

def max_substr(s)
    sub(s).max_by(&:length)
end

def sub(s)
    (0..s.length).to_a.map {|i| sub(s[i, s.length])}
end

def chunks(s)
    arr = []
    s.chars do |c|
        arr << c if (arr.include?(c) || arr.empty?)
    end
    arr.join
end