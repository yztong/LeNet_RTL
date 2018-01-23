import numpy as np
from radix import radixConvert
c = radixConvert()


for x in range(1, 10, 2):
    a = np.load('../../data/'+str(x)+'.npy')
    a = a*128*128
    a = np.around(a).astype(np.int16)
    dir_name = "Z:\\work\\CNN\\2018_1_3src\\src\\coe\\bias\\"
    base_name = 'b_'+str(x)+'_rom.coe'
    weight_file = open(dir_name+base_name, 'w')
    for i in range(a.size):

        weight_file.write('parameter b_'+str(i+1)+' = 16\'b'+c.dec2Bincmpmt(str(a[i]), 16)+';\n')

        print(a[i])
