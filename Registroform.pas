unit Registroform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, conex�o, Vcl.Mask,
  Vcl.DBCtrls;

type
  TRegistro = class(TForm)
    Button2: TButton;
    QueryRe: TFDQuery;
    QueryReID: TIntegerField;
    QueryReNome: TStringField;
    QueryReSenha: TStringField;
    QueryReUsuario: TStringField;
    Label4: TLabel;
    DBnome: TDBEdit;
    DataRegistro: TDataSource;
    Label5: TLabel;
    DBsenha: TDBEdit;
    Label6: TLabel;
    DBusuario: TDBEdit;
    Label7: TLabel;
    DBcodigo: TDBEdit;
    Querylogin: TFDQuery;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Registro: TRegistro;

implementation

{$R *.dfm}

uses LoginForm;








procedure TRegistro.Button2Click(Sender: TObject);
var usuario : string;
begin

   usuario := DBusuario.Text;


   Querylogin.SQL.Text := 'SELECT ID FROM TB_LOGIN TC '
   + 'WHERE NOME = :NOME ';
   Querylogin.ParamByName('NOME').AsString := usuario;

   Querylogin.Open;

   if not Querylogin.IsEmpty then
   begin
        ShowMessage('Usu�rio j� existe');
        exit;
   end;




    try
      QueryRe.Post;
    except

    begin
         ShowMessage('Falha ao Criar O cliente');
         exit;
    end;

    end;

    ShowMessage('Cliente Novo Adicionado');

end;



procedure TRegistro.FormCreate(Sender: TObject);
begin
 QueryRe.Open;
 QueryRE.Insert;
end;

procedure TRegistro.FormDestroy(Sender: TObject);
begin
QueryRe.close;
end;

end.
