class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        # Applying most effective - Bucket sort
        count = {} # out hashmap to count number and instances
        freq = [[] for i in range(len(nums)+1)]
        # empty array to potentially hold entire i/p array
        # we gonna map count/ occurances to numbers

        for n in nums:
            count[n] = 1+ count.get(n,0)

        for n,c in count.items():
            freq[c].append(n) # n occurs c times

        res = []
        # we build our resulting array, by popping from freq
        for i in range(len(freq) -1,0,-1):
            for n in freq[i]:
                res.append(n)
                if len(res) == k:
                    return res
        