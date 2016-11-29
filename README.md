# RaspberryPiCellCounter
Raspberry Pi Petri Dish Cell Counter
This is a small program used to count the colonies formed in a petri dish. The main purpose is to identify the colonies, and then calculate
the area of the colonies over time so that a growth curve can be established. 

The progam was created as part of a school project focused on making a development in microbiology. 

To Run:
    Have the test2 m file and the countCFU function in the same workspace. 
    Follow Instructions here to setup hardware. https://www.mathworks.com/hardware-support/raspberry-pi-matlab.html
    Run test2
To Modify:
    To alter how many pictures are taken, alter the for loop in the test2 file
    The program is currently set to read bright objects on a darker background. To read dark objects on a bright background, change 
    line 23 to:
    [centersBright, radiiBright] = imfindcircles(cells,[1 15],'ObjectPolarity','dark','Sensitivity',.75);
    

Notes

Hardware Used: 
  Raspberry Pi 3 Model B
  Rasberry Pi Camera Module V2

Software Used:
  Matlab 2016b
    Raspberry Pi drive was flashed with a specific version of rasbian that allowed easy communication between Matlab and the 
    master computer computer
