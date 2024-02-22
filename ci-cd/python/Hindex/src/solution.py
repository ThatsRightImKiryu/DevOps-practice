class Solution(object):
    def hIndex(self, citations):
        maxim = 0
        for i in range(len(citations)):
            if(citations[i] == 0):
                continue

            count = 1
            for j in range(len(citations)):
                if(i != j and citations[i] <= citations[j]):
                    count += 1
            
            maxim = max(maxim, min(count, citations[i]))

        return maxim

# So bad and slow algorithm