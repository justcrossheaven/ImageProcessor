%RemoveAction function creates an image 
%that has the action removed by using 4D array and applying a median filter

%Input: Imagelist: A 1*n CELL ARRAY where each element is an RGB image
%                  P.S.Assuming dimensions of each image are the same
%Output: Finalimage: An RGB image obtained 
%                    by taking the median RGB value of input images

%Author: John Jia
function Finalimage=RemoveAction(Imagelist)

%Access dimensions of images:
[rows,cols,~]=size(Imagelist{1}); 

%Preallocating the Finalimage
Finalimage=zeros(rows,cols,3,'uint8');

%Create a 4D array K by calling the helper function
K=FourDArray(Imagelist);

%Take the median of the whole array for all R,G,B values at 3rd and 4th
%positions, and allocate them to each layer of Finalimage.

for p=1:3
    M=K(:,:,p,:);
    Finalimage(:,:,p)=median(M,[3,4]);
end
end