function result=protein2dna(proteinseq);
readref=readtable('codons.csv');
seqd='';
ii=1
while ii<length(proteinseq);
    nucs=string(proteinseq(ii:ii+2));
    temp=readref(readref.AmAcid==nucs,:);
    altern=size(temp);
    seqd=strcat(seqd,temp{randi(altern(1)),2});
    ii=ii+3;
end
result=char(seqd);
end
