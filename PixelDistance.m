%PixelDistance function calculates the square of the distance
%between two points in colour space.

%Inputs: P: An array containing RGB values representing the first point in 3D colour space
%        Q: An array containing RGB values representing the second point in 3D colour space
%Outputs: SquaredDistance: The square of the distance between the two points

%Author: John Jia

function SquaredDistance=PixelDistance(P,Q)
%Make sure P and Q are double instead of uint8
P=double(P);
Q=double(Q);
%Use the formula of calculating the distance of points in 3D spaces
%to calculate the distance.
SquaredDistance=(P(1)-Q(1))^2+(P(2)-Q(2))^2+(P(3)-Q(3))^2;
end