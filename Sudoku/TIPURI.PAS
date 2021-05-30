type zona=record
                x1,y1,x2,y2:integer;
                cul:integer;
          end;

     valoare=record
                  but:button;
                  val:byte;
            end;
     scor=record
                nume:string[20];
                timp:string[8];
            end;

     matrice=array [1..9,1..9] of byte;

     vect_but=array [1..81] of valoare;

     vect_scor=array [1..100] of scor;