# The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

# P   A   H   N
# A P L S I I G
# Y   I   R
# And then read line by line: "PAHNAPLSIIGYIR"
# Write the code that will take a string and make this conversion given a number of rows:
# string convert(string s, int numRows);
 
# Example 1:
# Input: s = "PAYPALISHIRING", numRows = 3
# Output: "PAHNAPLSIIGYIR"

# Example 2:
# Input: s = "PAYPALISHIRING", numRows = 4
# Output: "PINALSIGYAHRPI"
# Explanation:
# P     I    N
# A   L S  I G
# Y A   H R
# P     I

# Example 3:
# Input: s = "A", numRows = 1
# Output: "A"

# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    rows = Array.new(num_rows, '')
    line_index = 0
    is_reverse = false
    s.each_char do |a|
        rows[line_index] += a
        if is_reverse
            line_index -=1
        else
            line_index +=1
        end

        if num_rows ==1
            line_index = 0
        elsif line_index >= num_rows
            is_reverse = true
            line_index = num_rows -2
        elsif line_index <0
            line_index = 1
            is_reverse = false
        end
    end
    rows.join('')
end