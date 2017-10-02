function result = randdnaseq(N)
bases=['A','T','C','G'];
result=bases(randi(4,1,N))
% returns a random dna sequence of length N
