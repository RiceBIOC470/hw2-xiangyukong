function result=probabilityORF(N,N_ORF);
n=0;
for ii=1:1000;
    seqs=randdnaseq(N);
    [ORFlenghth,startpos,stoppos]=findORF(seqs);
    if ORFlenghth>N_ORF;
        n=n+1;
    else
    end
end
result=n./1000
