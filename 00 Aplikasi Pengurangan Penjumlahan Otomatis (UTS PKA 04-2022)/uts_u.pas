unit uts_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Num1, Num2, eq : real;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Num1 := strtofloat(edit1.text);
  Num2 := strtofloat(edit2.text);
  if Num1<Num2 then
  begin
  edit3.Text := floattostr(Num1+Num2);
  edit3.Font.Color := clGreen;
  end
  else if Num1>Num2 then
  begin
  edit3.Font.Color := clblue;
  edit3.Text := floattostr(Num1-Num2);
  end
  else if Num1=Num2 then
  begin
  edit3.Text := 'Masukkan angka lain';
  edit3.Font.Color := clRed;
  end
end;

end.
