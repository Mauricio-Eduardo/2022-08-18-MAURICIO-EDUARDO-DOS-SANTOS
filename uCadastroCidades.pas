unit uCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls,
  uCidades, uEstados, uPaises;

type
  TCadastroCidades = class(TCadastro)
    lbl_cidade: TLabel;
    tlb_cep: TLabel;
    lbl_codigoPais: TLabel;
    edt_cidade: TEdit;
    edt_cep: TEdit;
    edt_codigo_pais: TEdit;
    edt_nomePais: TEdit;
    edt_codigo_estado: TEdit;
    lbl_estado: TLabel;
    edt_nomeEstado: TEdit;
  private
    { Private declarations }
    aCidade : cidades;
  public
    { Public declarations }
    procedure conhecaObj(pObj, pCtrl : TObject); override;
    procedure limpaEdit;                         override;
    procedure carregaEdit;                       override;
    procedure bloqueiaEdit;                      override;
    procedure desbloqueiaEdit;                   override;
    procedure salvar;                            override;
    procedure sair;                              override;
  end;

var
  CadastroCidades: TCadastroCidades;

implementation

{$R *.dfm}

{ TCadastroCidades }

procedure TCadastroCidades.bloqueiaEdit;
begin
  inherited;
  self.edt_cidade.Enabled := false;
  self.edt_cep.Enabled := false;
  self.edt_codigo_estado.Enabled := false;
  self.edt_nomeEstado.Enabled := false;
  self.edt_codigo_pais.Enabled := false;
  self.edt_nomePais.Enabled := false;
end;

procedure TCadastroCidades.carregaEdit;
begin
  inherited;
  self.edt_cidade.text := aCidade.getCidade;
  self.edt_cep.text := aCidade.getCEP;
  self.edt_codigo_estado.text := intToStr(aCidade.getCodEstadoCidade);
  self.edt_nomeEstado.text := aCidade.getNomeEstadoCidade;
  self.edt_codigo_pais.text := intToStr(aCidade.getCodPaisEstado);
  self.edt_nomePais.text := aCidade.getNomePaisEstado;
end;

procedure TCadastroCidades.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  aCidade := cidades(pObj);
end;

procedure TCadastroCidades.desbloqueiaEdit;
begin
  inherited;
  self.edt_cidade.Enabled := true;
  self.edt_cep.Enabled := true;
  self.edt_codigo_estado.Enabled := true;
  self.edt_nomeEstado.Enabled := true;
  self.edt_codigo_pais.Enabled := true;
  self.edt_nomePais.Enabled := true;
end;

procedure TCadastroCidades.limpaEdit;
begin
  inherited;
  edt_cidade.clear;
  edt_cep.clear;
  edt_codigo_estado.clear;
  edt_nomeEstado.clear;
  edt_codigo_pais.clear;
  edt_nomePais.clear;

end;

procedure TCadastroCidades.sair;
begin
  inherited;
end;

procedure TCadastroCidades.salvar;
begin
  inherited;
  if length(edt_cidade.text) = 0 then
  begin
    showMessage('O campo "Cidade" eh obrigatorio');
    edt_cidade.SetFocus;
  end
  else if length(edt_cep.text) = 0 then
  begin
    showmessage('O campo "CEP" eh obrigatorio');
    edt_cep.SetFocus;
  end
  else if length(edt_nomeEstado.text) = 0 then
  begin
    showmessage('O campo "Estado" eh obrigatorio');
    edt_nomeEstado.SetFocus;
  end
  else
  begin
    aCidade.setCidade(edt_cidade.text);
    aCidade.setCep(edt_cep.text);
    aCidade.setCodEstadoCidade(strToInt(edt_codigo_estado.text));
    aCidade.setNOmeEstadoCidae(edt_nomeEstado.text);
    aCidade.setCodPaisEstado(strToInt(edt_codigo_pais.text));
    aCidade.setNomePaisEstado(edt_nomePais.text);
  end;
end;

end.
