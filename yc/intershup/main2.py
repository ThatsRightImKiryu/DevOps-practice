import math
n, t, s = [int(i) for i in input().split()]

speeds = [int(i) for i in input().split() ]

if(2<=n<=1_000_000 and
   1<=s<=1_000_000 and
   1<=t<=1_000_000 and
   len(speeds) == n):
    
    overtake = 0.0
    for i in speeds:
        if (speeds[0] > i): overtake += (speeds[0] - i) / s * (t) 
        else: n -= 1
        if ((i*t % s) and (speeds[0]*t % s)):
            n-=1
    

    overtake -= (n)
    print(int(overtake))