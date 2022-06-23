# You are given two non-empty linked lists representing two non-negative integers. 
# The digits are stored in reverse order, and each of their nodes contains a single digit.
# Add the two numbers and return the sum as a linked list.You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807.
# Example 2:

# Input: l1 = [0], l2 = [0]
# Output: [0]
# Example 3:

# Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
# Output: [8,9,9,9,0,0,0,1]

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def add_two_numbers(l1, l2)
    node1 = l1
    node2 = l2
    result_node_head = node1.val + node2.val
    carry = false

    if result_node_head > 9
        carry = true
        result_node_head -= 10
    end
    result_node = ListNode.new(result_node_head)
    last = result_node

    while(!!node1 || !!node2 || carry)
        local_sum = 0
        local_sum = 1 if carry
        carry = false

        if !!node1
            local_sum += node1.val
            node1 = node1.next
        end

        if !!node2
            local_sum += node2.val
            node2 = node2.next
        end

        if local_sum > 9
            carry = true
            local_sum -= 10
        end
        last.next = ListNode.new(local_sum)
        last = last.next
    end

    return result_node
end

# Time Complexity: O(n)