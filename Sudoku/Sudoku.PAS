uses venbuton, graph, mouse2, dos, crt;

{xmax=639, ymax=479}
{$i tipuri.pas}
{$i vars.pas}
{$i grafic.pas}

begin

     modgrafic;
     pag1;
     repeat
           if (buton_apasat(bintrare)) or (schimb) then
              begin
                   pag2;
                   if dif=1 then
                      begin
                           assign(f, 'usor.in'); reset(f);
                           randomize;
                           t:=random(9);
                           for i:=1 to t*20 do readln(f);
                           citire(a,b);
                           close(f);
                           pag3;
                      end;
                   if dif=2 then
                      begin
                           assign(f, 'mediu.in'); reset(f);
                           randomize;
                           t:=random(5);
                           for i:=1 to t*20 do readln(f);
                           citire(a,b);
                           close(f);
                           pag3;
                      end;
                   if dif=3 then
                      begin
                           assign(f, 'greu.in'); reset(f);
                           randomize;
                           t:=random(5);
                           for i:=1 to t*20 do readln(f);
                           citire(a,b);
                           close(f);
                           pag3;
                      end;
              end;
           if gata1=true then
              begin
                   mouseoff;
                   pag1;
                   gata1:=false;
              end;
           if buton_apasat(bscoruri) then
              begin
                   mouseoff;
                   cleardevice;
                   setbkcolor(black);
                   settextstyle(0,0,3);
                   scrietext('SCORURI', 250, 10, cyan);
                   settextstyle(0,0,2);
                   scrietext('USOR', 70, 40, blue);
                   assign(f, 'susor.in'); reset(f);
                   citirescor(5,60);
                   close(f);
                   settextstyle(0,0,2);
                   scrietext('MEDIU', 280 , 40, yellow);
                   assign(f, 'smediu.in'); reset(f);
                   citirescor(220,60);
                   close(f);
                   settextstyle(0,0,2);
                   scrietext('GREU',490,40, lightred);
                   assign(f, 'sgreu.in'); reset(f);
                   citirescor(430,60);
                   setlinestyle(0,0,thickwidth);
                   line(208,60,208,440);
                   line(420,60,420,440);
                   close(f);
                   settextstyle(0,0,2);
                   pune_buton(biesire2);
                   pune_buton(bmeniu2);
                   mouseon;
                   repeat
                         if buton_apasat(biesire2) then gata:=true;
                         if buton_apasat(bmeniu2) then gata1:=true;
                   until gata or gata1;
              end;
           if buton_apasat(biesire) then gata:=TRUE;
     until gata;
     closegraph;

end.