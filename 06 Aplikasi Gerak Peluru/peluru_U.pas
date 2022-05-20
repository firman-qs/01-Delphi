unit peluru_U;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, System.Math,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
   Vcl.ExtCtrls,
   Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtDlgs, Vcl.Menus;

type
   TForm2 = class(TForm)
      GroupBox1: TGroupBox;
      GroupBox2: TGroupBox;
      Edit1: TEdit;
      Edit2: TEdit;
      Edit3: TEdit;
      Edit4: TEdit;
      Edit5: TEdit;
      Edit6: TEdit;
      Edit7: TEdit;
      Edit8: TEdit;
      Edit9: TEdit;
      Edit10: TEdit;
      Edit11: TEdit;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Label8: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Label11: TLabel;
      btnProcess: TButton;
      BitBtn1: TBitBtn;
      Image: TImage;
      procedure btnProcessClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
      h, w: Extended;
      procedure DrawAxes(aCanvas: TCanvas);
      procedure Repaint(aCanvas: TCanvas);
   public
      { Public declarations }
   end;

var
   Form2: TForm2;
   x, y, v0x, v0y, tmax, t, g, alfa, PosX, PosY, sudut, x_nol, v0, xmax, hmax,
      dhmax: real;
   xc, yc, n, i, index, ground, dasar: integer;
   // Data Input
   elevasi, Velocity, x0: string;

implementation

{$R *.dfm}

procedure TForm2.Repaint(aCanvas: TCanvas);
begin
   // Draw Background
   Image.Canvas.Pen.Color := clblack;
   Image.Canvas.Brush.Color := clblack;
   Image.Canvas.Rectangle(0, 0, Image.Width, Image.Height);
   // Drow Ground
   Image.Canvas.Pen.Color := $00374D6C;
   Image.Canvas.Brush.Color := $00374D6C;
   Image.Canvas.Rectangle(0, Image.Height - 59, Image.Width, Image.Height);
end;

procedure TForm2.DrawAxes(aCanvas: TCanvas);
var
   i, j: integer;
   pw, ph: Extended;
begin
   // draw the grid
   Image.Canvas.Pen.Color := $00191919;
   w := Image.Width / (5 * 30);
   h := Image.Height / (5 * 30);
   pw := w;
   ph := h;
   for i := 0 to (Image.Height) - 1 do
   begin
      Image.Canvas.MoveTo(trunc(pw), 0);
      Image.Canvas.LineTo(trunc(pw), Image.Height);
      Image.Canvas.MoveTo(0, trunc(ph));
      Image.Canvas.LineTo(Image.Width, trunc(ph));
      pw := w + pw;
      ph := h + ph;
   end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
   // Repaint
   Repaint(Canvas);
   with Image.Canvas do
   begin
      Font.Color := clwhite;
      Font.Name := 'calibri';
      Font.Size := 13;
      Font.Style := [FsBold];
      TextOut(10, 10, 'Grafik');
   end;
end;

procedure TForm2.btnProcessClick(Sender: TObject);
var
   Vo, tetha, t, Vx, x, Vy, y, xmax, Ymax, tmax, tter: real;
const
   g = 10;
begin
   Repaint(Canvas);

   Vo := StrToFloat(Edit1.Text);
   tetha := StrToFloat(Edit2.Text);
   t := StrToFloat(Edit3.Text);
   Vx := Vo * cos(tetha * (pi / 180));
   x := Vo * cos(tetha * (pi / 180)) * t;
   Vy := Vo * sin(tetha * (pi / 180)) - g * t;
   y := Vo * sin(tetha * (pi / 180)) * t - 1 / 2 * g * t * t;
   xmax := Vo * Vo * sin(2 * tetha * (pi / 180)) / g;
   Ymax := Vo * Vo * sin(tetha * (pi / 180)) * sin(tetha * (pi / 180))
      / (2 * g);
   tmax := Vo * sin(tetha * (pi / 180)) / g;
   tter := 2 * Vo * sin(tetha * (pi / 180)) / g;
   Edit4.Text := FormatFloat('0.##', xmax);
   Edit5.Text := FormatFloat('0.##', Ymax);
   Edit6.Text := FormatFloat('0.##', tmax);
   Edit7.Text := FormatFloat('0.##', tter);
   Edit8.Text := FormatFloat('0.##', Vx);
   Edit9.Text := FormatFloat('0.##', x);
   Edit10.Text := FormatFloat('0.##', Vy);
   Edit11.Text := FormatFloat('0.##', y);

   //
   x0 := '0';
   Velocity := floattostr(Vo);
   elevasi := floattostr(tetha);

   //
   yc := (Image.Height);
   xc := (Image.Width);
   ground := (yc - 59);
   dasar := (yc - ground);
   sudut := StrToFloat(elevasi);
   x_nol := StrToFloat(x0);
   v0 := StrToFloat(Velocity);
   alfa := (pi / 180);
   v0x := abs(round(v0 * cos(alfa * sudut)));
   v0y := abs(round(v0 * sin(alfa * sudut)));
   tmax := abs(round((2 * v0y) / g));
   xmax := abs(round((sqr(v0) * sin(2 * alfa * sudut)) / g));
   hmax := abs(round((sqr(v0y)) / (2 * g)));
   dhmax := (hmax / 2.5);
   // garis parabola
   t := 0;
   for i := 0 to trunc(tmax) do
   begin
      x := (v0x * t) / (2.5);
      y := ((v0y * t) - ((1 / 2) * g * t * t)) / (2.5);
      Image.Canvas.Pen.Color := clblue;
      Image.Canvas.Brush.Color := clblue;
      Image.Canvas.Ellipse(trunc((x - (9)) + x_nol), trunc((ground - y) - (9)),
         trunc(x + x_nol), trunc(ground - y));
      (* image.Canvas.Pen.Color := ButtonColor1.SymbolColor;
        image.Canvas.Brush.Color := ButtonColor1.SymbolColor;
        image.Canvas.Rectangle(trunc((x - (11))+x_nol),
        trunc((ground - y) - (8)),
        trunc(x + x_nol -2), trunc(ground - y - 2)); *)
      t := t + 1;
   end;

   // garis petunjuk
   with Image.Canvas do
   begin
      // Draw a Horizontal Line for xmax
      Pen.Width := 1;
      Pen.Style := PSDot;
      Pen.Color := clblue;
      MoveTo(trunc(x_nol), trunc(ground));
      LineTo(trunc(x_nol + x), trunc(ground));

      // Draw Vertical line for ymax
      Image.Canvas.MoveTo(trunc(((x) / 2) + x_nol), trunc(ground));
      Image.Canvas.LineTo(trunc(((x) / 2) + x_nol),
         trunc(Image.Height - (dasar + dhmax)));
      Brush.Style := BsClear;
      Font.Color := clwhite;
      Font.Name := 'calibri';
      Font.Size := 13;
      Font.Style := [FsBold];

      TextOut(trunc(((x) / 2) + x_nol + 70), trunc(ground - 30),
         FormatFloat('0.##', xmax));
      TextOut(trunc(((x) / 2) + x_nol), trunc(ground - 30), 'X(max)= ');

      TextOut(trunc(((x) / 2) + x_nol + 70), trunc(ground - 70),
         FormatFloat('0.##', Ymax));
      TextOut(trunc(((x) / 2) + x_nol), trunc(ground - 70), 'Y(max)= ');

      TextOut(10, 10, 'Grafik');
   end;
end;

end.
