// Valentin Gro?
// GNU GENERAL PUBLIC LICENSE
unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.IOUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, MMSystem, Vcl.Imaging.pngimage, Vcl.Imaging.GIFImg,
  Vcl.Imaging.jpeg, Vcl.OleCtrls, WMPLib_TLB, Vcl.MPlayer, Vcl.ComCtrls;

type
  TTMain = class(TForm)
    Auswahl: TRadioGroup;
    BtnStart: TButton;
    ImgCPU: TImage;
    ImgSpieler: TImage;
    LblCPU: TLabel;
    LblSpieler: TLabel;
    LblPunktzCPU: TLabel;
    LblPunktzSpieler: TLabel;
    LblStatus: TLabel;
    ImgTitel: TImage;
    ImgBackground: TImage;
    LblCountdown: TLabel;
    PnlSecret: TPanel;
    HintergrundMedia: TMediaPlayer;
    CheckMusik: TCheckBox;
    SecretMedia: TWindowsMediaPlayer;
    procedure FormDestroy(Sender: TObject);
    procedure BtnStartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Countdown;
    procedure Spielablauf;
    procedure FormActivate(Sender: TObject);
    procedure Reset;
    procedure HintergrundMediaNotify(Sender: TObject);
    procedure Hintergrundmusik;
    procedure CheckMusikClick(Sender: TObject);
    procedure PnlSecretClick(Sender: TObject);
    procedure SecretMediaPlayStateChange(ASender: TObject; NewState: Integer);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  TMain: TTMain;
  RS: TResourceStream;
  Stein, Schere, Papier, Titel: TPngImage;
  Background: TJPEGImage;
  Zufall: Array [1 .. 3] of String;
  Zufallszahl, PunktzSpieler, PunktzCPU, Count, AnAus: Integer;
  TP: String;

implementation

{$R *.dfm}
{$R Schere_Stein_Papier.res}

uses Start, Win, Lose;

procedure TTMain.BtnStartClick(Sender: TObject);
begin
  Randomize;
  BtnStart.Enabled := false;
  Zufallszahl := Random(3) + 1;
  if (TRadioButton(Auswahl.Controls[0]).Checked = false) AND
    (TRadioButton(Auswahl.Controls[1]).Checked = false) AND
    (TRadioButton(Auswahl.Controls[2]).Checked = false) then
  begin
    ShowMessage('Bitte eine Auswahl treffen.');
    BtnStart.Enabled := true;
    Exit;
  end;
  Countdown;
  Spielablauf;
  Inc(Count);
  if Count = 10 then
  begin
    if PunktzCPU > PunktzSpieler then
    begin
      HintergrundMedia.Notify := false;
      HintergrundMedia.Wait := false;
      HintergrundMedia.Pause;
      TMain.Hide;
      TLose.Show;
    end
    else if PunktzCPU < PunktzSpieler then
    begin
      HintergrundMedia.Notify := false;
      HintergrundMedia.Wait := false;
      HintergrundMedia.Pause;
      TMain.Hide;
      TWin.Show;
    end
  end
  else
    BtnStart.Enabled := true;
end;

procedure TTMain.FormActivate(Sender: TObject);
begin
  TStart.ShowModal;
end;

procedure TTMain.FormCreate(Sender: TObject);
begin
  Stein := TPngImage.Create;
  Titel := TPngImage.Create;
  Background := TJPEGImage.Create;
  TP := TPath.GetTempPath;
  try
    Titel.LoadFromResourceName(HInstance, 'PNGTitel');
    ImgTitel.Picture.Graphic := Titel;
    Stein.LoadFromResourceName(HInstance, 'PngSTEIN');
    ImgCPU.Picture.Graphic := Stein;
    ImgSpieler.Picture.Graphic := Stein;
    RS := TResourceStream.Create(HInstance, 'JpgBack', RT_RCDATA);
    ImgBackground.Picture.LoadFromStream(RS);
    // Hintergrundmusik
    RS := TResourceStream.Create(HInstance, 'Musik', RT_RCDATA);
    RS.SaveToFile(TP + '\bensound-jazzyfrenchy.mp3');
    Hintergrundmusik;
  finally
    Titel.Free;
    Stein.Free;
    RS.Free;
    Background.Free;
  end;
  Zufall[1] := 'Stein';
  Zufall[2] := 'Schere';
  Zufall[3] := 'Papier';
end;

