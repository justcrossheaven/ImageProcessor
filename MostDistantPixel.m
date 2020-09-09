%MostDistantPixel function select the pixel from a list that is most distant from the
%median RGB values of that list.
%P.S. PixelDistance function is called to calculate the distance.

%Input: pixels: A 1*n*3 array of RGB values representing a list of pixels
%Outputs: Rm:  The red value of the most distant pixel
%         Gm:  The green value of the most distant pixel
%         Bm:  The blue value of the most distant pixel
%Author: John Jia

function [Rm,Gm,Bm]=MostDistantPixel(pixels)
%Find the median of pixels
[R,G,B]=MedianPixel(pixels);
%Preallocate a 1D array containing distance betwenn each pixel and [R,G,B]
P=zeros(1,length(pixels(:,:,1)));

%Calculate the distance between each pixel and [R,G,B]
for n=1:length(pixels(:,:,1))
    Q=pixels(1,n,:);
    P(n)=PixelDistance(Q,[R,G,B]);
    M=max(P);
    %Check whether the corresponding pixel satisfy the maximum of distances
    if P(n)==M
        Rm=Q(1);
        Gm=Q(2);
        Bm=Q(3);
    end
end
end