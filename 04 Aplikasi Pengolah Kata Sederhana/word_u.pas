unit word_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.ExtDlgs, Vcl.Buttons;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ColorDialog1: TColorDialog;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    OPtion1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    Edit1: TMenuItem;
    Copy1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Paste1: TMenuItem;
    Cut1: TMenuItem;
    N2: TMenuItem;
    SelectAll1: TMenuItem;
    FontSize1: TMenuItem;
    FontType1: TMenuItem;
    FontColor1: TMenuItem;
    N3: TMenuItem;
    BackgroundColor1: TMenuItem;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure New1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure FontSize1Click(Sender: TObject);
    procedure FontType1Click(Sender: TObject);
    procedure FontColor1Click(Sender: TObject);
    procedure BackgroundColor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BackgroundColor1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    Memo1.Color := ColorDialog1.Color;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  File1.Enabled := True;
  Edit1.Enabled := True;
  OPtion1.Enabled := True;
  Memo1.Enabled := True;
end;

procedure TForm2.Copy1Click(Sender: TObject);
begin
  Memo1.CopyToClipboard;
end;

procedure TForm2.Cut1Click(Sender: TObject);
begin
  Memo1.CutToClipboard;
end;

procedure TForm2.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm2.FontColor1Click(Sender: TObject);
begin
  if FontDialog1.Execute then
    Memo1.font.Color := FontDialog1.font.Color;
end;

procedure TForm2.FontSize1Click(Sender: TObject);
begin
  if FontDialog1.Execute then
    Memo1.font.size := FontDialog1.font.size;
end;

procedure TForm2.FontType1Click(Sender: TObject);
begin
  if FontDialog1.Execute then
    Memo1.font := FontDialog1.font;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  File1.Enabled := False;
  Edit1.Enabled := False;
  OPtion1.Enabled := False;
  Memo1.Clear;
  Memo1.Enabled := False;
end;

procedure TForm2.New1Click(Sender: TObject);
begin
  File1.Enabled := False;
  Edit1.Enabled := False;
  OPtion1.Enabled := False;
  Memo1.Clear;
  Memo1.Enabled := False;
  Image1.Picture := nil;
end;

procedure TForm2.Open1Click(Sender: TObject);
begin
  if OpenDialog1.Execute = True then
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm2.Paste1Click(Sender: TObject);
begin
  Memo1.PasteFromClipboard;
end;

procedure TForm2.SaveAs1Click(Sender: TObject);
begin
  if SaveDialog1.Execute = True then
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm2.SelectAll1Click(Sender: TObject);
begin
  Memo1.SelectAll;
end;

end.
