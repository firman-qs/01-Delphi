object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Aplikasi Operasi Matriks Sederhana'
  ClientHeight = 339
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 20
    Top = 298
    Width = 256
    Height = 17
    Caption = 'Program dibuat Oleh: Firman Qashdus Sabil'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 778
    Height = 273
    ActivePage = TabSheet3
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Transpose'
      object Label2: TLabel
        Left = 16
        Top = 25
        Width = 43
        Height = 17
        Caption = 'Matriks'
      end
      object Label3: TLabel
        Left = 324
        Top = 25
        Width = 107
        Height = 17
        Caption = 'Matriks Transpose'
      end
      object StringGrid1: TStringGrid
        Left = 16
        Top = 48
        Width = 200
        Height = 150
        ColCount = 2
        DefaultColWidth = 50
        FixedCols = 0
        RowCount = 3
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
        TabOrder = 0
      end
      object StringGrid2: TStringGrid
        Left = 324
        Top = 48
        Width = 200
        Height = 150
        ColCount = 3
        DefaultColWidth = 50
        FixedCols = 0
        RowCount = 2
        FixedRows = 0
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 222
        Top = 104
        Width = 96
        Height = 25
        Caption = 'Transpose >>'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Penjumlahan'
      ImageIndex = 1
      object Label4: TLabel
        Left = 16
        Top = 25
        Width = 55
        Height = 17
        Caption = 'Matriks A'
      end
      object Label5: TLabel
        Left = 246
        Top = 25
        Width = 54
        Height = 17
        Caption = 'Matriks B'
      end
      object Label6: TLabel
        Left = 550
        Top = 25
        Width = 71
        Height = 17
        Caption = 'Matriks A+B'
      end
      object Label7: TLabel
        Left = 222
        Top = 101
        Width = 18
        Height = 37
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object StringGrid3: TStringGrid
        Left = 16
        Top = 48
        Width = 200
        Height = 150
        ColCount = 2
        DefaultColWidth = 50
        FixedCols = 0
        RowCount = 3
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
        TabOrder = 0
      end
      object StringGrid4: TStringGrid
        Left = 246
        Top = 48
        Width = 200
        Height = 150
        ColCount = 2
        DefaultColWidth = 50
        FixedCols = 0
        RowCount = 3
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
        TabOrder = 1
        RowHeights = (
          24
          25
          24)
      end
      object StringGrid5: TStringGrid
        Left = 533
        Top = 48
        Width = 221
        Height = 150
        ColCount = 2
        DefaultColWidth = 50
        FixedCols = 0
        RowCount = 3
        FixedRows = 0
        TabOrder = 2
      end
      object BitBtn3: TBitBtn
        Left = 452
        Top = 114
        Width = 75
        Height = 25
        Caption = '='
        TabOrder = 3
        OnClick = BitBtn3Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Perkalian'
      ImageIndex = 2
      object Label8: TLabel
        Left = 222
        Top = 104
        Width = 18
        Height = 37
        Caption = #215
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 16
        Top = 25
        Width = 55
        Height = 17
        Caption = 'Matriks A'
      end
      object Label10: TLabel
        Left = 246
        Top = 25
        Width = 54
        Height = 17
        Caption = 'Matriks B'
      end
      object Label11: TLabel
        Left = 543
        Top = 25
        Width = 71
        Height = 17
        Caption = 'Matriks A'#215'B'
      end
      object StringGrid6: TStringGrid
        Left = 16
        Top = 48
        Width = 200
        Height = 150
        ColCount = 2
        DefaultColWidth = 50
        FixedCols = 0
        RowCount = 3
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
        TabOrder = 0
      end
      object StringGrid7: TStringGrid
        Left = 246
        Top = 48
        Width = 210
        Height = 150
        ColCount = 4
        DefaultColWidth = 50
        FixedCols = 0
        RowCount = 2
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
        TabOrder = 1
      end
      object StringGrid8: TStringGrid
        Left = 543
        Top = 48
        Width = 210
        Height = 150
        ColCount = 4
        DefaultColWidth = 50
        FixedCols = 0
        RowCount = 3
        FixedRows = 0
        TabOrder = 2
        RowHeights = (
          24
          24
          24)
      end
      object BitBtn4: TBitBtn
        Left = 462
        Top = 117
        Width = 75
        Height = 25
        Caption = '='
        TabOrder = 3
        OnClick = BitBtn4Click
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 683
    Top = 295
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
  end
end
