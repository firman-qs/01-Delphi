object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Aplikasi Pengolah Kata Sederhana'
  ClientHeight = 407
  ClientWidth = 495
  Color = clWindow
  Font.Charset = ANSI_CHARSET
  Font.Color = clDefault
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object Image1: TImage
    Left = 113
    Top = 255
    Width = 129
    Height = 129
  end
  object Label1: TLabel
    Left = 327
    Top = 255
    Width = 144
    Height = 17
    Caption = 'by Firman Qashdus Sabil'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = cl3DDkShadow
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 495
    Height = 225
    Align = alTop
    Lines.Strings = (
      '')
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitWidth = 479
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 286
    Width = 75
    Height = 25
    Caption = 'Clear'
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 16
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Foto'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 16
    Top = 359
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
  object ColorDialog1: TColorDialog
    Left = 96
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    Left = 176
    Top = 80
  end
  object OpenDialog1: TOpenDialog
    Left = 248
    Top = 80
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 88
    Top = 144
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 176
    Top = 144
  end
  object MainMenu1: TMainMenu
    Left = 248
    Top = 144
    object File1: TMenuItem
      Caption = 'File'
      object New1: TMenuItem
        Caption = 'New'
        OnClick = New1Click
      end
      object Open1: TMenuItem
        Caption = 'Open'
        OnClick = Open1Click
      end
      object SaveAs1: TMenuItem
        Caption = 'Save As'
        OnClick = SaveAs1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Copy1: TMenuItem
        Break = mbBreak
        Caption = 'Copy'
        ShortCut = 16451
        OnClick = Copy1Click
      end
      object Paste1: TMenuItem
        Caption = 'Paste'
        ShortCut = 16470
        OnClick = Paste1Click
      end
      object Cut1: TMenuItem
        Caption = 'Cut'
        ShortCut = 16472
        OnClick = Cut1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object SelectAll1: TMenuItem
        Caption = 'Select All'
        ShortCut = 16449
        OnClick = SelectAll1Click
      end
    end
    object OPtion1: TMenuItem
      Caption = 'Option'
      object FontSize1: TMenuItem
        Caption = 'Font Size'
        OnClick = FontSize1Click
      end
      object FontType1: TMenuItem
        Caption = 'Font Type'
        OnClick = FontType1Click
      end
      object FontColor1: TMenuItem
        Caption = 'Font Color'
        OnClick = FontColor1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object BackgroundColor1: TMenuItem
        Caption = 'Background Color'
        OnClick = BackgroundColor1Click
      end
    end
  end
end
