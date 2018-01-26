import numpy as np
from radix import radixConvert
c = radixConvert()

w1 = np.load('../../data/0.npy')
w1 = w1*128
w1 = np.around(w1).astype(np.int8)
print(w1)
print(w1.shape)


weight_file = open('w1.coe', 'w')
weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
for i in range(5):
    for j in range(5):
        for x in range(6):
            weight_file.write(c.dec2Bincmpmt(str(w1[5-x][0][i][j]), 8))
            if x == 5:
                weight_file.write(',\n')
