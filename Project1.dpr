program Project1;

uses
  Vcl.Forms,
  LoginForm in 'LoginForm.pas' {Login},
  Conex�o in 'Conex�o.pas' {DataModule1: TDataModule},
  Registroform in 'Registroform.pas' {Registro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TRegistro, Registro);
  Application.Run;
end.
