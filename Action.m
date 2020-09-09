function Finalimage=Action(Imagelist)
[rows,cols,~]=size(Imagelist{1});
k=length(Imagelist);
Finalimage=zeros(rows,cols,3,'uint8');
for i=1:rows                
    for j=1:cols
        P1=zeros(1,k);
        P2=zeros(1,k);
        P3=zeros(1,k);
        Pixels=zeros(1,k,3); 
        for n=1:length(Imagelist)
            M=Imagelist{n};
            P1(n)=M(i,j,1);
            P2(n)=M(i,j,2);
            P3(n)=M(i,j,3);
        end
        Pixels(:,:,1)=P1;
        Pixels(:,:,2)=P2;
        Pixels(:,:,3)=P3;
        [R,G,B]=MostDistantPixel(Pixels);
        Finalimage(i,j,1)=R;
        Finalimage(i,j,2)=G;
        Finalimage(i,j,3)=B;
    end
end
imshow(Finalimage);
end