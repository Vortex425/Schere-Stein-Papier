program Schere_Stein_Papier;

{$R *.dres}

uses
  Vcl.Forms,
  Main in 'Main.pas' {TMain},
  Start in 'Start.pas' {TStart},
  Win in 'Win.pas' {TWin},
  Lose in 'Lose.pas' {TLose};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTMain, TMain);
  Application.CreateForm(TTStart, TStart);
  Application.CreateForm(TTWin, TWin);
  Application.CreateForm(TTWin, TWin);
  Application.CreateForm(TTLose, TLose);
  Application.Run;

end.
