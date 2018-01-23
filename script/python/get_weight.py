import numpy as np
from radix import radixConvert
c = radixConvert()

w1 = np.load('../../data/0.npy')
w1 = w1*128
w1 = np.around(w1).astype(np.int8)
print(w1)
print(w1.shape)


for x in range(6):
    dir_name = "Z:\\work\\CNN\\2018_1_3src\\src\\coe\\w1_rom\\"
    base_name = 'w1_'+str(x+1)+'_rom.coe'
    weight_file = open(dir_name+base_name, 'w')
    weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
    weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
    for i in range(5):
        for j in range(5):
            if(i == 4 and j == 4):
                weight_file.write(c.dec2Bincmpmt(str(w1[x][0][i][j]), 8)+';\n')
            else:
                weight_file.write(c.dec2Bincmpmt(str(w1[x][0][i][j]), 8)+',\n')
            print(w1[x][0][i][j])
            print(c.dec2Bincmpmt(str(w1[x][0][i][j]), 8))


w3 = np.load('../../data/2.npy')
print(w3)
w3 = w3*128
w3 = np.around(w3).astype(np.int8)
print(w3)
print(w3.shape)

for y in range(16):
    for x in range(6):
        dir_name = "Z:\\work\\CNN\\2018_1_3src\\src\\coe\\w3_rom\\"
        base_name = 'w3_'+str(y+1)+'_'+str(x+1)+'_rom.coe'
        weight_file = open(dir_name+base_name, 'w')
        weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
        weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
        for i in range(5):
            for j in range(5):
                if(i == 4 and j == 4):
                    weight_file.write(c.dec2Bincmpmt(str(w3[y][x][i][j]), 8)+';\n')
                else:
                    weight_file.write(c.dec2Bincmpmt(str(w3[y][x][i][j]), 8)+',\n')
                print(w3[y][x][i][j])


a = np.load('../../data/4.npy')
a = a*128
a = np.around(a).astype(np.int8)
print(a.shape)


for x in range(120):
    dir_name = "Z:\\work\\CNN\\2018_1_3src\\src\\coe\\w5_rom\\"
    base_name = 'w5_'+str(x+1)+'_rom.coe'
    weight_file = open(dir_name+base_name, 'w')
    weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
    weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
    for i in range(400):

        if(i == 399):
            weight_file.write(c.dec2Bincmpmt(str(a[x][i]), 8)+';\n')
        else:
            weight_file.write(c.dec2Bincmpmt(str(a[x][i]), 8)+',\n')
        print(a[x][i])


a = np.load('../../data/6.npy')
a = a*128
a = np.around(a).astype(np.int8)
print(a.shape)

for x in range(84):
    dir_name = "Z:\\work\\CNN\\2018_1_3src\\src\\coe\\w6_rom\\"
    base_name = 'w6_'+str(x+1)+'_rom.coe'
    weight_file = open(dir_name+base_name, 'w')
    weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
    weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
    for i in range(120):

        if(i == 119):
            weight_file.write(c.dec2Bincmpmt(str(a[x][i]), 8)+';\n')
        else:
            weight_file.write(c.dec2Bincmpmt(str(a[x][i]), 8)+',\n')
        print(a[x][i])

a = np.load('../../data/8.npy')
a = a*128
a = np.around(a).astype(np.int8)
print(a.shape)

for x in range(10):
    dir_name = "Z:\\work\\CNN\\2018_1_3src\\src\\coe\\w7_rom\\"
    base_name = 'w7_'+str(x+1)+'_rom.coe'
    weight_file = open(dir_name+base_name, 'w')
    weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
    weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
    for i in range(84):

        if(i == 83):
            weight_file.write(c.dec2Bincmpmt(str(a[x][i]), 8)+';\n')
        else:
            weight_file.write(c.dec2Bincmpmt(str(a[x][i]), 8)+',\n')
        print(a[x][i])
