program peluru_p;

uses
  Vcl.Forms,
  peluru_U in 'peluru_U.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
