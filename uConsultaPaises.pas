unit uConsultaPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, uConsulta, uPaises,
  uCadastroPaises;

type
  TConsultaPaises = class(TConsulta)
  private
    { Private declarations }
    oPais : paises;
    oCadastroPaises : TCadastroPaises;
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
  ConsultaPaises: TConsultaPaises;

implementation

{$R *.dfm}

{ TfrmConsultaPaises }

procedure TConsultaPaises.alterar;
begin
  inherited;
  oCadastroPaises.conhecaObj(oPais, nil);
  oCadastroPaises.carregaEdit;
  oCadastroPaises.ShowModal;
end;

procedure TConsultaPaises.conhecaObj( pObj, pCtrl : TObject);
begin
  inherited;
  oPais := Paises(pObj);
end;

procedure TConsultaPaises.excluir;
begin
  inherited;
  oCadastroPaises.conhecaObj(oPais, nil);
  oCadastroPaises.carregaEdit;
  oCadastroPaises.bloqueiaEdit;
  oCadastroPaises.ShowModal;
  oCadastroPaises.desbloqueiaEdit;
end;

procedure TConsultaPaises.incluir;
begin
  inherited;
  oCadastroPaises.conhecaObj(oPais, nil);
  oCadastroPaises.limpaEdit;
  oCadastroPaises.ShowModal;
end;

procedure TConsultaPaises.pesquisar;
begin
  inherited;

end;

procedure TConsultaPaises.sair;
begin
  inherited;

end;

procedure TConsultaPaises.setCadastro(pObj: TObject);
begin
  inherited;
  oCadastroPaises := TCadastroPaises(pObj);
end;

end.
