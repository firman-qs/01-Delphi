unit jpgbmp_u;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs,
   Vcl.ExtCtrls,
   Vcl.Buttons, jpeg, Vcl.TitleBarCtrls, Vcl.WinXCtrls;

type
   TForm2 = class(TForm)
      RadioButton1: TRadioButton;
      RadioButton2: TRadioButton;
      BitBtn1: TBitBtn;
      BitBtn2: TBitBtn;
      BitBtn3: TBitBtn;
      BitBtn4: TBitBtn;
      BitBtn5: TBitBtn;
      Panel1: TPanel;
      Panel2: TPanel;
      Image1: TImage;
      Image2: TImage;
      BitBtn6: TBitBtn;
      OpenPictureDialog1: TOpenPictureDialog;
      SavePictureDialog1: TSavePictureDialog;
      Label1: TLabel;
      procedure RadioButton1Click(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure RadioButton2Click(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
      procedure BitBtn2Click(Sender: TObject);
      procedure BitBtn3Click(Sender: TObject);
      procedure BitBtn4Click(Sender: TObject);
      procedure BitBtn5Click(Sender: TObject);
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
   ratio: real;
   high, wide: integer;
begin
   if RadioButton1.checked then
   begin
      OpenPictureDialog1.DefaultExt := graphicextension(TJpegImage);
      OpenPictureDialog1.Filter := graphicFilter(TJpegImage);
   end;
   if RadioButton2.checked then
   begin
      OpenPictureDialog1.DefaultExt := graphicextension(TBitmap);
      OpenPictureDialog1.Filter := graphicFilter(TBitmap);
   end;
   if OpenPictureDialog1.Execute then
   begin
      if OpenPictureDialog1.FileName <> '' then
      begin
         Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      end;
   end;

   ratio := Image1.Picture.Width / Image1.Picture.Height;
   Image1.Top := 0;
   Image1.Left := 0;
   high := Panel1.Height;
   wide := trunc(high * ratio);
   if wide > Panel1.Width then
   begin
      wide := Panel1.Width;
      ratio := Image1.Picture.Height / Image1.Picture.Width;
      high := trunc(wide * ratio);
   end;
   Panel1.Width := wide;
   Image1.Width := wide;
   Image1.Height := high;
   Image1.Refresh;
   Image1.Repaint;
   Image1.Stretch := true;

end;

procedure TForm2.BitBtn2Click(Sender: TObject);
var
   imgbuffbmp: TBitmap;
   rasio: real;
   tinggi, lebar: integer;
begin
   imgbuffbmp := TBitmap.Create;
   imgbuffbmp.Assign(Image1.Picture.Graphic);
   Image2.Picture.Bitmap := imgbuffbmp;

   rasio := Image2.Picture.Width / Image2.Picture.Height;
   Image2.Top := 0;
   Image2.Left := 0;
   tinggi := Panel2.Height;
   lebar := trunc(tinggi * rasio);
   if lebar > Panel2.Width then
   begin
      lebar := Panel1.Width;
      rasio := Image1.Picture.Height / Image1.Picture.Width;
      tinggi := trunc(lebar * rasio);
   end;
   Panel2.Width := lebar;
   Image2.Width := lebar;
   Image2.Height := tinggi;
   Image2.Refresh;
   Image2.Repaint;
   Image2.Stretch := true;

end;

procedure TForm2.BitBtn3Click(Sender: TObject);
var
   imgbuffjpg: TJpegImage;
   tinggi, lebar: integer;
   rasio: real;
begin
   imgbuffjpg := TJpegImage.Create;;
   imgbuffjpg.Assign(Image1.Picture.Graphic);
   Image2.Picture.Graphic := imgbuffjpg;

   rasio := Image2.Picture.Width / Image2.Picture.Height;
   Image2.Top := 0;
   Image2.Left := 0;
   tinggi := Panel2.Height;
   lebar := trunc(tinggi * rasio);

   if lebar > Panel2.Width then
   begin
      lebar := Panel1.Width;
      rasio := Image1.Picture.Height / Image1.Picture.Width;
      tinggi := trunc(lebar * rasio);
   end;

   Panel2.Width := lebar;
   Image2.Width := lebar;
   Image2.Height := tinggi;
   Image2.Refresh;
   Image2.Repaint;
   Image2.Stretch := true;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
   BitBtn1.Enabled := false;
   BitBtn2.Enabled := false;
   BitBtn3.Enabled := false;
   BitBtn4.Enabled := false;
   BitBtn5.Enabled := false;
end;

//prosedur konvrsi jpg to bmp
procedure TForm2.RadioButton1Click(Sender: TObject);
begin
   BitBtn1.Enabled := true;
   BitBtn2.Enabled := true;
   BitBtn3.Enabled := true;
   BitBtn4.Enabled := true;
   BitBtn5.Enabled := true;
end;

//prosedur konversi bmp tojpg
procedure TForm2.RadioButton2Click(Sender: TObject);
begin
   BitBtn1.Enabled := true;
   BitBtn2.Enabled := true;
   BitBtn3.Enabled := true;
   BitBtn4.Enabled := true;
   BitBtn5.Enabled := true;
end;

//prosedur pengkonversian
procedure TForm2.BitBtn4Click(Sender: TObject);
begin
   if RadioButton2.checked then
   begin
      SavePictureDialog1.DefaultExt := graphicextension(TJpegImage);
      SavePictureDialog1.Filter := graphicFilter(TJpegImage);
   end;
   if RadioButton1.checked then
   begin
      SavePictureDialog1.DefaultExt := graphicextension(TBitmap);
      SavePictureDialog1.Filter := graphicextension(TBitmap);
   end;

   if SavePictureDialog1.Execute then
   begin
      if SavePictureDialog1.FileName <> '' then
      begin
         Image2.Picture.SaveToFile(SavePictureDialog1.FileName);
      end;
   end;
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
begin
   Image1.Picture := nil;
   Image2.Picture := nil;
   Image1.Refresh;
   Image2.Refresh;
end;

end.
