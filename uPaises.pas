unit uPaises;

interface
  uses uPai;
  type paises = class(pai)
    private
    protected
      pais : string;
      DDI : string;
      sigla : string;
    public
      constructor criaObj;
      constructor criaInit(pCodigo, pCodUser : integer; pPais, pDDI, pSigla,
      pDatCad, pDatUltAlt : string);
      destructor destroiObj;
      procedure setPais(pPais : string);
      procedure setDDI(pDDI : string);
      procedure setSigla(pSigla : string);
      function getPais : string;
      function getDDI : string;
      function getSigla : string;
      function clone : paises;
  end;

implementation

{ paises }

function paises.clone: paises;
begin
  result := paises.criaInit(codigo, codUser, pais, DDI, sigla, datCad, datUltAlt);
end;

constructor paises.criaInit(pCodigo, pCodUser: integer; pPais, pDDI, pSigla,
  pDatCad, pDatUltAlt: string);
begin
  codigo := pCodigo;
  codUser := pCodUser;
  pais := pPais;
  DDI := pDDI;
  sigla := pSigla;
  datCad := pDatCad;
  datUltAlt := pDatUltAlt;
end;

constructor paises.criaObj;
begin
  codigo := 0;
  codUser := 0;
  pais := '';
  DDI := '';
  sigla := '';
  datCad := '';
  datUltAlt := '';
end;

destructor paises.destroiObj;
begin

end;

function paises.getDDI: string;
begin
  result := DDI;
end;

function paises.getPais: string;
begin
  result := pais;
end;

function paises.getSigla: string;
begin
  result := sigla;
end;

procedure paises.setDDI(pDDI: string);
begin
  DDI := pDDI;
end;

procedure paises.setPais(pPais: string);
begin
  pais := pPais;
end;

procedure paises.setSigla(pSigla: string);
begin
  sigla := pSigla;
end;

end.
