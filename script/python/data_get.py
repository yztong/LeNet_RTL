import numpy as np
import tensorflow as tf
import matplotlib.pyplot as plt
from radix import radixConvert

c = radixConvert()

mnist = tf.contrib.learn.datasets.load_dataset("mnist")
train_data = mnist.train.images  # Returns np.array
print(train_data.shape)
train_labels = np.asarray(mnist.train.labels, dtype=np.int32)
print(train_labels.shape)
eval_data = mnist.test.images  # Returns np.array
print(eval_data.shape[1])
eval_labels = np.asarray(mnist.test.labels, dtype=np.int32)
print(eval_labels.shape)


def image_get():
    for i in range(eval_data.shape[0]):

        eval_image = eval_data[i].reshape(28, 28)
        out_dir = "C:\\Users\\YzTong\\Desktop\\LeNET_RTL\\data\\image"
        out_name = str(i)+'_'+str(eval_labels[i])+'.png'
        plt.figure()
        plt.imshow(eval_image, cmap='binary')
        plt.savefig(out_dir+'\\'+out_name)
        plt.close()


def feature_get():

    file = open('feature.c', 'w')
    file.write('u32 image[][]={\n')

    for i in range(10000):
        eval_image = eval_data[i]*128
        for j in range(eval_image.shape[0]):
            if eval_image[j] > 127:
                eval_image[j] = 127
        eval_image = np.around(eval_image).astype(np.int8).reshape(28, 28)

        print(i)
        file.write('{')
        for x in range(32):
            for y in range(32):
                file.write('0x')
                if(x == 31 and y == 31):
                    file.write(c.dec2Hexcmpmt('0', 8)+'},\n')
                elif(x < 2 or x > 29):
                    file.write(c.dec2Hexcmpmt('0', 8)+',')
                elif(y < 2 or y > 29):
                    file.write(c.dec2Hexcmpmt('0', 8)+',')
                else:
                    file.write(c.dec2Hexcmpmt(str(eval_image[x-2][y-2]), 8)+',')
    file.write('};')


def label_get():

    file = open('label.c', 'w')
    file.write('u32 label[]={\n')

    for i in range(10000):
        file.write(str(eval_labels[i])+',\n')
    file.write('};')


# image_get()
feature_get()
label_get()
