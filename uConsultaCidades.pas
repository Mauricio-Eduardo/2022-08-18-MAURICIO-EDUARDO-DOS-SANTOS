unit uConsultaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, uConsulta, uCidades,
  uCadastroCidades;

type
  TConsultaCidades = class(TConsulta)
  private
    { Private declarations }
    aCidade : cidades;
    oCadastroCidades : TCadastroCidades;
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
  ConsultaCidades: TConsultaCidades;

implementation

{$R *.dfm}

{ TfrmConsultaCidades }

procedure TConsultaCidades.alterar;
begin
  inherited;
  oCadastroCidades.conhecaObj(aCidade, nil);
  oCadastroCidades.carregaEdit;
  oCadastroCidades.ShowModal;
end;

procedure TConsultaCidades.conhecaObj( pObj, pCtrl : TObject);
begin
  inherited;
  aCidade := Cidades(pObj);
end;

procedure TConsultaCidades.excluir;
begin
  inherited;
  oCadastroCidades.conhecaObj(aCidade, nil);
  oCadastroCidades.carregaEdit;
  oCadastroCidades.bloqueiaEdit;
  oCadastroCidades.ShowModal;
  oCadastroCidades.desbloqueiaEdit;
end;

procedure TConsultaCidades.incluir;
begin
  inherited;
  oCadastroCidades.conhecaObj(aCidade, nil);
  oCadastroCidades.limpaEdit;
  oCadastroCidades.ShowModal;
end;

procedure TConsultaCidades.pesquisar;
begin
  inherited;

end;

procedure TConsultaCidades.sair;
begin
  inherited;
end;

procedure TConsultaCidades.setCadastro(pObj: TObject);
begin
  inherited;
  oCadastroCidades := TCadastroCidades(pObj);
end;

end.
