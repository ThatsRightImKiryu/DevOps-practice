SIZE = 8
EMPTY = '.'
matrix = []

for i in range(SIZE):
    matrix += [input()]


count = 0
for i in range(SIZE):
    for j in range(SIZE):
        if(j<SIZE-2 and i<SIZE-1):
            if(matrix[i][j:j+2+1]==EMPTY*3 and matrix[i+1][j+1]==EMPTY):
                count+=1
            if(matrix[i+1][j:j+2+1]==EMPTY*3 and matrix[i][j+1]==EMPTY):
                count+=1
        if(i<SIZE-2 and j<SIZE-1):
            if((matrix[i][j]+matrix[i+1][j]+matrix[i+2][j])==EMPTY*3 and matrix[i+1][j+1]==EMPTY):
                count+=1
            if((matrix[i][j+1]+matrix[i+1][j+1]+matrix[i+2][j+1])==EMPTY*3 and matrix[i+1][j]==EMPTY):
                count+=1    
print(count)
with open("output.txt", 'w') as f:
    f.write(str(count)+"\n")