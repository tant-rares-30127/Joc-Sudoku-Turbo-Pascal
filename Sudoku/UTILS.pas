uses crt, graph;

var s:string;

const xemin:integer = 100;
      yemin:integer = 10;
      xemax:integer = 500;
      yemax:integer = 410;

      xrmin:integer = -10;
      yrmin:integer = -10;
      xrmax:integer = 10;
      yrmax:integer = 10;

var xo, yo: integer;


procedure IGraph;
var gd, gm:integer;
begin
     gd:=Detect;
     initgraph(gd, gm, '');
end;

function ReadString(x, y, width, maxchar, col:integer; t:string):string;
var s:string; oldcol:integer;
    xb, xc, yc:integer;
    c:char;
procedure Cursor(x, y, col:integer);
var oldcol:integer;
begin
     oldcol:=GetColor;
     SetColor(col);
     Line(x, y, x, y+10);
     SetColor(oldcol);
end;

begin
     oldcol:=GetColor;
     SetColor(col);
     outTextXY(x, y, t);
     xb := x + TextWidth(t) + 3;
     {Rectangle(xb, y - 4, xb + width, y + 10);}
     s:='';
     xc:=xb + 3; yc:=y-2;
     repeat
           Cursor(xc, yc, yellow);
           c:=Readkey; if c=#0 then c:=Readkey;
           if c in ['0'..'9','a'..'z', 'A'..'Z'] then
              begin
                   if Length(s) < maxchar then
                      begin
                           s:=s+c;
                           SetFillStyle(SolidFill, GetBkColor);
                           Bar(xb+1, y-3, xb+width-1, y+9);
                           OutTextXY(xb + 4, y, s);
                           Cursor(xc, yc, GetBkColor);
                           xc := xc + TextWidth(c);
                      end;
              end
           else
               if (c=#8) AND (Length(s) > 0) then
                  begin
                       Cursor(xc, yc, GetBkColor);
                       xc := xc - TextWidth(s[Length(s)]);
                       Delete(s, Length(s), 1);
                       SetFillStyle(SolidFill, GetBkColor);
                       Bar(xb+1, y-3, xb+width-1, y+9);
                       OutTextXY(xb + 4, y, s);
                  end;
     until c=#13;
     SetColor(oldcol);
     Cursor(xc, yc, GetBkColor);
     ReadString:=s;
end;

function xE(x:real):integer;
begin
     xE:=Trunc((xemax - xo)*x/xrmax) + xo
end;

function yE(y:real):integer;
begin
     yE:=Trunc((yemin - yo)*y/yrmax) + yo
end;

procedure CitesteVectori;
var f:text;
    x1, y1, x2, y2, cul:integer;
begin
     Assign(f, 'Vectori.in'); Reset(f);
     while NOT Eof(f) do
           begin
                Readln(f, x1, y1, x2, y2, cul);
                SetColor(cul);
                Line( xE(x1), yE(y1), xE(x2), yE(y2));
                Delay(1000)
           end;
     Close(f);
end;

procedure Grafic(t, a, b, c:real);
var x, y:real; xecr, yecr, col:integer;
begin
     col:=1 + Random(15);
     x:=xrmin;
     while x <= xrmax do
           begin
                if t = 1 then y:=a*x + b
                else y:=a*x*x + b*x + c;
                xecr:=xE(x);
                yecr:=yE(y);
                if (xecr>=xemin) AND (xecr<=xemax) then
                   if (yecr>=yemin) AND (yecr<=yemax) then
                      PutPixel(xE(x), yE(y), col);
                x:=x + 0.001;
                Delay(1);
           end;
end;

procedure CitesteFunctii;
var f:text; t:integer;a,b,c:real;
begin
     Randomize;
     Assign(f, 'Functii.in'); Reset(f);
     while NOT Eof(f) do
           begin
                Read(f, t);
                if t = 1 then
                   Read(f, a, b)
                else
                    Read(f, a, b, c);
                Grafic(t, a, b, c);
           end;
     Close(f);
end;

begin
     IGraph;
     ClearDevice;
     SetBkColor(Cyan);

     {   CITIREA UNUI STRING
        ===================
      }
        s:=ReadString(100, 100, 100, 1, Red, '');
        outtextxy(500,300,s);

     {
     rectangle(xemin, yemin, xemax, yemax);
     xo := (xemax + xemin) div 2;
     yo := (yemax + yemin) div 2;
     SetColor(Blue);
     Line(xo, yemin, xo,yemax);
     Line(xemin, yo, xemax, yo);
     }
     {
        VECTORI
        =======
        CitesteVectori;
     }
     {
     CitesteFunctii;
     }
     repeat until Keypressed;
     CloseGraph;
end.