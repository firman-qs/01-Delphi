program jpgbmp_p;

uses
  Vcl.Forms,
  jpgbmp_u in 'jpgbmp_u.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;

  //tes
end.
