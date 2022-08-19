unit uConsultaEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, uConsulta, uEstados,
  uCadastroEstados;

type
  TConsultaEstados = class(TConsulta)
  private
    { Private declarations }
    oEstado: estados;
    oCadastroEstados : TCadastroEstados;
  public
    { Public declarations }
    procedure conhecaObj( pObj, pCtrl : TObject); override;
    procedure incluir;                            override;
    procedure alterar;                            override;
    procedure excluir;                            override;
    procedure sair;                               override;
    procedure pesquisar;                          override;
    procedure setCadastro(pObj : TObject); override;
  end;

var
  ConsultaEstados: TConsultaEstados;

implementation

{$R *.dfm}

{ TfrmConsultaEstados }

procedure TConsultaEstados.alterar;
begin
  inherited;
  oCadastroEstados.conhecaObj(oEstado, nil);
  oCadastroEstados.carregaEdit;
  oCadastroEstados.ShowModal;
end;

procedure TConsultaEstados.conhecaObj( pObj, pCtrl : TObject);
begin
  inherited;
  oEstado := estados(pObj);
end;

procedure TConsultaEstados.excluir;
begin
  inherited;
  oCadastroEstados.conhecaObj(oEstado, nil);
  oCadastroEstados.carregaEdit;
  oCadastroEstados.bloqueiaEdit;
  oCadastroEstados.ShowModal;
  oCadastroEstados.desbloqueiaEdit;
end;

procedure TConsultaEstados.incluir;
begin
  inherited;
  oCadastroEstados.conhecaObj(oEstado, nil);
  oCadastroEstados.limpaEdit;
  oCadastroEstados.ShowModal;
end;

procedure TConsultaEstados.pesquisar;
begin
  inherited;

end;

procedure TConsultaEstados.sair;
begin
  inherited;
end;

procedure TConsultaEstados.setCadastro(pObj: TObject);
begin
  inherited;
  oCadastroEstados := TCadastroEstados(pObj);
end;

end.
