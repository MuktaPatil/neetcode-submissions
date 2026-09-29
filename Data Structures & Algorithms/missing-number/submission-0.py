class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        res = len(nums)

        for i in range(len(nums)):
            res += (i -nums[i])
        return res

        # sum of og array with all numbers minus sum of give array with a missing number to get the result [the missing number] done in 1 line 
        