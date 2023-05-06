/*lenght statement*/

data stress;
set cert.stress;
TotalTime=(timemin*60)+timesec;
retain SumSec 5400;
sumsec+totaltime;
length TestLength $ 6;
if totaltime>800 then testlength='Long';
else if 750<=totaltime<=800 then testlength='Normal';
else if totaltime<750 then TestLength='Short';
run;

data people;
set sashelp.class;
lenght class $ 10;
if weight< 80 then class="fit";
else if 80 <=weight <= 100 then class="obese";
else class="not fit";
run;
