function result=protein2dnaOptimized(proteinseq)
seqd='';
codons=readtable('codons.csv');
ii = 1;
while ii<length(proteinseq)
nucs=string(proteinseq(ii:ii+2));
temp=codons(codons.AmAcid==nucs,:);
maxseq=max(temp.x_1000);
temp=temp(temp.x_1000==maxseq,:);
seqd=strcat(seqd,temp{1,2});
ii=ii+3;
end
result=char(seqd);
end