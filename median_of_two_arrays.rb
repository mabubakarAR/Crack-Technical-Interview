# Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
# The overall run time complexity should be O(log (m+n)).

# Example 1:
# Input: nums1 = [1,3], nums2 = [2]
# Output: 2.00000
# Explanation: merged array = [1,2,3] and median is 2.

# Example 2:
# Input: nums1 = [1,2], nums2 = [3,4]
# Output: 2.50000
# Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.

def find_median_sorted_arrays(nums1, nums2)
    merged_arr = nums1 + nums2
    sorted_array = merged_arr.sort
    arr_length = sorted_array.length
    (sorted_array[(arr_length-1)/2] + sorted_array[arr_length/2])/2.0
end

# TimeComplexity: O(log (m+n))