object TMain: TTMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Schere | Stein | Papier'
  ClientHeight = 331
  ClientWidth = 752
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ImgBackground: TImage
    Left = 0
    Top = 0
    Width = 752
    Height = 331
    Align = alClient
    ExplicitLeft = 352
    ExplicitTop = 176
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object ImgCPU: TImage
    Left = 85
    Top = 144
    Width = 105
    Height = 105
    Center = True
    Proportional = True
  end
  object ImgSpieler: TImage
    Left = 424
    Top = 144
    Width = 105
    Height = 105
    Center = True
    Proportional = True
  end
  object LblCPU: TLabel
    Left = 120
    Top = 104
    Width = 33
    Height = 23
    Caption = 'CPU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblSpieler: TLabel
    Left = 449
    Top = 104
    Width = 57
    Height = 23
    Caption = 'Spieler'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblPunktzCPU: TLabel
    Left = 93
    Top = 288
    Width = 80
    Height = 16
    Caption = 'Punktzahl: 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblPunktzSpieler: TLabel
    Left = 433
    Top = 288
    Width = 80
    Height = 16
    Caption = 'Punktzahl: 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblStatus: TLabel
    Left = 272
    Top = 72
    Width = 5
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ImgTitel: TImage
    Left = 150
    Top = 16
    Width = 467
    Height = 33
  end
  object LblCountdown: TLabel
    Left = 304
    Top = 176
    Width = 10
    Height = 42
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Auswahl: TRadioGroup
    Left = 620
    Top = 128
    Width = 96
    Height = 121
    Caption = '&Auswahl'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Stein'
      'Schere'
      'Papier')
    ParentFont = False
    TabOrder = 0
  end
  object BtnStart: TButton
    Left = 633
    Top = 271
    Width = 75
    Height = 25
    Caption = 'Start'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnStartClick
  end
  object PnlSecret: TPanel
    Left = 583
    Top = 200
    Width = 34
    Height = 13
    Hint = 'Supersymbol'
    HelpType = htKeyword
    BevelOuter = bvNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = PnlSecretClick
  end
  object HintergrundMedia: TMediaPlayer
    Left = 150
    Top = 293
    Width = 253
    Height = 30
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 3
    OnNotify = HintergrundMediaNotify
  end
  object CheckMusik: TCheckBox
    Left = 633
    Top = 306
    Width = 97
    Height = 17
    Caption = 'Musik AN/AUS'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = CheckMusikClick
  end
  object SecretMedia: TWindowsMediaPlayer
    Left = 384
    Top = 128
    Width = 193
    Height = 147
    TabOrder = 5
    Visible = False
    OnPlayStateChange = SecretMediaPlayStateChange
    ControlData = {
      0003000008000200000000000500000000000000F03F03000000000005000000
      00000000000008000200000000000300010000000B00FFFF0300000000000B00
      FFFF08000200000000000300140000000B00000008000A0000006E006F006E00
      650000000B0000000B0000000B0000000B00FFFF0B0000000800020000000000
      0800020000000000080002000000000008000200000000000B000000F2130000
      310F0000}
  end
end
