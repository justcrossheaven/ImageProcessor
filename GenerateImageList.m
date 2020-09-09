%GenerateImageList function generates a list of names
%of all the images with a particular file extension
%contained in a specified directory

%Inputs: name: A list of STRING containing the name of DIRECTORY that
%              images are contained in
%        extension: A STRING containing the file extention that images have
%                   (e.g. 'png')
%Outputs: C: A 1*n CELL ARRAY containing n strings where each file name is
%            a string of image
%Author: John Jia

function C=GenerateImageList(name,extension)

%Use sprintf function to put '.' and the extension together
k=sprintf('*.%s',extension);

%Use dir function to generate a structure array
A=dir(fullfile(name,k));

%Access the 'name' filed and extract it as the output cell array.
C={A.name};
end