object Form1: TForm1
  Left = 268
  Top = 92
  Caption = 
    'Program Aplikasi Pemantulan Cermin Cekung (by Firman Qashdus Sab' +
    'il)'
  ClientHeight = 440
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object GroupBox1: TGroupBox
    Left = 56
    Top = 32
    Width = 281
    Height = 161
    Caption = 'Input Parameter'
    Color = clMenu
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 33
      Height = 17
      Caption = 'Fokus'
    end
    object Label2: TLabel
      Left = 32
      Top = 64
      Width = 6
      Height = 17
      Caption = 's'
    end
    object Label3: TLabel
      Left = 32
      Top = 96
      Width = 7
      Height = 17
      Caption = 'h'
    end
    object Label4: TLabel
      Left = 248
      Top = 32
      Width = 17
      Height = 17
      Caption = 'cm'
    end
    object Label5: TLabel
      Left = 248
      Top = 72
      Width = 17
      Height = 17
      Caption = 'cm'
    end
    object Label6: TLabel
      Left = 248
      Top = 104
      Width = 17
      Height = 17
      Caption = 'cm'
    end
    object Edit3: TEdit
      Left = 72
      Top = 100
      Width = 169
      Height = 25
      TabOrder = 0
      Text = 'Edit1'
      OnChange = Edit3Change
    end
    object Edit1: TEdit
      Left = 72
      Top = 32
      Width = 169
      Height = 25
      TabOrder = 1
      Text = 'Edit1'
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 72
      Top = 68
      Width = 169
      Height = 25
      TabOrder = 2
      Text = 'Edit1'
      OnChange = Edit2Change
    end
  end
  object Panel1: TPanel
    Left = 56
    Top = 208
    Width = 177
    Height = 177
    Caption = 'Panel1'
    PopupMenu = PopupMenu1
    TabOrder = 1
    object Image1: TImage
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 177
      Height = 177
      AutoSize = True
      Center = True
      Constraints.MaxHeight = 177
      Constraints.MaxWidth = 177
      Constraints.MinHeight = 177
      Constraints.MinWidth = 177
      PopupMenu = PopupMenu1
      Stretch = True
    end
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 264
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Reset'
    ModalResult = 4
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 264
    Top = 360
    Width = 75
    Height = 25
    Caption = '&Close'
    NumGlyphs = 2
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object ListBox1: TListBox
    Left = 360
    Top = 32
    Width = 329
    Height = 353
    ItemHeight = 17
    TabOrder = 5
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 72
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 112
    Top = 208
    object BukaFoto1: TMenuItem
      Caption = 'Buka Foto'
      OnClick = BukaFoto1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 160
    Top = 208
    object File1: TMenuItem
      Caption = 'File'
      object Open1: TMenuItem
        Caption = 'Open'
      end
      object Save1: TMenuItem
        Caption = 'Save'
      end
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
    object Edit4: TMenuItem
      Caption = 'Edit'
    end
    object Run1: TMenuItem
      Caption = 'Run'
    end
  end
end
