[top]
components : neighborhoodCell rain@generator
link : out@rain input@neighborhoodCell

[rain]
distribution : constant
value : 2
initial : 1
increment : 0

[neighborhoodCell]
type : cell
dim : (20,20)
delay : transport
defaultDelayTime : 1000
border : nonwrapped
neighbors : neighborhoodCell(-1,1) neighborhoodCell(0,1) neighborhoodCell(1,1)
neighbors : neighborhoodCell(-1,0) neighborhoodCell(0,0) neighborhoodCell(1,0)
neighbors : neighborhoodCell(-1,-1) neighborhoodCell(0,-1) neighborhoodCell(1,-1)

initialValue : 0
initialCellsValue : neighborhoodPondHouseRainFlood.val
in : input
link : input in@neighborhoodCell(14,14)
localtransition : rules
zone : pondZone { (10,8) }
zone : houseZone { (3,8) (3,9) (3,10) (3,11) (4,8) (5,8) (6,8) (6,9) (6,10) (6,11) (4,11) (5,11) }
portInTransition : in@neighborhoodCell(14,14) rain-rules

[rules]       
rule : { (0,0) -
         if( ((-1,1) != ?) and ((-1,1)>= 0) and ((-1,1)<= 10), 
             ((0,0) - (-1,1)) / 9, 
             0
           ) -
         if( ((0,1) != ?) and ((0,1)>= 0) and ((0,1)<= 10), 
             ((0,0) - (0,1)) / 9, 
             0
           ) -
         if( ((1,1) != ?) and ((1,1)>= 0) and ((1,1)<= 10), 
             ((0,0) - (1,1)) / 9, 
             0
           ) -                      
         if( ((-1,0) != ?) and ((-1,0)>= 0) and ((-1,0)<= 10), 
             ((0,0) - (-1,0)) / 9, 
             0
           ) -
         if( ((1,0) != ?) and ((1,0)>= 0) and ((1,0)<= 10), 
             ((0,0) - (1,0)) / 9, 
             0
           ) -
         if( ((-1,-1) != ?) and ((-1,-1)>= 0) and ((-1,-1)<= 10), 
             ((0,0) - (-1,-1)) / 9, 
             0
           ) -  
         if( ((0,-1) != ?) and ((0,-1)>= 0) and ((0,-1)<= 10), 
             ((0,0) - (0,-1)) / 9, 
             0
           ) -        
         if( ((1,-1) != ?) and ((1,-1)>= 0) and ((1,-1)<= 10), 
             ((0,0) - (1,-1)) / 9, 
             0
           )
       } 1000 { (0,0) >= 0 and (0, 0) !=-1 }
rule : { (0,0) } 1000 { t }

[pondZone]
rule : { 10 +
         if( ((-1,1) != ?) and ((-1,1)> 0), 
             (-1,1) / 9, 
             0
           ) +
         if( ((0,1) != ?) and ((0,1)> 0), 
             (0,1) / 9, 
             0
           ) +
         if( ((1,1) != ?) and ((1,1)> 0), 
             (1,1) / 9, 
             0
           ) +                      
         if( ((-1,0) != ?) and ((-1,0)> 0), 
             (-1,0) / 9, 
             0
           ) +
         if( ((1,0) != ?) and ((1,0)> 0), 
             (1,0) / 9, 
             0
           ) +
         if( ((-1,-1) != ?) and ((-1,-1)> 0), 
             (-1,-1) / 9, 
             0
           ) +  
         if( ((0,-1) != ?) and ((0,-1)> 0), 
             (0,-1) / 9, 
             0
           ) +        
         if( ((1,-1) != ?) and ((1,-1)> 0), 
             (1,-1) / 9, 
             0
           )
       } 1000 { (0,0) >= 10 }
rule : { (0,0) } 1000 { t }

[houseZone]
rule : { (0,0) } 1000 { t }

[rain-rules]
rule : {(0,0) + 1} 0 { t }
