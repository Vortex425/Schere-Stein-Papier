unit Start;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.ExtCtrls, JPEG, Main;

type
  TTStart = class(TForm)
    Image1: TImage;
    BtnStart: TButton;
    BtnBeenden: TButton;
    Image2: TImage;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure BtnBeendenClick(Sender: TObject);
    procedure BtnStartClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  TStart: TTStart;

implementation

{$R *.dfm}
uses Win;
procedure TTStart.BtnBeendenClick(Sender: TObject);
begin
  Application.Terminate;
  ReportMemoryLeaksOnShutdown := true; //Entfernen
end;

procedure TTStart.BtnStartClick(Sender: TObject);
begin
TStart.Free;
TStart.Close;
TMain.Show;
end;

procedure TTStart.FormCreate(Sender: TObject);
var
  Png: TPngImage;
  Jpg: TJPEGImage;
  RS: TResourceStream;
begin
  Png := TPngImage.Create;
  Jpg := TJPEGImage.Create;
  try
    Png.LoadFromResourceName(HInstance, 'PNGTitel');
    Image2.Picture.Graphic := Png;
    RS := TResourceStream.Create(HInstance, 'JPGBack', RT_RCDATA);
    Jpg.LoadFromStream(RS);
    Image1.Picture.Graphic := Jpg;
  finally
    Png.Free;
    Jpg.Free;
    RS.Free;
  end;

end;

end.
