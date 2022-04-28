SYSC 5104 Assign 2 
Dongchao Chen 6588409
dchen053@uottawa.ca
University of Ottawa

Project - Neighborhood Flood

Description
Case 1 - this is an empty neighborhood and the land is quite even (no altitude difference), which means water 
will be distributed evenly throughout the space. And let us assume that there are 4 cells initially get water 
(e.g. from rain or broken water pipe) and the water will be distributed and at the end all cells will have the 
same water amount. 

For easy calculation and implementation, this case uses a 20x20 matrix, which gives us a total of 400 positions.
In 4 of them were assigned a value of 5 units, then the total water amount is 20 units water. After the water
distribution, each cell should have 20/400 = 0.05 unit water. 

Due to the division calculation loss, the final average cell has around 0.04 unit water. 

Animation indicates some area maybe flood quickly. 

============================================

How to run the simulation
Run the batch files to execute defined simulation
Notes: Defined batch files have been renamed as .bak files in order to submit assignment via email
1. Rename emptyNeighborhoodFlood.bak to emptyNeighborhoodFlood.bat
2. Rename emptyNeighborhoodFloodDRW.bak to emptyNeighborhoodFloodDRW.bat
3. Open emptyNeighborhoodFlood.bat in Text Editor
   Depends on your CD++ installation, you may need to update
   C:/Eclipse/plugins/cdBuilder.simulator_1.0.0.201109022248/internal/simuOrig.exe to point to your own local simuOrig.exe
4. Open emptyNeighborhoodFloodDRW.bat in Text Editor
   Depends on your CD++ installation, you may need to update
   C:/Eclipse/plugins/cdBuilder.simulator_1.0.0.201108272355/internal/drawlog.exe to point to your own local drawlog.exe
5. Run the batch file emptyNeighborhoodFlood.bat to generate related log file
6. Run the batch file emptyNeighborhoodFloodDRW.bat to generate related drw file
7. In the CD++ menu bar, please select "Animate Cell-Devs Simulation" button
8. In the Cell-DEVS animation window, please click "Add Mo.." button and browser to 
   "C:\Eclipse\workspace\NeighborhoodFlood\Case1\emptyNeighborhoodFloodDRW.drw" and choose Open
9. Double click emptyNeighborhoodFloodDRW in the Available panel to add to Selected panel
10. Click "Modify Palette" button to launch Motify Palette window
11. In the Motify Palette window, please click Load button
12. In case1, please select "C:\Eclipse\workspace\NeighborhoodFlood\Case1\emptyNeighborhoodFlood.pal" and then click Accept
13. In the Selected panel of Cell-DEVS animation window, select emptyNeighborhoodFloodDRW and click "Load M.."
14. Click the |>  start button to start the animation simulation
15. Once finish, please close the Cell-DEVS animation window.

Thanks! 






 