% In this file, testcase for Kernighan Lin algorithm is written
%   For one digital circuit, weighted matrix is made
%   One Kerninghan-Lin pass is done, and swap of elements is tracked


A = [0 0 0 .5 0 .5 0 0 0 0;...
     0 0 0 .25 .25 0 .25 .25 0 0;...
     0 0 0 0 .5 0 0 .5 0 0;...
     0 0 0 0 .25 1 .75 .25 0 0;...
     0 0 0 0 0 0 .58 1.08 0 .33;...
     0 0 0 0 0 0 .5 0 1 0;...
     0 0 0 0 0 0 0 .58 .5 .83;...
     0 0 0 0 0 0 0 0 0 1.33;...
     0 0 0 0 0 0 0 0 0 .5;...
     0 0 0 0 0 0 0 0 0 0;...
     ];
A = (A+A') - eye(size(A,1)).*diag(A);
clc
[components, nets] = ReadNetlistFile('..\Altium\Sheet1.NET');
[P1, P2] = KernighanLin(components, nets, A);