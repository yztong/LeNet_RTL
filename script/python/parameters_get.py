import numpy as np
from radix import radixConvert
c = radixConvert()


class weight(object):

    def __init__(self, input_path, output_path):
        self.input_path = input_path
        self.output_path = output_path

    def w1_get(self):
        w1 = np.load(self.input_path+'\\'+'0.npy')
        w1 = w1*128
        w1 = np.around(w1).astype(np.int8)
        weight_file = open(self.output_path+'\\'+'w1.coe', 'w')
        weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
        weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
        for i in range(5):
            for j in range(5):
                for x in range(6):
                    weight_file.write(c.dec2Bincmpmt(str(w1[5-x][0][i][j]), 8))
                    if x == 5:
                        if i == 4 and j == 4:
                            weight_file.write(';')
                        else:
                            weight_file.write(',\n')

    def w3_get(self):
        w3 = np.load(self.input_path+'\\'+'2.npy')
        w3 = w3*128
        w3 = np.around(w3).astype(np.int8)
        weight_file = open(self.output_path+'\\'+'w3.coe', 'w')
        weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
        weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
        for i in range(5):
            for j in range(5):
                for y in range(16):
                    for x in range(6):
                        weight_file.write(c.dec2Bincmpmt(str(w3[15-y][5-x][i][j]), 8))
                        if(x == 5 and y == 15):
                            if i == 4 and j == 4:
                                weight_file.write(';')
                            else:
                                weight_file.write(',\n')

    def w5_get(self):
        w5 = np.load(self.input_path+'\\'+'4.npy')
        w5 = w5*128
        w5 = np.around(w5).astype(np.int8)

        weight_file = open(self.output_path+'\\'+'w5.coe', 'w')
        weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
        weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
        for i in range(400):
            for x in range(120):
                weight_file.write(c.dec2Bincmpmt(str(w5[119-x][i]), 8))
                if x == 119:
                    if i == 399:
                        weight_file.write(';')
                    else:
                        weight_file.write(',\n')

    def w6_get(self):
        w6 = np.load(self.input_path+'\\'+'6.npy')
        w6 = w6*128
        w6 = np.around(w6).astype(np.int8)
        weight_file = open(self.output_path+'\\'+'w6.coe', 'w')
        weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
        weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
        for i in range(120):
            for x in range(84):
                weight_file.write(c.dec2Bincmpmt(str(w6[83-x][i]), 8))
                if x == 83:
                    if i == 119:
                        weight_file.write(';')
                    else:
                        weight_file.write(',\n')

    def w7_get(self):
        w7 = np.load(self.input_path+'\\'+'8.npy')
        w7 = w7*128
        w7 = np.around(w7).astype(np.int8)
        weight_file = open(self.output_path+'\\'+'w7.coe', 'w')
        weight_file.write('MEMORY_INITIALIZATION_RADIX=2;\n')
        weight_file.write('MEMORY_INITIALIZATION_VECTOR=\n')
        for i in range(84):
            for x in range(10):
                weight_file.write(c.dec2Bincmpmt(str(w7[9-x][i]), 8))
                if x == 9:
                    if i == 83:
                        weight_file.write(';')
                    else:
                        weight_file.write(',\n')

    def w_get(self):
        self.w1_get()
        self.w3_get()
        self.w5_get()
        self.w6_get()
        self.w7_get()

    def bias_get(self):
        for x in range(1, 10, 2):
            a = np.load(self.input_path+'\\'+str(x)+'.npy')
            a = a*128*128
            a = np.around(a).astype(np.int16)
            dir_name = self.output_path
            base_name = 'b_'+str(x)+'.coe'
            weight_file = open(dir_name+'\\'+base_name, 'w')
            for i in range(a.size):
                weight_file.write('parameter b_'+str(i+1)+' = 16\'b' +
                                  c.dec2Bincmpmt(str(a[i]), 16)+';\n')


a = weight("C:\\Users\\YzTong\\Desktop\\LeNET_RTL\\data",
           "C:\\Users\\YzTong\\Desktop\\LeNET_RTL\\coe")
a.w_get()
a.bias_get()
