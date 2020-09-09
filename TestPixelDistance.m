Colours(:,:,1)=[192,66,65];
Colours(:,:,2)=[50,73,192];
Colours(:,:,3)=[135,203,135];
P=Colours(1,1,:);
Q=Colours(1,3,:);
D=PixelDistance(P,Q);
disp(D)