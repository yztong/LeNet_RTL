import numpy as np
from radix import radixConvert
c = radixConvert()
w6 = np.load('../../data/6.npy')
w6 = w6*128
w6 = np.around(w6).astype(np.int8)
print(w6)
print(w6.shape)
weight_file = open('w6.coe', 'w')
weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
for i in range(120):
    for x in range(84):
        weight_file.write(c.dec2Bincmpmt(str(w6[83-x][i]), 8))
        if x == 83:
            weight_file.write(',\n')
