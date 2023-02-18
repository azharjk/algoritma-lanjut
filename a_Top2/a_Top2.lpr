
Program a_Top2;

{$APPTYPE CONSOLE}

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
  If i < R Then
    Begin
      GotoXY(i, T);

      Write('A');
      Delay(d);
      i := i + 1;
      Goto a_Top;
    End;

  i := T;

  a_Rgt:;
  If i < B Then
    Begin
      GotoXY(R, i);

      Write('A');
      Delay(d);
      i := i + 1;
      Goto a_Rgt;
    End;

  i := R;

  a_Bot:;
  If i > L Then
    Begin
      GotoXY(i, B);

      Write('A');
      Delay(d);
      i := i - 1;
      Goto a_Bot;
    End;

  i := B;

  a_Left:;
  If i > T Then
    Begin
      GotoXY(L, i);

      Write('A');
      Delay(d);
      i := i - 1;
      Goto a_Left;
    End;

  ReadKey;
End.
