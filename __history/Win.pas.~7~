unit Win;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.GIFImg, Start,
  Vcl.StdCtrls, MMSystem;

type
  TTWin = class(TForm)
    Image1: TImage;
    BtnBeenden: TButton;
    BtnNeustart: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnBeendenClick(Sender: TObject);
    procedure BtnNeustartClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  TWin: TTWin;

implementation

{$R *.dfm}

uses Main;

procedure TTWin.BtnBeendenClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TTWin.BtnNeustartClick(Sender: TObject);
begin
  TMain.Reset;
  TWin.Close;
  TMain.Show;
end;

procedure TTWin.FormActivate(Sender: TObject);
begin
  PlaySound('Sound1Win', 0, SND_RESOURCE or SND_ASYNC or SND_NODEFAULT);
end;

procedure TTWin.FormCreate(Sender: TObject);
var
  GIF: TGIFImage;
  RS: TResourceStream;
begin
  GIF := TGIFImage.Create;
  ReportMemoryLeaksOnShutdown := true; // Entfernen
  try
    RS := TResourceStream.Create(HInstance, 'GIFWin', RT_RCDATA);
    GIF.LoadFromStream(RS);
    Image1.Picture.Graphic := GIF;
    (Image1.Picture.Graphic as TGIFImage).Animate := true;
  finally
    RS.Free;
    GIF.Free;
  end;
end;

end.
