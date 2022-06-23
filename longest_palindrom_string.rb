# Given a string s, return the longest palindromic substring in s.
# Example 1:
# Input: s = "babad"
# Output: "bab"
# Explanation: "aba" is also a valid answer.

# Example 2:
# Input: s = "cbbd"
# Output: "bb"

def longest_palindrom(s)
    return "" if s.empty?
    arr = s.chars
    arr.size.downto(1) {|n| arr.each_cons(n) { |x| return x if x == x.reverse } }
end