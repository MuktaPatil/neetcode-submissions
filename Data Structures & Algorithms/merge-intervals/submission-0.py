class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        intervals.sort (key = lambda i: i[0]) # sort based on start value
        output = [intervals[0]]

        for start, end in intervals[1:]:
            lastEnd = output[-1][1]

            if start <=lastEnd:
                # there's an overlap
                output[-1][1] = max(lastEnd, end)
            else:
                output.append([start,end])
        return output