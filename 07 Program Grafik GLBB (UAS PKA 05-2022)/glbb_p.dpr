program glbb_p;

uses
  Vcl.Forms,
  glbb_u in 'glbb_u.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