procedure TTMain.FormDestroy(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true; // Entfernen
  Application.Terminate;
end;

procedure TTMain.CheckMusikClick(Sender: TObject);
begin
  if CheckMusik.Checked = false then
  begin
    HintergrundMedia.Notify := false;
    HintergrundMedia.Wait := false;
    HintergrundMedia.Pause
  end
  else
  begin
    HintergrundMedia.Notify := false;
    HintergrundMedia.Wait := false;
    HintergrundMedia.Resume
  end;
  HintergrundMedia.Notify := true;
end;

procedure TTMain.Countdown;
begin
  LblCountdown.Caption := '3';
  Application.ProcessMessages;
  Sleep(500);
  LblCountdown.Caption := '2';
  Application.ProcessMessages;
  Sleep(500);
  LblCountdown.Caption := '1';
  Application.ProcessMessages;
  Sleep(500);
  LblCountdown.Caption := '';
end;

procedure TTMain.SecretMediaPlayStateChange(ASender: TObject;
  NewState: Integer);
begin
  if SecretMedia.playState = 8 then
  begin
    TMain.Hide;
    TWin.Show;
  end;
end;

procedure TTMain.Spielablauf;
begin
  Stein := TPngImage.Create;
  Schere := TPngImage.Create;
  Papier := TPngImage.Create;
  Stein.LoadFromResourceName(HInstance, 'PngSTEIN');
  Schere.LoadFromResourceName(HInstance, 'PngSCHERE');
  Papier.LoadFromResourceName(HInstance, 'PngPAPIER');
  try
    case Auswahl.ItemIndex of
      0:
        begin
          ImgSpieler.Picture.Graphic := Stein;
          case Zufallszahl of
            1:
              begin
                ImgCPU.Picture.Graphic := Stein;
                LblStatus.Caption := 'Unentschieden';
              end;
            2:
              begin
                ImgCPU.Picture.Graphic := Schere;
                PunktzSpieler := PunktzSpieler + 1;
                LblPunktzSpieler.Caption := 'Punktzahl: ' +
                  IntToStr(PunktzSpieler);
                LblStatus.Caption := 'Spieler gewinnt';
              end;
            3:
              begin
                ImgCPU.Picture.Graphic := Papier;
                PunktzCPU := PunktzCPU + 1;
                LblPunktzCPU.Caption := 'Punktzahl: ' + IntToStr(PunktzCPU);
                LblStatus.Caption := 'CPU gewinnt';
              end;
          end;
        end;
      1:
        begin
          ImgSpieler.Picture.Graphic := Schere;
          case Zufallszahl of
            1:
              begin
                ImgCPU.Picture.Graphic := Stein;
                PunktzCPU := PunktzCPU + 1;
                LblPunktzCPU.Caption := 'Punktzahl: ' + IntToStr(PunktzCPU);
                LblStatus.Caption := 'CPU gewinnt';
              end;
            2:
              begin
                ImgCPU.Picture.Graphic := Schere;
                LblStatus.Caption := 'Unentschieden';
              end;
            3:
              begin
                ImgCPU.Picture.Graphic := Papier;
                PunktzSpieler := PunktzSpieler + 1;
                LblPunktzSpieler.Caption := 'Punktzahl:' +
                  IntToStr(PunktzSpieler);
                LblStatus.Caption := 'Spieler gewinnt';
              end;
          end;
        end;
      2:
        begin
          ImgSpieler.Picture.Graphic := Papier;
          case Zufallszahl of
            1:
              begin
                ImgCPU.Picture.Graphic := Stein;
                PunktzSpieler := PunktzSpieler + 1;
                LblPunktzSpieler.Caption := 'Punktzahl: ' +
                  IntToStr(PunktzSpieler);
                LblStatus.Caption := 'Spieler gewinnt';
              end;
            2:
              begin
                ImgCPU.Picture.Graphic := Schere;
                PunktzCPU := PunktzCPU + 1;
                LblPunktzCPU.Caption := 'Punktzahl: ' + IntToStr(PunktzCPU);
                LblStatus.Caption := 'CPU gewinnt';
              end;
            3:
              begin
                ImgCPU.Picture.Graphic := Papier;
                LblStatus.Caption := 'Unentschieden';
              end;
          end;
        end;
    end;
  finally
    Stein.Free;
    Schere.Free;
    Papier.Free;
  end;
end;

procedure TTMain.HintergrundMediaNotify(Sender: TObject);
begin
  if CheckMusik.Checked = true then
    HintergrundMedia.AutoRewind := true;
  HintergrundMedia.Play;
  HintergrundMedia.Notify := true;
end;

procedure TTMain.PnlSecretClick(Sender: TObject);
begin
  PnlSecret.Enabled := false;
  BtnStart.Enabled := false;
  HintergrundMedia.Notify := false;
  HintergrundMedia.Wait := false;
  HintergrundMedia.Pause;
  try
    RS := TResourceStream.Create(HInstance, 'MP4Secret', RT_RCDATA);
    RS.SaveToFile(TP + 'Secret.mp4');
  finally
    RS.Free;
  end;
  SecretMedia.Visible := true;
  SecretMedia.URL := TP + 'Secret.mp4';
  SecretMedia.Controls.Play;
end;

procedure TTMain.Reset;
begin
  PnlSecret.Enabled := true;
  SecretMedia.Visible := false;
  SecretMedia.close;
  HintergrundMedia.Rewind;
  HintergrundMedia.Notify := true;
  BtnStart.Enabled := true;
  LblStatus.Caption := '';
  LblPunktzCPU.Caption := 'Punktzahl: 0';
  LblPunktzSpieler.Caption := 'Punktzahl: 0';
  PunktzSpieler := 0;
  PunktzCPU := 0;
  Count := 0;
  Stein := TPngImage.Create;
  try
    Stein.LoadFromResourceName(HInstance, 'PngSTEIN');
    ImgCPU.Picture.Graphic := Stein;
    ImgSpieler.Picture.Graphic := Stein;
  finally
    Stein.Free;
  end;
end;

procedure TTMain.Hintergrundmusik;
begin
  HintergrundMedia.Enabled := true;
  HintergrundMedia.FileName := TP + '\bensound-jazzyfrenchy.mp3';
  HintergrundMedia.Open;
  HintergrundMedia.Play;
  HintergrundMedia.Notify := true;
end;

end.

{
  ::Notizen::

  Fehler?berpr?fung
  Startknopf nach dr?cken sperren
  Player funktionieren nicht auf anderen PC (TAnimate ?)
  weiteres

}
