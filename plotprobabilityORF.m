function result=plotprobabilityORF(N_ORF);
seqlenth=N_ORF*100;
prob=[];
prob(1)=0;
for ii=1:seqlenth
    if ii<N_ORF
        prob(ii+1)=0;
    else
        prob(ii+1)=probabilityORF(ii,N_ORF);
    end
end
n=0:1:seqlenth;
result=plot(prob,n)
