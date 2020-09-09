%GenerateFrameList function generates a list of frames
%Could be used for determining which frames to extract from a movie file.

%Inputs: a: A STARTING frame number
%        b: A STEP SIZE
%        c: The number of frames to generate
%Outputs: A: A 1*n 1D array where n is the desired number of frames
%            and contains the frame values

%Author: John Jia

function A=GenerateFrameList(a,b,c)

%Generate the frame list by using an arithmatic sequence
A=a:b:a+b*(c-1); 
end