# You are given a parentheses sequence, check if it's regular.

# Example
# For s = "()()(())", the output should be
# solution(s) = true;
# For s = "()()())", the output should be
# solution(s) = false.
# Input/Output

# [execution time limit] 4 seconds (rb)

# [input] string s
# A string, consisting only of '(' and ')'.

# Guaranteed constraints:
# 0 ≤ s.length ≤ 105.

# [output] boolean

# true is the sequence is regular and false otherwise.

def solution(s)
    return true if s.empty?
    arr1 = s.chars
    temp_var = false
    arr2 = []
    arr1.each do |c|
        arr2 << c if c.eql? "("
        if c.eql? ")"
            temp_var = arr2.pop ?  true : false
        end
    end
    arr2.empty? and temp_var ? true : false
end