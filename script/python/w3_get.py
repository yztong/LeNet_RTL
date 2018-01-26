import numpy as np
from radix import radixConvert
c = radixConvert()
w3 = np.load('../../data/2.npy')
w3 = w3*128
w3 = np.around(w3).astype(np.int8)
print(w3)
print(w3.shape)
weight_file = open('w3.coe', 'w')
weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
for i in range(5):
    for j in range(5):
        for y in range(16):
            for x in range(6):
                weight_file.write(c.dec2Bincmpmt(str(w3[15-y][5-x][i][j]), 8))
                if(x == 5 and y == 15):
                    weight_file.write(',\n')
