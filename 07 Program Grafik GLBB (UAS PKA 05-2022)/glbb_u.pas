unit glbb_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Function SumX(XX:Double):Integer;
    Function SumY(YY:Double):Integer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

Function TForm2.SumX(XX:Double):Integer;
  begin
     result:=Round(XX + 40);
  end;
Function TForm2.SumY(YY:Double):Integer;
  begin
     result:=Round(Image1.ClientHeight-20-YY);
  end;

procedure TForm2.Button2Click(Sender: TObject);
var i,vi,ai:real;
    xxx,yyy:integer;
begin
  vi:=StrToFloat(Edit1.Text);
  ai:=StrToFloat(Edit2.Text);
  with Image2.Canvas do
    begin
      i:=0;
      while i <= 200 do
         begin
           pen.Width:=10;
           font.Size:=9;
           font.Color:=clred;
           font.Size:=11;
           xxx:=SumX(i);
           yyy:=SumY(ai*i+(vi*20));
           Pixels[xxx,yyy]:=clRed;
           i:=i+0.05;
         end;
         font.Color:=clWhite;
         textout(SumX(Image2.ClientWidth-85),SumY(-3),'Sb.x');
         textout(SumX(-34),SumY(Image1.ClientHeight-40),'Sb.y');
         font.Color:=clOlive;
         textout(SumX(image2.ClientWidth-76),SumY(-3),'t(s)');
         textout(SumX(-35),SumY(Image1.ClientHeight-40),'v(m/s)');
    end;

end;

procedure TForm2.Button3Click(Sender: TObject);
var i,vi,ai:real;
    xxx,yyy:integer;
begin
  vi:=StrToFloat(Edit1.Text);
  ai:=StrToFloat(Edit2.Text);
  with Image3.Canvas do
    begin
      i:=0;
      while i <= 200 do
         begin
           pen.Width:=10;
           font.Size:=9;
           font.Color:=clred;
           font.Size:=11;
           xxx:=SumX(i);
           yyy:=SumY(ai*20);
           Pixels[xxx,yyy]:=clRed;
           i:=i+0.05;
         end;
         font.Color:=clWhite;
         textout(SumX(Image3.ClientWidth-85),SumY(-3),'Sb.x');
         textout(SumX(-34),SumY(Image1.ClientHeight-40),'Sb.y');
         font.Color:=clOlive;
         textout(SumX(Image3.ClientWidth-76),SumY(-3),'t(s)');
         textout(SumX(-35),SumY(Image1.ClientHeight-40),'a(m/s^2)');
    end;

end;

procedure TForm2.FormCreate(Sender: TObject);
var j:Integer;
begin
Edit1.Text:='0';
Edit2.Text:='0';

//Membuat sumbu koordinat S vs t GLBB di image1
with Image1.Canvas do
  begin
    pen.Width:=3;
    font.Size:=11;
    textout(Sumx(52),Sumy(Image1.ClientHeight-20),'S(t) = vo x t + 1/2 x a x t^2');
    font.Color:=clolive;
    MoveTo(SumX(0),SumY(0)); //sumbu x
    LineTo(SumX(Image1.ClientWidth-40),SumY(0));
    textout(SumX(Image1.ClientWidth-85),SumY(-3),'Sb.x');
    MoveTo(SumX(0),SumY(0)); //sumbu y
    LineTo(SumX(0),SumY(Image1.ClientHeight-20));
    textout(SumX(-34),SumY(Image1.ClientHeight-40),'Sb.y');
    pen.Width:=1;
    pen.Color:=clLime;
    for j:=-1 to 12 do
      begin
        MoveTo(SumX(0+20*j),SumY(-20)); // grid on
        LineTo(SumX(0+20*j),SumY(Image1.ClientHeight-20));
      end;
    for j:=-10 to 12 do
      begin
        MoveTo(SumX(-40),SumY(0+20*j)); // sumbu x
        LineTo(SumX(Image1.ClientWidth-40),SumY(0+20*j));
      end;
  end;

//Membuat sumbu koordinat v vs t GLBB di image2
with Image2.Canvas do
  begin
    pen.Width:=3;
    font.Size:=11;
    textout(Sumx(52),Sumy(Image2.ClientHeight-20),'v(t) = v0 + a x t');
    font.Color:=clolive;
    MoveTo(SumX(0),SumY(0)); //sumbu x
    LineTo(SumX(Image2.ClientWidth-40),SumY(0));
    textout(SumX(Image2.ClientWidth-85),SumY(-3),'Sb.x');
    MoveTo(SumX(0),SumY(0)); //sumbu y
    LineTo(SumX(0),SumY(Image2.ClientHeight-20));
    textout(SumX(-34),SumY(Image2.ClientHeight-40),'Sb.y');
    pen.Width:=1;
    pen.Color:=clLime;
    for j:=-1 to 12 do
      begin
        MoveTo(SumX(0+20*j),SumY(-20)); // grid on
        LineTo(SumX(0+20*j),SumY(Image2.ClientHeight-20));
      end;
    for j:=-10 to 12 do
      begin
        MoveTo(SumX(-40),SumY(0+20*j)); // sumbu x
        LineTo(SumX(Image2.ClientWidth-40),SumY(0+20*j));
      end;
  end;

//Membuat sumbu koordinat a vs t GLBB di image3
with Image3.Canvas do
  begin
    pen.Width:=3;
    font.Size:=11;
    textout(Sumx(52),Sumy(Image3.ClientHeight-20),'a(t) = a0');
    font.Color:=clolive;
    MoveTo(SumX(0),SumY(0)); //sumbu x
    LineTo(SumX(Image3.ClientWidth-40),SumY(0));
    textout(SumX(Image3.ClientWidth-85),SumY(-3),'Sb.x');
    MoveTo(SumX(0),SumY(0)); //sumbu y
    LineTo(SumX(0),SumY(Image3.ClientHeight-20));
    textout(SumX(-34),SumY(Image3.ClientHeight-40),'Sb.y');
    pen.Width:=1;
    pen.Color:=clLime;
    for j:=-1 to 12 do
      begin
        MoveTo(SumX(0+20*j),SumY(-20)); // grid on
        LineTo(SumX(0+20*j),SumY(Image3.ClientHeight-20));
      end;
    for j:=-10 to 12 do
      begin
        MoveTo(SumX(-40),SumY(0+20*j)); // sumbu x
        LineTo(SumX(Image3.ClientWidth-40),SumY(0+20*j));
      end;
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
var i,vi,ai:real;
    xxx,yyy:integer;
begin
   vi:=StrToFloat(Edit1.Text);
  ai:=StrToFloat(Edit2.Text);
  with Image1.Canvas do
    begin
      i:=0;
      while i <= 200 do
         begin
           pen.Width:=10;
           font.Size:=9;
           font.Color:=clred;
           font.Size:=11;
           xxx:=SumX(i);
           if ai = 0 then
               yyy:=SumY(vi*i + 1/2*ai*i*i)
                 else
                   yyy:=SumY((vi*i + 1/2*ai*i*i)/90);
           Pixels[xxx,yyy]:=clRed;
           i:=i+0.05;
         end;
         font.Color:=clWhite;
         textout(SumX(Image1.ClientWidth-85),SumY(-3),'Sb.x');
         textout(SumX(-34),SumY(Image1.ClientHeight-40),'Sb.y');
         font.Color:=clOlive;
         textout(SumX(Image1.ClientWidth-76),SumY(-3),'t(s)');
         textout(SumX(-35),SumY(Image1.ClientHeight-40),'s(m)');
    end;
end;

end.
