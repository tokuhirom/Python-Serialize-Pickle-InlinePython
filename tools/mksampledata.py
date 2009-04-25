import pickle

f = open("t/sampledata.pickle", 'w')
p = pickle.Pickler(f)
p.dump([1,2,3])
p.dump([4,5,6])
f.close()

