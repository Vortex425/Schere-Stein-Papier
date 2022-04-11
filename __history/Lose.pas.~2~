unit Lose;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.GIFImg, MMSystem;

type
  TTLose = class(TForm)
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
  TLose: TTLose;

implementation

{$R *.dfm}

uses Main;

procedure TTLose.BtnBeendenClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TTLose.BtnNeustartClick(Sender: TObject);
begin
  PlaySound('Sound3Neust', 0, SND_RESOURCE or SND_NODEFAULT);
  TLose.Free;
  TLose.Close;
  TMain.Show;
end;

procedure TTLose.FormActivate(Sender: TObject);
begin
  PlaySound('Sound2Lose', 0, SND_RESOURCE or SND_ASYNC or SND_NODEFAULT);
end;

procedure TTLose.FormCreate(Sender: TObject);
var
  GIF: TGIFImage;
  RS: TResourceStream;
begin
  GIF := TGIFImage.Create;
  ReportMemoryLeaksOnShutdown := true; // Entfernen
  try
    RS := TResourceStream.Create(HInstance, 'GIFLose', RT_RCDATA);
    GIF.LoadFromStream(RS);
    Image1.Picture.Graphic := GIF;
    (Image1.Picture.Graphic as TGIFImage).Animate := true;
  finally
    RS.Free;
    GIF.Free;
  end;
end;

end.
