unit uConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, uFrmPai;

type
  TConsulta = class(TFrmPai)
    edit_chave: TEdit;
    btn_pesquisar: TButton;
    btn_sair: TButton;
    btn_excluir: TButton;
    btn_alterar: TButton;
    btn_incluir: TButton;
    ListView1: TListView;
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure conhecaObj( pObj, pCtrl : TObject); override;
    procedure incluir;                            virtual;
    procedure alterar;                            virtual;
    procedure excluir;                            virtual;
    procedure sair;                               virtual;
    procedure pesquisar;                          virtual;
    procedure setCadastro(pObj : TObject); virtual; abstract;
  end;

var
  Consulta: TConsulta;

implementation

{$R *.dfm}

{ TfrmConsulta }


procedure TConsulta.btn_alterarClick(Sender: TObject);
begin
  alterar;
end;

procedure TConsulta.btn_excluirClick(Sender: TObject);
begin
  excluir;
end;

procedure TConsulta.btn_incluirClick(Sender: TObject);
begin
  incluir;
end;

procedure TConsulta.btn_pesquisarClick(Sender: TObject);
begin
  pesquisar;
end;

procedure TConsulta.btn_sairClick(Sender: TObject);
begin
  sair;
end;

procedure TConsulta.alterar;
begin

end;

procedure TConsulta.conhecaObj( pObj, pCtrl : TObject);
begin

end;

procedure TConsulta.excluir;
begin

end;

procedure TConsulta.incluir;
begin

end;

procedure TConsulta.pesquisar;
begin

end;

procedure TConsulta.sair;
begin
  close;
end;

end.
