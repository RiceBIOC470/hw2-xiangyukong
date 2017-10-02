function result=dna2protein(dnaseq,frame)
if frame < 1 || frame > 3
    disp("error!frame needs to be 1, 2 or 3")
    result='';
else
    amino='';
    codons=readtable('codons.csv');
    codons.Properties.RowNames = codons.Codon;
    dnaseq=dnaseq(frame:end);
    if mod(length(dnaseq),3) ~= 0
        cutoff=mod(length(dnaseq),3);
        dnaseq=dnaseq(1:end-cutoff);
    end
    i=1;
    while i<length(dnaseq)
        nucs=dnaseq(i:i+2);
        T2=codons({nucs},:);
        amino=strcat(amino,T2{1,1});
        i=i+3;
    end
    proteinseq=char(amino);
    result=proteinseq
end

% Input a dna sequence and a reading frame and returns the corresponding
% protein sequence. 