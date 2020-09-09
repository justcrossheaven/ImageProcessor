%ActionShot function creates an action shot image
%by finding the pixels from a stack of images
%that are most distant from the median RGB values.

%Input: Imagelist: A 1*n CELL ARRAY where each element is an RGB image
%                  P.S.Assuming dimensions of each image are the same
%Output: Finalimage: An RGB image obtained 
%                    by taking the most distant RGB value 
%                    from the median RGB values of input images
%Author: John Jia

function Finalimage=ActionShot(Imagelist)

%Calculate the median RGB value
Image=RemoveAction(Imagelist);

%Access the dimensions of images
[rows,cols,~]=size(Image);
L=length(Imagelist);

%Preallocate the Finalimage
Finalimage=zeros(rows,cols,3,'uint8');

%Create a 4D array by calling the helper function
K=FourDArray(Imagelist);

%Access the RGB value of the action removed image
for i=1:rows
    for j=1:cols
        R=Image(i,j,1);
        G=Image(i,j,2);
        B=Image(i,j,3);
        P=zeros(1,L); %Preallocate the pixel distance
        for n=1:L
        Q=K(i,j,:,n); %Read the RGB value of each image at a certain position
        P(n)=PixelDistance(Q,[R,G,B]);
        if P(n)==max(P)% See if the corresponding pixel is the most distant pixel
            Finalimage(i,j,:)=Q;
        end
        end
    end
end
end