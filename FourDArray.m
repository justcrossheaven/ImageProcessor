%FourDArray is a helper function that takes an input 
%of a number of images and generates a 4D array
%whose layers are rows, columns, RGB, and the number of images

%Inputs: Imagelist: A 1*n CELL ARRAY where each element is an RGB image
%                   Note: Assuming dimensions of each image are the same.
%Outputs: K: A 4D array includes all the images.

%Author: John Jia
function K=FourDArray(Imagelist)

%Access dimensions of images:
[rows,cols,~]=size(Imagelist{1}); 
L=length(Imagelist);

%Preallocating the 4-D array 
K=zeros(rows,cols,3,length(Imagelist),'uint8');

%Make the 4D array includes all the information of Imagelist:

for n=1:L
    K(:,:,:,n)=Imagelist{n}(:,:,1:3);
end
end