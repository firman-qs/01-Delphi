object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Aplikasi Konversi Format Citra'
  ClientHeight = 463
  ClientWidth = 701
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taRightJustify
  CustomTitleBar.ShowIcon = False
  CustomTitleBar.BackgroundColor = clWhite
  CustomTitleBar.ForegroundColor = 65793
  CustomTitleBar.InactiveBackgroundColor = clWhite
  CustomTitleBar.InactiveForegroundColor = 10066329
  CustomTitleBar.ButtonForegroundColor = 65793
  CustomTitleBar.ButtonBackgroundColor = clWhite
  CustomTitleBar.ButtonHoverForegroundColor = 65793
  CustomTitleBar.ButtonHoverBackgroundColor = 16053492
  CustomTitleBar.ButtonPressedForegroundColor = 65793
  CustomTitleBar.ButtonPressedBackgroundColor = 15395562
  CustomTitleBar.ButtonInactiveForegroundColor = 10066329
  CustomTitleBar.ButtonInactiveBackgroundColor = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  StyleElements = [seFont, seClient]
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 511
    Top = 64
    Width = 130
    Height = 15
    Caption = 'By Firman Qashdus Sabil'
  end
  object RadioButton1: TRadioButton
    Left = 56
    Top = 64
    Width = 113
    Height = 17
    Caption = 'JPG'
    TabOrder = 0
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 111
    Top = 64
    Width = 113
    Height = 17
    Caption = 'BMP'
    TabOrder = 1
    OnClick = RadioButton2Click
  end
  object BitBtn1: TBitBtn
    Left = 254
    Top = 60
    Width = 75
    Height = 25
    Caption = 'Load Citra'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 56
    Top = 367
    Width = 75
    Height = 25
    Caption = 'JPG to BMP'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 149
    Top = 367
    Width = 75
    Height = 25
    Caption = 'BMP to JPG'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 368
    Top = 367
    Width = 75
    Height = 25
    Caption = 'Save As'
    TabOrder = 5
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 464
    Top = 367
    Width = 75
    Height = 25
    Caption = 'Clear All'
    TabOrder = 6
    OnClick = BitBtn5Click
  end
  object Panel1: TPanel
    Left = 56
    Top = 104
    Width = 273
    Height = 249
    Caption = 'Panel1'
    TabOrder = 7
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 105
      Height = 105
    end
  end
  object Panel2: TPanel
    Left = 368
    Top = 104
    Width = 273
    Height = 249
    Caption = 'Panel2'
    TabOrder = 8
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 105
      Height = 105
    end
  end
  object BitBtn6: TBitBtn
    Left = 566
    Top = 367
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 9
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 336
    Top = 152
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 336
    Top = 112
  end
end
