program kasir_p;

uses
  Forms,
  kasir_u in 'D:\FirmanAC\kasir_u.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
