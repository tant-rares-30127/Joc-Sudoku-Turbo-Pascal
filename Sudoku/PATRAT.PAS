uses crt,graph,mouse2;
var x1,x2,y1,k,y2,a,b,c,gd,gm:integer;
    d:real;
    sem:boolean;
begin
     clrscr;    randomize;
     k:=0;
     gd:=detect;
     initgraph(gd,gm,'');mouseon;
     maximizemousewindow;
     setcolor(14);
     repeat
           if leftbutton then
              begin
                   x1:=random(getmaxx div 2);
                   repeat
                         x2:=random(getmaxx);
                         inc(k);
                   until x2>x1;
                   y1:=random(getmaxy div 2);
                   repeat
                         y2:=random(getmaxy);
                   until y2>y1;
                   a:=1+random(15);
                   setcolor(a);
                   b:=random(9);
                   repeat
                         c:=random(15)+1;
                   until a<>c;
                   mouseoff;
                   rectangle(x1,y1,x2,y2);
                   setfillstyle(b,c);
                   floodfill(x1+1,y1+1,a);
                   mouseon;
                   repeat
                   until not leftbutton;
              end;


     until rightbutton;
     closegraph; write(k);readln;

end.