unit uCadastroEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls,
  uEstados, uPaises;

type
  TCadastroEstados = class(TCadastro)
    lbl_estado: TLabel;
    edt_estado: TEdit;
    lbl_uf: TLabel;
    edt_uf: TEdit;
    lbl_codigoPais: TLabel;
    edt_cod_pais: TEdit;
    edt_nomePais: TEdit;
  private
  protected
    { Private declarations }
    oEstado : estados;
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
  CadastroEstados: TCadastroEstados;

implementation

{$R *.dfm}

{ TCadastroEstados }

procedure TCadastroEstados.bloqueiaEdit;
begin
  inherited;
  self.edt_estado.Enabled := false;
  self.edt_uf.Enabled := false;
  self.edt_cod_pais.Enabled := false;
  self.edt_nomePais.Enabled := false;

end;

procedure TCadastroEstados.carregaEdit;
begin
  inherited;
  self.edt_estado.text := oEstado.getEstado;
  self.edt_uf.text := oEstado.getUF;
  self.edt_cod_pais.text := intToStr(oEstado.getCodpaisEstado);
  self.edt_nomePais.text := oEstado.getNomePaisEstado;
end;

procedure TCadastroEstados.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oEstado := estados(pObj);
end;

procedure TCadastroEstados.desbloqueiaEdit;
begin
  inherited;
  self.edt_estado.Enabled := true;
  self.edt_uf.Enabled := true;
  self.edt_cod_pais.Enabled := true;
  self.edt_nomePais.Enabled := true;
end;

procedure TCadastroEstados.limpaEdit;
begin
  inherited;
  self.edt_estado.clear;
  self.edt_uf.clear;
  self.edt_cod_pais.clear;
  self.edt_nomePais.clear;
end;

procedure TCadastroEstados.sair;
begin
  inherited;
end;

procedure TCadastroEstados.salvar;
begin
  inherited;
  if length(edt_estado.text) = 0 then
  begin
    showmessage('O campo "Estado" eh obrigatorio');
    edt_estado.setFocus;
  end
  else if length(edt_UF.text) = 0 then
  begin
    showmessage('O campo "UF" eh obrigatorio');
    edt_uf.SetFocus;
  end
  else if length(edt_nomePais.text) = 0 then
  begin
    showmessage('O campo "Pais" eh obrigatorio');
    edt_cod_pais.SetFocus;
  end
  else
  begin
    oEstado.setEstado(edt_estado.text);
    oEstado.setUF(edt_uf.text);
    oEstado.setCodPaisEstado(strToInt(edt_cod_pais.text));
    oEstado.setNomePaisEstado(edt_nomePais.text);
  end;

end;

end.
