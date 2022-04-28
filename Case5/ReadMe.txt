SYSC 5104 Assign 2 
Dongchao Chen 6588409
dchen053@uottawa.ca
University of Ottawa

Project - Neighborhood Flood

Description
Case 5 - this is an neighborhood with blocks that has pond and houses, the land is quite even (no altitude difference), which means
water will be distributed evenly throughout the space. And let us assume that there are 4 cells initially get water (e.g. from 
rain or broken water pipe) and the water will be distributed. At the same time there is some rain drop in cell block (14,14) for
1 unit water in every 2 seconds.

Also there are two houses which is circled by cell value -1. 
Try to see whether houses will be flood or not. One house apply the houseZone rule to protect it, another apply regular rule.

For easy calculation and implementation, this case uses a 20x20 matrix, which gives us a total of 400 positions.
In 4 of them were assigned a value of 5 units and 1 unit was assigned 10 represents pond, only 20 unit water + rain water amount 
will be distributed. 

Animation indicate if you does not protect the house, it will be flooded. 

============================================

How to run the simulation
Run the batch files to execute defined simulation
Notes: Defined batch files have been renamed as .bak files in order to submit assignment via email
1. Rename neighborhoodPondHouseRainFlood.bak to neighborhoodPondHouseRainFlood.bat
2. Rename neighborhoodPondHouseRainFloodDRW.bak to neighborhoodPondHouseRainFloodDRW.bat
3. Open neighborhoodPondHouseRainFlood.bat in Text Editor
   Depends on your CD++ installation, you may need to update
   C:/Eclipse/plugins/cdBuilder.simulator_1.0.0.201109022248/internal/simuOrig.exe to point to your own local simuOrig.exe
4. Open neighborhoodPondHouseRainFloodDRW.bat in Text Editor
   Depends on your CD++ installation, you may need to update
   C:/Eclipse/plugins/cdBuilder.simulator_1.0.0.201108272355/internal/drawlog.exe to point to your own local drawlog.exe
5. Run the batch file neighborhoodPondHouseRainFlood.bat to generate related log file
   WARNING: please do not open the log file in Eclipse as it is too large and Eclipse will have run out of memory error in this case
6. Run the batch file neighborhoodPondHouseRainFloodDRW.bat to generate related drw file
7. In the CD++ menu bar, please select "Animate Cell-Devs Simulation" button
8. In the Cell-DEVS animation window, please click "Add Mo.." button and browser to 
   "C:\Eclipse\workspace\NeighborhoodFlood\Case5\neighborhoodPondHouseRainFloodDRW.drw" and choose Open
9. Double click neighborhoodPondHouseRainFloodDRW in the Available panel to add to Selected panel
10. Click "Modify Palette" button to launch Motify Palette window
11. In the Motify Palette window, please click Load button
12. In case1, please select "C:\Eclipse\workspace\NeighborhoodFlood\Case5\neighborhoodPondHouseRainFlood.pal" and then click Accept
13. In the Selected panel of Cell-DEVS animation window, select neighborhoodPondHouseRainFloodDRW and click "Load M.."
14. Click the |>  start button to start the animation simulation
15. Once finish, please close the Cell-DEVS animation window.

Thanks! 