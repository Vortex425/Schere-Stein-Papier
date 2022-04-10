object TWin: TTWin
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'TWin'
  ClientHeight = 431
  ClientWidth = 369
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
    Width = 369
    Height = 431
    Center = True
  end
  object BtnBeenden: TButton
    Left = 0
    Top = 406
    Width = 75
    Height = 25
    Caption = 'Beenden'
    TabOrder = 0
    OnClick = BtnBeendenClick
  end
  object BtnNeustart: TButton
    Left = 294
    Top = 406
    Width = 75
    Height = 25
    Caption = 'Neustart'
    TabOrder = 1
    OnClick = BtnNeustartClick
  end
end
