# Given an integer x, return true if x is palindrome integer.
# An integer is a palindrome when it reads the same backward as forward.
# For example, 121 is a palindrome while 123 is not.
 
# Example 1:

# Input: x = 121
# Output: true
# Explanation: 121 reads as 121 from left to right and from right to left.

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x = x.to_s
    return x.eql?(x.reverse) ? true : false
end