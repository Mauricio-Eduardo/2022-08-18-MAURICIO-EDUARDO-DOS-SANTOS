unit uAplicacao;

interface
uses uMenu, uInter, uPaises, uEstados, uCidades;
type aplicacao = class
  private
  protected
    oMenu : TMenu;
    aInter : interfaces;
    oPais : paises;
    oEstado : estados;
    aCidade : cidades;
  public
    constructor criaObj;
    destructor destroiObj;
    procedure execute_se;
end;

implementation

{ aplicacao }

constructor aplicacao.criaObj;
begin
  oMenu := Tmenu.Create(nil);
  aInter := interfaces.criaObj;
  oPais := paises.criaObj;
  oEstado := estados.criaObj;
  aCidade := cidades.criaObj;
end;

destructor aplicacao.destroiObj;
begin
  oMenu.FreeInstance;
  aInter.destroiObj;
  oPais.destroiObj;
  oEstado.destroiObj;
  aCidade.destroiObj;
end;

procedure aplicacao.execute_se;
begin
  oMenu.conhecaObj(oPais, oEstado, aCidade, aInter);
  oMenu.ShowModal;
end;

end.
