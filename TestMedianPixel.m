Pixels(:,:,1) =[54,50 ,48,43];
Pixels(:,:,2) =[48,52 ,48,44];
Pixels(:,:,3) =[50,41 ,47,52];
[R,G,B]=MedianPixel(Pixels);
disp(R)
disp(G)
disp(B)
[Rm,Gm,Bm]=MostDistantPixel(Pixels);
disp(Rm);
disp(Gm);
disp(Bm);