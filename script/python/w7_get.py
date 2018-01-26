import numpy as np
from radix import radixConvert
c = radixConvert()
w7 = np.load('../../data/8.npy')
w7 = w7*128
w7 = np.around(w7).astype(np.int8)
print(w7)
print(w7.shape)
weight_file = open('w7.coe', 'w')
weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
for i in range(84):
    for x in range(10):
        weight_file.write(c.dec2Bincmpmt(str(w7[9-x][i]), 8))
        if x == 9:
            weight_file.write(',\n')
