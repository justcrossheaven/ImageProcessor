%ReadImages function read a list of images
%given the names and directory of files

% Inputs: direction: A string containing the directory of files
%         filename: A 1*n cell array containing n STRINGS
%                  each element is a filename of image to read

% Outputs: A: A 1*n CELL ARRAY, where each element is an image
%             stored as 3D array with RGB values
% Authour: John Jia

function A=ReadImages(direction,filename)

%Preallocate A
A=cell(1,length(filename));

%Read each element by for loop, n being the loop variable
for n=1:length(filename)   
    %Combine the filename and direction to be a single string called Name
    Name=sprintf('%s\\%s',direction,filename{n});
    %Read the image directly
    A{n}=imread(Name);
end
end