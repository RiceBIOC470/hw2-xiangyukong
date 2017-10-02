function mm=meannonan(x)
av=mean(x);
new=[];
for ii=1:length(x);
    if isnan(x)=false;
        c(ii)=x;
    else notin=isnan(x) | isinf(x);
         x(notin)=[];
         c(ii)=mean(x(:,ii));
    end
end
mm=c;