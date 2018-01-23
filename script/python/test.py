import numpy as np
w3 = np.load('../../data/7.npy')
print(w3.shape)
w3 = w3*128*128
w3 = np.around(w3).astype(np.int16)
print(w3)
