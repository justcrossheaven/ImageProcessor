function Finalimage=ActualMedian(Imagelist)
[rows,cols,~]=size(Imagelist{1});
L=length(Imagelist);
Finalimage=zeros(rows,cols,3,'uint8');
K=zeros(rows,cols,3,length(Imagelist),'uint8');
for n=1:L
    K(:,:,:,n)=Imagelist{n}(:,:,1:3);
end
for p=1:3
    M=K(:,:,p,:);
    Finalimage(:,:,p)=median(M,[3,4]);
end
end