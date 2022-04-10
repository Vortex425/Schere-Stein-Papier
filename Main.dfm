object TMain: TTMain
  Left = 0
  Top = 0
  Caption = 'Schere | Stein | Papier'
  ClientHeight = 404
  ClientWidth = 1058
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 352
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Image1: TImage
    Left = 192
    Top = 144
    Width = 105
    Height = 105
  end
  object Image2: TImage
    Left = 512
    Top = 144
    Width = 105
    Height = 105
  end
  object Label2: TLabel
    Left = 224
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 552
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 224
    Top = 320
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 552
    Top = 320
    Width = 31
    Height = 13
    Caption = 'Label5'
  end
  object RadioGroup1: TRadioGroup
    Left = 800
    Top = 144
    Width = 185
    Height = 105
    Caption = 'RadioGroup1'
    TabOrder = 0
  end
  object Button1: TButton
    Left = 856
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 856
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 856
    Top = 371
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 3
    OnClick = Button3Click
  end
  object ImageList1: TImageList
    Left = 1024
    Top = 16
  end
end
