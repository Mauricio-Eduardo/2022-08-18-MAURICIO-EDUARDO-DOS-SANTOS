unit uCadastroPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls,
  uPaises;

type
  TCadastroPaises = class(TCadastro)
    lbl_pais: TLabel;
    edt_pais: TEdit;
    lbl_sigla: TLabel;
    edt_sigla: TEdit;
    lbl_ddi: TLabel;
    edt_ddi: TEdit;
  private
    { Private declarations }
    oPais : paises;
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
  CadastroPaises: TCadastroPaises;

implementation

{$R *.dfm}

{ TCadastroPaises }

procedure TCadastroPaises.bloqueiaEdit;
begin
  inherited;
  self.edt_codigo.Enabled := false;
  self.edt_pais.Enabled := false;
  self.edt_sigla.Enabled := false;
  self.edt_ddi.Enabled := false;
end;

procedure TCadastroPaises.carregaEdit;
begin
  inherited;
  self.edt_codigo.text := intToStr(oPais.getCodigo);
  self.edt_pais.text := oPais.getPais;
  self.edt_sigla.text := oPais.getSigla;
  self.edt_ddi.text := oPais.getDDI;
end;

procedure TCadastroPaises.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oPais := paises(pObj);
end;

procedure TCadastroPaises.desbloqueiaEdit;
begin
  inherited;
  self.edt_codigo.enabled := true;
  self.edt_pais.Enabled := true;
  self.edt_sigla.Enabled := true;
  self.edt_ddi.Enabled := true;
end;

procedure TCadastroPaises.limpaEdit;
begin
  inherited;
  self.edt_pais.clear;
  self.edt_sigla.clear;
  self.edt_ddi.clear;
end;

procedure TCadastroPaises.sair;
begin
  inherited;
end;

procedure TCadastroPaises.salvar;
begin
  inherited;
  if length(edt_pais.text) = 0 then
  begin
    showmessage('Campo "Pais" eh obrigatorio');
    edt_pais.setFocus;
  end
  else if length(edt_sigla.text) = 0 then
  begin
    showmessage('Campo "Sigla" eh obrigatorio');
    edt_sigla.SetFocus;
  end
  else if length(edt_ddi.text) = 0 then
  begin
    showmessage('Campo "DDI" eh obrigatorio');
    edt_ddi.setFocus;
  end
  else
  begin
    oPais.setCodigo(strToInt(edt_codigo.text));
    oPais.setPais(edt_pais.text);
    oPais.setSigla(edt_sigla.text);
    oPais.setDDI(edt_ddi.text);
  end;
end;

end.
