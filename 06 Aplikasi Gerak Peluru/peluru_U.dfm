object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Aplikasi Gerak Peluru (Firman Qahsdus Sabil)'
  ClientHeight = 652
  ClientWidth = 1218
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object Image: TImage
    Left = 448
    Top = 40
    Width = 735
    Height = 560
  end
  object GroupBox1: TGroupBox
    Left = 56
    Top = 32
    Width = 289
    Height = 153
    Caption = 'Input Parameter'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 92
      Height = 17
      Caption = 'Kecepatan Awal'
    end
    object Label2: TLabel
      Left = 16
      Top = 68
      Width = 76
      Height = 17
      Caption = 'Sudut Elevasi'
    end
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 75
      Height = 17
      Caption = 'Waktu t detik'
    end
    object Edit1: TEdit
      Left = 152
      Top = 24
      Width = 121
      Height = 25
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 152
      Top = 65
      Width = 121
      Height = 25
      TabOrder = 1
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 152
      Top = 104
      Width = 121
      Height = 25
      TabOrder = 2
      Text = 'Edit3'
    end
  end
  object GroupBox2: TGroupBox
    Left = 56
    Top = 191
    Width = 370
    Height = 409
    Caption = 'Output'
    TabOrder = 1
    object Label4: TLabel
      Left = 24
      Top = 32
      Width = 74
      Height = 17
      Caption = 'X maksimum'
    end
    object Label5: TLabel
      Left = 24
      Top = 73
      Width = 73
      Height = 17
      Caption = 'Y maksimum'
    end
    object Label6: TLabel
      Left = 24
      Top = 112
      Width = 172
      Height = 17
      Caption = 'Waktu mencapai Y maksimum'
    end
    object Label7: TLabel
      Left = 24
      Top = 148
      Width = 173
      Height = 17
      Caption = 'Waktu mencapai X maksimum'
    end
    object Label8: TLabel
      Left = 32
      Top = 216
      Width = 99
      Height = 17
      Caption = 'Vx setelah t detik'
    end
    object Label9: TLabel
      Left = 32
      Top = 256
      Width = 127
      Height = 17
      Caption = 'Jarak X setelah t detik'
    end
    object Label10: TLabel
      Left = 32
      Top = 328
      Width = 99
      Height = 17
      Caption = 'Vy setelah t detik'
    end
    object Label11: TLabel
      Left = 32
      Top = 368
      Width = 126
      Height = 17
      Caption = 'Jarak Y setelah t detik'
    end
    object Edit4: TEdit
      Left = 224
      Top = 29
      Width = 121
      Height = 25
      TabOrder = 0
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 224
      Top = 65
      Width = 121
      Height = 25
      TabOrder = 1
      Text = 'Edit5'
    end
    object Edit6: TEdit
      Left = 224
      Top = 104
      Width = 121
      Height = 25
      TabOrder = 2
      Text = 'Edit6'
    end
    object Edit7: TEdit
      Left = 224
      Top = 145
      Width = 121
      Height = 25
      TabOrder = 3
      Text = 'Edit7'
    end
    object Edit8: TEdit
      Left = 224
      Top = 208
      Width = 121
      Height = 25
      TabOrder = 4
      Text = 'Edit8'
    end
    object Edit9: TEdit
      Left = 224
      Top = 248
      Width = 121
      Height = 25
      TabOrder = 5
      Text = 'Edit9'
    end
    object Edit10: TEdit
      Left = 224
      Top = 320
      Width = 121
      Height = 25
      TabOrder = 6
      Text = 'Edit10'
    end
    object Edit11: TEdit
      Left = 224
      Top = 360
      Width = 121
      Height = 25
      TabOrder = 7
      Text = 'Edit11'
    end
  end
  object btnProcess: TButton
    Left = 351
    Top = 40
    Width = 75
    Height = 145
    Caption = 'Proses'
    TabOrder = 2
    OnClick = btnProcessClick
  end
  object BitBtn1: TBitBtn
    Left = 1108
    Top = 615
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
end
