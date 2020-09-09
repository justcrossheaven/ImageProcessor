%MedianPixel function calculates the median RGB values
%from a list of pixels

% Inputs: pixel: A 1*n*3 3D array which contains n pixels
%                and their corresponding RGB values
% Outputs: R: The median Red value
%          G: The median Green value
%          B: The median Blue value
% Author: John Jia

function [R,G,B]=MedianPixel(pixel)

%Generate the median value of each layer.(e.g. 1,2,3 corresponds to R,G,B)
%Note: Use round function to round each value to the nearest integer
R=round(median(pixel(:,:,1)));
G=round(median(pixel(:,:,2)));
B=round(median(pixel(:,:,3)));
end