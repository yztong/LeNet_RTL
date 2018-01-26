import numpy as np
from radix import radixConvert
c = radixConvert()
w5 = np.load('../../data/4.npy')
w5 = w5*128
w5 = np.around(w5).astype(np.int8)
print(w5)
print(w5.shape)

weight_file = open('w5.coe', 'w')
weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
for i in range(400):
    for x in range(120):
        weight_file.write(c.dec2Bincmpmt(str(w5[119-x][i]), 8))
        if x == 119:
            weight_file.write(',\n')
