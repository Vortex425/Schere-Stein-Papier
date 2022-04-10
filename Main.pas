unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, MMSystem;

type
  TTMain = class(TForm)
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    ImageList1: TImageList;
    Image1: TImage;
    Image2: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  TMain: TTMain;

implementation

{$R *.dfm}
{$R Schere_Stein_Papier.res}

uses Start, Win, Lose;

procedure TTMain.Button1Click(Sender: TObject);
begin
  TMain.Hide;
  TStart.Show;
end;

procedure TTMain.Button2Click(Sender: TObject);
begin
  TMain.Hide;
  TWin.Show;
end;

procedure TTMain.Button3Click(Sender: TObject);
begin
  TMain.Hide;
  TLose.Show
end;

procedure TTMain.FormDestroy(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true; // Entfernen
  TMain.Free;
end;

end.

{
::Notizen::

Secret Button --> Atombombe (mp4 ??)
Komponenten umbenennen
Fehlerüberprüfung
weiteres

}
