import numpy as np
a = np.load("../../data/4.npy")
a = a*128
a = np.around(a).astype(np.int16)
print(a[0])
print(a.shape)

b = np.load("../../data/1/layer1.npy")
b = b*128
b = np.around(b).astype(np.int16)
print(b[0])
b = np.reshape(b, 400)
print(b)
print(a[0])
c = b * a[0]
c = np.around(c).astype(np.int16)
print(c)
sum = 0
for i in range(400):
    sum += c[i]
print(sum)
