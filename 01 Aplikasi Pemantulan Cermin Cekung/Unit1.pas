unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, ActnMenus, ExtDlgs, StdCtrls,
  Buttons, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ListBox1: TListBox;
    OpenPictureDialog1: TOpenPictureDialog;
    PopupMenu1: TPopupMenu;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Edit4: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    Close1: TMenuItem;
    Image1: TImage;
    BukaFoto1: TMenuItem;
    Run1: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure BukaFoto1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  f, s1, h1, maxlength, length, i: integer;
  s2, h2, M: real;
  s22: string;
begin
  f := strtoint(Edit1.text);
  s1 := strtoint(Edit2.text);
  h1 := strtoint(Edit3.text);

  if s1 = f then
    s22 := 'tak terhingga'
  else
  begin
    s2 := (f * s1) / (s1 - f);
    M := abs(s2 / s1);
    h2 := M * h1;
  end;

  ListBox1.Clear;
  ListBox1.items.Add('Nama: Firman Qashdus Sabil, 210321606892');
  ListBox1.items.Add('');
  ListBox1.items.Add('Rumus: 1/f = 1/s + 1/s''');
  ListBox1.items.Add('');
  ListBox1.items.Add('Diketahui: f = ' + Edit1.text + ' cm; s = ' + Edit2.text +
                       ' cm; h = ' + Edit3.text + ' cm');
  ListBox1.items.Add('');
  ListBox1.items.Add('Ditanya: s'' = ?; h'' = ?; M = ?');
  ListBox1.items.Add('');
  ListBox1.items.Add('Jawab:');
  ListBox1.items.Add('-------------');
  ListBox1.items.Add('');
  ListBox1.items.Add(' >> 1/f = 1/s + 1/s''' + ' -----------> 1/' + Edit1.text +
                      ' = 1/' + Edit2.text + ' + 1/s''');
  ListBox1.items.Add('');
  ListBox1.items.Add(' >> 1/s''' + ' = ' + ' 1/' + Edit1.text + ' - 1/' +
                       Edit2.text + ' = ' + ' ' + Edit2.text + '/' + Edit1.text + '*' + Edit2.text
                       + ' - ' + Edit1.text + '/(' + Edit1.text + '*' + Edit2.text + ')' + ' = ' +
                         ' (' + Edit2.text + '-' + Edit1.text + ')/(' + Edit1.text + '*' + Edit2.text
                        + ')' + ' = ' + ' ' + inttostr(s1 - f) + '/' + inttostr(f * s1));
  ListBox1.items.Add('');
  if s1 = f then
  begin
    ListBox1.items.Add(' >> s''' + ' = ' + ' ' + inttostr(s1 * f) + '/' +
                        inttostr(s1 - f) + ' = ' + ' ' + s22);
    ListBox1.items.Add('');
    ListBox1.items.Add('Perbesaran: M = abs(s''/s) = ' + 'abs(' + floattostr(s2)
                         + '/' + floattostr(s1) + ') = ' + s22);
    ListBox1.items.Add('');
    ListBox1.items.Add('Tinggi bayangan: h'' = M*h = ' + floattostr(M) + '*' +
                        floattostr(h1) + ' = ' + s22);
  end
  else
  begin
    ListBox1.items.Add(' >> s''' + ' = ' + ' ' + inttostr(s1 * f) + '/' +
                        inttostr(s1 - f) + ' = ' + ' ' + floattostr(s2) + ' cm');
    ListBox1.items.Add('');
    ListBox1.items.Add('Perbesaran: M = abs(s''/s) = ' + 'abs(' + floattostr(s2)
                        + '/' + floattostr(s1) + ') = ' + floattostr(M));
    ListBox1.items.Add('');
    ListBox1.items.Add('Tinggi bayangan: h'' = M*h = ' + floattostr(M) + '*' +
                          floattostr(h1) + ' = ' + floattostr(h2) + ' cm');
  end;
  ListBox1.items.Add('');

  if s1 < f then
    ListBox1.items.Add('Sifat bayangan: maya, tegak. diperbesar, berada di belakang cermin (ruangIV)')
      else if s1 < (2 * f) then
        ListBox1.items.Add('Sifat bayangan: nyata, terbalik, diperbesar, berada di depan cermin (ruang III)')
          else if s1 = (2 * f) then
            ListBox1.items.Add('Sifat bayangan: nyta, terbalik, sama besar, berada di depan cermin (jarak bayangan -  jarak benda)')
              else
                ListBox1.items.Add('sifat bayangan: nyata, terbalik, diperkecil, berada di depan cermin (ruang II)');

  // scrol horizontal
  canvas.font := ListBox1.font;
  maxlength := 500;
  for i := 500 To ListBox1.items.count - 1 do
  begin
    length := canvas.textwidth(ListBox1.items[i]);
    If length > maxlength then
      maxlength := length;
  end;
  canvas.font := font;
  ListBox1.Perform(LB_SETHORIZONTALEXTENT, maxlength, 500);
end;

procedure TForm1.BukaFoto1Click(Sender: TObject);
begin
  if OpenPictureDialog1.execute then
    Image1.picture.loadfromfile(OpenPictureDialog1.filename);

  ListBox1.items.Add('Nama: Firman Qashdus Sabil, 210321606892');
  Edit1.Enabled := true;
  Edit2.Enabled := true;
  Edit3.Enabled := true;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  ListBox1.Clear;
  ListBox1.items.Add('Nama: Firman Qashdus Sabil, 210321606892');
  ListBox1.items.Add('');
  if (Edit1.text <> '') and (Edit2.text <> '') and (Edit3.text <> '') then
  begin
    ListBox1.items.Add('Rumus: 1/f = 1/s + 1/s''');
    BitBtn1.Enabled := true;
  end
  else
    BitBtn1.Enabled := false;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  ListBox1.Clear;
  ListBox1.items.Add('Nama: Firman Qashdus Sabil, 210321606892');
  ListBox1.items.Add('');
  if (Edit1.text <> '') and (Edit2.text <> '') and (Edit3.text <> '') then
  begin
    ListBox1.items.Add('Rumus: 1/f = 1/s + 1/s''');
    BitBtn1.Enabled := true;
  end
  else
    BitBtn1.Enabled := false;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  ListBox1.Clear;
  ListBox1.items.Add('Nama: Firman Qashdus Sabil, 210321606892');
  ListBox1.items.Add('');
  if (Edit1.text <> '') and (Edit2.text <> '') and (Edit3.text <> '') then
  begin
    ListBox1.items.Add('Rumus: 1/f = 1/s + 1/s''');
    BitBtn1.Enabled := true;
  end
  else
    BitBtn1.Enabled := false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Edit1.Enabled := false;
  Edit2.Enabled := false;
  Edit3.Enabled := false;
  BitBtn1.Enabled := false;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  ListBox1.Clear;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;

  groupbox1.Color := $0000FF00;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
  Close;
end;

end.
