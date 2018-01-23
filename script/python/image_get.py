import numpy as np
from radix import radixConvert
c = radixConvert()

a = np.load("../../data/5/image.npy")
print(a.shape)

a = a*128
for i in range(a.shape[0]):
    for j in range(a.shape[1]):
        if a[i][j] > 127:
            a[i][j] = 127
a = np.around(a).astype(np.int8)
print(a)


weight_file = open('f1_rom.coe', 'w')
weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
for i in range(32):
    for j in range(32):
        if(i == 31 and j == 31):
            weight_file.write(c.dec2Bincmpmt('0', 8)+';\n')
        elif(i < 2 or i > 29):
            weight_file.write(c.dec2Bincmpmt('0', 8)+',\n')
        elif(j < 2 or j > 29):
            weight_file.write(c.dec2Bincmpmt('0', 8)+',\n')
        else:
            weight_file.write(c.dec2Bincmpmt(str(a[i-2][j-2]), 8)+',\n')
