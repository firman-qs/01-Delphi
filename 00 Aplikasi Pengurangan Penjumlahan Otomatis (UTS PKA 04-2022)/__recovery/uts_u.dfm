object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'UTS PKA 2022 FIRMAN_AC'
  ClientHeight = 339
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 68
    Top = 89
    Width = 54
    Height = 20
    Caption = 'Angka 1'
  end
  object Label2: TLabel
    Left = 217
    Top = 89
    Width = 54
    Height = 20
    Caption = 'Angka 2'
  end
  object Label3: TLabel
    Left = 425
    Top = 89
    Width = 33
    Height = 20
    Caption = 'Hasil'
  end
  object Label4: TLabel
    Left = 195
    Top = 108
    Width = 16
    Height = 32
    Caption = #177
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 68
    Top = 115
    Width = 121
    Height = 28
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 217
    Top = 115
    Width = 121
    Height = 28
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 425
    Top = 115
    Width = 167
    Height = 28
    TabOrder = 2
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 344
    Top = 115
    Width = 75
    Height = 30
    Caption = '='
    TabOrder = 3
    OnClick = Button1Click
  end
end
