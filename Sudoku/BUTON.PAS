program nume;
uses crt, graph,mouse2,venbuton;
var b1,b2:button;
    gd,gm:integer;
begin
     clrscr;
     gd:=detect;
     initgraph(gd,gm,'');
     definire_buton(b1,10,10,100,30,4,14,'patrat');
     definire_buton(b2,10,40,100,70,14,4,'cerc');
     pune_buton(b1);
     pune_buton(b2);
     mouseon;
     repeat
           if buton_apasat(b1) then
              begin
                   mouseoff;
                   setcolor(random(15)+1);
                   rectangle(random(200),random(200),random(200),random(200));
                   mouseon;
              end;
            if buton_apasat(b2) then
              begin
                   mouseoff;
                   setcolor(random(15)+1);
                   circle(random(200),random(200),random(200));
                   mouseon;
              end;
     until rightbutton;
end.


