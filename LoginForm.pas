unit LoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Registroform, Conexão,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TLogin = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Querylogin: TFDQuery;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;
  Registro : TRegistro;
  DM : TDataModule1;

implementation

{$R *.dfm}


procedure TLogin.Button1Click(Sender: TObject);
var nome : string;
    senha : string;
begin



         nome := Edit1.text ;
         senha := Edit2.Text;


         Querylogin.SQL.Text := 'SELECT SENHA FROM TB_LOGIN TC '
         + 'WHERE NOME = :NOME ';
         Querylogin.ParamByName('NOME').AsString := nome;

         Querylogin.Open;

         if Querylogin.IsEmpty then
         begin
           ShowMessage('Usuario Não Existe');
           exit;
         end;


         if (senha = VarToStr(Querylogin.FieldByName('SENHA').Value)) then
         begin
           ShowMessage('Login Efetuado Com Sucesso');
           exit;
         end;

         ShowMessage('Falha ao Logar');



end;

procedure TLogin.Button2Click(Sender: TObject);
begin

Registro := TRegistro.Create(self);
Registro.ShowModal;
Registro.Free;

end;

procedure TLogin.FormCreate(Sender: TObject);
begin
 DM := DataModule1.Create(self);

end;

procedure TLogin.FormDestroy(Sender: TObject);
begin
  DM.Free;
end;

end.
