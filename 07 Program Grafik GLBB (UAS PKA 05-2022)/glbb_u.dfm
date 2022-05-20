object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Aplikasi Kurva GLBB'
  ClientHeight = 740
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object Label3: TLabel
    Left = 34
    Top = 708
    Width = 144
    Height = 17
    Caption = 'by Firman Qashdus Sabil'
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 8
    Width = 313
    Height = 137
    Caption = 'Input'
    Color = clGradientInactiveCaption
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 35
      Width = 36
      Height = 17
      Caption = 'v(m/s)'
    end
    object Label2: TLabel
      Left = 24
      Top = 80
      Width = 53
      Height = 17
      Caption = 'a(m/s^2)'
    end
    object Edit1: TEdit
      Left = 104
      Top = 32
      Width = 170
      Height = 25
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 104
      Top = 77
      Width = 170
      Height = 25
      TabOrder = 1
      Text = 'Edit2'
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 151
    Width = 313
    Height = 546
    Caption = 'GroupBox2'
    TabOrder = 1
    object Image1: TImage
      Left = 24
      Top = 32
      Width = 250
      Height = 150
    end
    object Image2: TImage
      Left = 24
      Top = 200
      Width = 250
      Height = 150
    end
    object Image3: TImage
      Left = 24
      Top = 368
      Width = 250
      Height = 150
    end
  end
  object Button1: TButton
    Left = 375
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Plot S vs t'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 375
    Top = 351
    Width = 75
    Height = 25
    Caption = 'Plot v vs t'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 375
    Top = 519
    Width = 75
    Height = 25
    Caption = 'Plot a vs t'
    TabOrder = 4
    OnClick = Button3Click
  end
  object BitBtn1: TBitBtn
    Left = 375
    Top = 700
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 5
  end
end
