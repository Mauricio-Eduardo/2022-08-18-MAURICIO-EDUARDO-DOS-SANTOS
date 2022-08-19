unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uInter, uPaises, uEstados, uCidades;

type
  TMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cidades1: TMenuItem;
    Estados1: TMenuItem;
    Paises1: TMenuItem;
    Lançamentos1: TMenuItem;
    Utilitários1: TMenuItem;
    Sair1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Paises1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  protected
    aInter : Interfaces;
    oEstado : estados;
    aCidade : cidades;
    oPais : paises;
  public
    { Public declarations }
    procedure conhecaObj(pPais : paises; pEstado : estados; pCidade : cidades; pInter : interfaces);
  end;

var
  Menu: TMenu;

implementation

{$R *.dfm}

procedure TMenu.FormCreate(Sender: TObject);
begin
  aInter := interfaces.criaObj;
  oPais := paises.criaObj;
  oEstado := estados.criaObj;
end;

procedure TMenu.Cidades1Click(Sender: TObject);
begin
  aInter.PDCidades(aCidade,nil);
end;

procedure TMenu.conhecaObj(pPais : paises; pEstado : estados; pCidade : cidades;
  pInter : interfaces);
begin
  oPais := pPais;
  oEstado := pEstado;
  aCidade := pCidade;
  aInter := pInter;
end;

procedure TMenu.Estados1Click(Sender: TObject);
begin
  aInter.PDEstados(oEstado,nil);
end;

procedure TMenu.Paises1Click(Sender: TObject);
begin
  aInter.PDPaises(oPais, nil);
end;

procedure TMenu.Sair1Click(Sender: TObject);
begin
  close;
end;

end.

