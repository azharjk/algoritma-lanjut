
Program a_Top1;

//{$APPTYPE CONSOLE}

Uses SysUtils, Crt;

Var 
  L, T, R, B : Integer;

  i, d : Integer;

  Label a_Top, a_Rgt, a_Bot, a_Left;

Begin
  L := 5;
  T := 3;
  R := 40;
  B := 20;
  d := 50;

  i := L;

  a_Top:;
  GotoXY(i, T);

  Write('A');
  Delay(d);
  i := i + 1;
  If i < R Then
    Goto a_Top;

  i := T;

  a_Rgt:;
  GotoXY(R, i);

  Write('A');
  Delay(d);
  i := i + 1;
  If i < B Then
    Goto a_Rgt;

  i := R;

  a_Bot:;
  GotoXY(i, B);

  Write('A');
  Delay(d);
  i := i - 1;
  If i > L Then
    Goto a_Bot;

  i := B;

  a_Left:;
  GotoXY(L, i);

  Write('A');
  Delay(d);
  i := i - 1;
  If i > T Then
    Goto a_Left;

  ReadKey;
End.
