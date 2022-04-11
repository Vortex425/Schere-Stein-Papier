object TLose: TTLose
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'Verloren'
  ClientHeight = 281
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 471
    Height = 281
    Align = alClient
    ExplicitWidth = 495
  end
  object BtnBeenden: TButton
    Left = 0
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Beenden'
    TabOrder = 0
    OnClick = BtnBeendenClick
  end
  object BtnNeustart: TButton
    Left = 396
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Insert Coins'
    TabOrder = 1
    OnClick = BtnNeustartClick
  end
end
