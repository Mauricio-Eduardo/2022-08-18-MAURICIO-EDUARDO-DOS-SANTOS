unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uFrmPai;

type
  TCadastro = class(TFrmPai)
    btn_salvar: TButton;
    btn_sair: TButton;
    Label1: TLabel;
    edt_codigo: TEdit;
    edt_datCad: TEdit;
    edt_datUltAlt: TEdit;
    lbl_datCad: TLabel;
    lbl_datUltAlt: TLabel;
    edt_usuario: TEdit;
    lbl_usuario: TLabel;
    procedure btn_sairClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure conhecaObj(pObj, pCtrl : TObject); override;
    procedure limpaEdit;                         virtual;
    procedure carregaEdit;                       virtual;
    procedure bloqueiaEdit;                      virtual;
    procedure desbloqueiaEdit;                   virtual;
    procedure salvar;                            virtual;
    procedure sair;                              virtual;
  end;

var
  Cadastro: TCadastro;

implementation

{$R *.dfm}

{ TForm1 }

procedure TCadastro.bloqueiaEdit;
begin

end;

procedure TCadastro.btn_sairClick(Sender: TObject);
begin
  sair;
end;

procedure TCadastro.btn_salvarClick(Sender: TObject);
begin
  salvar;
end;

procedure TCadastro.carregaEdit;
begin

end;

procedure TCadastro.conhecaObj(pObj, pCtrl : TObject);
begin

end;

procedure TCadastro.desbloqueiaEdit;
begin

end;

procedure TCadastro.limpaEdit;
begin

end;

procedure TCadastro.sair;
begin
  close;
end;

procedure TCadastro.salvar;
begin
  sair;
end;

end.
