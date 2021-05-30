const gata:boolean=FALSE;
const sus:zona=(x1:0; y1:0; x2:639; y2:119; cul:darkgray);
      stanga:zona=(x1:0; y1:120; x2:220; y2:479; cul:lightgray);
      main:zona=(x1:220; y1:120; x2:419; y2:479; cul:darkgray);
      dreapta:zona=(x1:420; y1:120; x2:639; y2:479; cul:lightgray);

      joc:zona=(x1:25; y1:25; x2:290; y2:290; cul:cyan);
      timer:zona=(x1:25; y1:420; x2:165; y2:450; cul:cyan);
      sfarsit:zona=(x1:320; y1:30; x2:600; y2:120; cul:cyan);
      sfarsit1:zona=(x1:320; y1:30; x2:600; y2:120; cul:lightgray);

      biesire:button=(x1:260; y1:430; x2:380; y2:460; t:'Iesire'; bcolor:lightgray; tcolor:darkgray);
      bintrare:button=(x1:260; y1:170; x2:380; y2:200; t:'Start'; bcolor:lightgray; tcolor:darkgray);
      bscoruri:button=(x1:260; y1:300; x2:380; y2:330; t:'Scoruri'; bcolor:lightgray; tcolor:darkgray);

      busor:button=(x1:260; y1:170; x2:380; y2:200; t:'Usor'; bcolor:cyan; tcolor:darkgray);
      bmediu:button=(x1:260; y1:220; x2:380; y2:250; t:'Mediu'; bcolor:cyan; tcolor:darkgray);
      bgreu:button=(x1:260; y1:270; x2:380; y2:300; t:'Greu'; bcolor:cyan; tcolor:darkgray);

      biesire2:button=(x1:480; y1:430; x2:600; y2:460; t:'Iesire'; bcolor:lightgray; tcolor:darkgray);
      bmeniu2:button=(x1:50; y1:430; x2:170; y2:460; t:'Meniu'; bcolor:lightgray; tcolor:darkgray);
      bmeniu:button=(x1:480; y1:390; x2:600; y2:420; t:'Meniu'; bcolor:black; tcolor:darkgray);
      testare:button=(x1:200; y1:420; x2:320; y2:450; t:'Test'; bcolor:black; tcolor:darkgray);
      gata2:button=(x1:340; y1:420; x2:460; y2:450; t:'Gata?'; bcolor:black; tcolor:darkgray);
      continua:button=(x1:330; y1:90; x2:460; y2:115; t:'Continua'; bcolor:black; tcolor:darkgray);
      pause:button=(x1:80; y1:380; x2:105; y2:410; t:'º'; bcolor:black; tcolor:darkgray);
      start:button=(x1:80; y1:380; x2:105; y2:410; t:''; bcolor:black; tcolor:darkgray);
      schimba:button=(x1:470; y1:90; x2:590; y2:115; t:'Schimba'; bcolor:black; tcolor:darkgray);
      salveaza:button=(x1:330; y1:90; x2:460; y2:115; t:'Salveaza'; bcolor:black; tcolor:darkgray);

Var   a,b:matrice;
      i,j,dif,n,k:byte;
      ales,gata1,sem,schimb:boolean;
      x,y:integer;
      timp,pauza,cpauza:longint;
      h1,m1,s1,ms1,h2,m2,s2,ms2,difr,hd,md,sd,msd:word;
      s,h,m,sec,ora,valo:string;
      v:vect_but;
      vs:vect_scor;
      f:text;
      t,z:longint;
      aux:scor;