function [time, CFUArea]=CountCFU(plateRadius)


myPi = raspi();
mycam = cameraboard(myPi,'Resolution','1280x720','Brightness',70);

%106.75
plateSize=pi*plateRadius^2;

%Raspi connection Mode
cells = snapshot(mycam);


figure
imshow(cells)
gray_image=rgb2gray(cells);
imshow(gray_image);


%[centersBright, radiiBright] = imfindcircles(cells,[10 50],'ObjectPolarity', ...
%    'dark','Sensitivity',.75);

[centersBright, radiiBright] = imfindcircles(cells,[1 15],'ObjectPolarity', ...
    'bright','Sensitivity',.75);


imshow(cells);

%h = viscircles(centers,radii);
hBright = viscircles(centersBright, radiiBright,'EdgeColor','b');

radiiBrightSquare=radiiBright.^2;
radiiBrightSquare=radiiBrightSquare.*pi;
cellArea=sum(radiiBrightSquare);

%{
if size(radiiBright,1)<15
    disp('There are too few data points for meaningful analysis');
elseif size(radiiBright,1)>150
    disp('There are too many data points for meaninfgul analysis');
end
    
%}



CFUArea=cellArea/plateSize*100;
disp(CFUArea);

time=toc;

end




