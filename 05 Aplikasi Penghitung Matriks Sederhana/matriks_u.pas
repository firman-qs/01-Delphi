unit matriks_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn3: TBitBtn;
    StringGrid6: TStringGrid;
    StringGrid7: TStringGrid;
    StringGrid8: TStringGrid;
    BitBtn4: TBitBtn;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
var
  i, j: integer;
  mat: array [0 .. 2, 0 .. 1] of integer;
  matT: array [0 .. 1, 0 .. 2] of integer;
begin

  // input matrik ==> stringgrid1
  with StringGrid1 do
    for i := 0 to 2 do
      for j := 0 to 1 do
        mat[i, j] := StrtoInt(Cells[j, i]);

  // Transpose matrik
  for i := 0 to 2 do
    for j := 0 to 1 do
      matT[j, i] := mat[i, j];

  // Output matrik transpose ==> stringgrid2
  With StringGrid2 do
    for i := 0 to 1 do
      for j := 0 to 2 do
        Cells[j, i] := InttoStr(matT[i, j]);

end;

procedure TForm2.BitBtn3Click(Sender: TObject);
var
  i, j: integer;
  matA, matB, matC: array [0 .. 2, 0 .. 1] of integer;
begin
  // input matA ==> stringgrid3
  with StringGrid3 do
    for i := 0 to 2 do
      for j := 0 to 1 do
        matA[i, j] := StrtoInt(Cells[j, i]);

  // input matB ==> stringgrid4
  with StringGrid4 do
    for i := 0 to 2 do
      for j := 0 to 1 do
        matB[i, j] := StrtoInt(Cells[j, i]);

  // penjumlahan matA+matB
  for i := 0 to 2 do
    for j := 0 to 1 do
      matC[i, j] := matA[i, j] + matB[i, j];

  // output matA + matB ==> stringgrid5
  with StringGrid5 do
    for i := 0 to 2 do
      for j := 0 to 1 do
        Cells[j, i] := InttoStr(matC[i, j]);

end;

procedure TForm2.BitBtn4Click(Sender: TObject);
var
  i, j, k: integer;
  matA: array [0 .. 2, 0 .. 1] of integer;
  matB: array [0 .. 1, 0 .. 3] of integer;
  matC: array [0 .. 2, 0 .. 3] of integer;
begin

  // Input matrik A ==> stringgrid6
  with StringGrid6 do
    for i := 0 to 2 do
      for j := 0 to 1 do
        matA[i, j] := StrtoInt(Cells[j, i]);

  // Input matrik B ==> stringgrid7
  with StringGrid7 do
    for i := 0 to 1 do
      for j := 0 to 3 do
        matB[i, j] := StrtoInt(Cells[j, i]);

  // Nilai awal nol untuk semua komponen matC
  for i := 0 to 2 do
    for j := 0 to 3 do
      matC[i, j] := 0;

  // Perkalian matC=matA x matB
  for i := 0 to 2 do
    for j := 0 to 1 do
      for k := 0 to 3 do
        matC[i, k] := matC[i, k] + matA[i, j] * matB[j, k];

  // Output matA x matB ==> stringgrid8
  with StringGrid8 do
    for i := 0 to 2 do
      for j := 0 to 3 do
        Cells[j, i] := InttoStr(matC[i, j]);

end;

end.
