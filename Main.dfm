object TMain: TTMain
  Left = 0
  Top = 0
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
  object MediaPlayerBackground: TWindowsMediaPlayer
    Left = 0
    Top = 359
    Width = 26
    Height = 25
    TabOrder = 4
    OnPlayStateChange = MediaPlayerBackgroundPlayStateChange
    ControlData = {
      0003000008000001000043003A005C00550073006500720073005C0041006E00
      770065006E006400650072005C004400650073006B0074006F0070005C005300
      6300680075006C0065005C005300420053005A005C004B006C00610073007300
      65002000310031005C00500072006F006700720061006D006D00690065007200
      65006E005C00500072006F006700720061006D006D0065005C00530063006800
      650072006500200053007400650069006E002000500061007000690065007200
      5C005200650073006F0075007200630065006E005C00620065006E0073006F00
      75006E0064002D006A0061007A007A0079006600720065006E00630068007900
      2E006D007000330000000500000000000000F03F030000000000050000000000
      0000000008000200000000000300010000000B00FFFF0300000000000B00FFFF
      08000200000000000300010000000B00000008001400000069006E0076006900
      7300690062006C00650000000B0000000B0000000B00FFFF0B00FFFF0B000000
      0800020000000000080002000000000008000200000000000800020000000000
      0B000000B002000095020000}
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
  object Panel1: TPanel
    Left = 620
    Top = 252
    Width = 96
    Height = 13
    Hint = 'Der Nieser'
    BevelOuter = bvNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = Panel1Click
  end
  object MediaPlayerSecret: TWindowsMediaPlayer
    Left = 392
    Top = 133
    Width = 169
    Height = 149
    TabOrder = 3
    OnPlayStateChange = MediaPlayerSecretPlayStateChange
    ControlData = {
      000300000800F400000043003A005C00550073006500720073005C0041006E00
      770065006E006400650072005C004400650073006B0074006F0070005C005300
      6300680075006C0065005C005300420053005A005C004B006C00610073007300
      65002000310031005C00500072006F006700720061006D006D00690065007200
      65006E005C00500072006F006700720061006D006D0065005C00530063006800
      650072006500200053007400650069006E002000500061007000690065007200
      5C005200650073006F0075007200630065006E005C004A0061006E0073004600
      7500700069006C007A005F0078003200360034002E006D006B00760000000500
      000000000000F03F030000000000050000000000000000000800020000000000
      0300010000000B0000000300000000000B00FFFF080002000000000003000E00
      00000B00000008000A0000006E006F006E00650000000B0000000B0000000B00
      FFFF0B00FFFF0B00000008000200000000000800020000000000080002000000
      000008000200000000000B00000077110000660F0000}
  end
  object BtnMusik: TButton
    Left = 633
    Top = 302
    Width = 75
    Height = 25
    Caption = 'Musik AN/AUS'
    TabOrder = 5
    OnClick = BtnMusikClick
  end
end
