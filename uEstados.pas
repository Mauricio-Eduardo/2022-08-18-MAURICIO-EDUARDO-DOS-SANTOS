unit uEstados;

interface
uses uPai, uPaises;
type estados = class(pai)
    private
    protected
      estado : string;
      UF : string;

      nomePaisEstado : string;   //quando tiver a consulta tirar e fazer com o objeto de uma só vez
      codPaisEstado : integer;
    public
      constructor criaObj;
      constructor criaInit(pCodigo, pCodUser : integer; pEstado, pUF,
        pNomePaisEstado : string; pCodPaisEstado : integer; pDatCad, pDatUltAlt : string);
      destructor destroiObj;
      procedure setEstado(pEstado : string);
      procedure setUF(pUF : string);
      procedure setNomePaisEstado(pNomePaisEstado : string);
      procedure setCodPaisEstado(pCodPaisEstado : integer);
      function getEstado : string;
      function getUF : string;
      function getNomePaisEstado : string;
      function getCodPaisEstado : integer;
      function clone : estados;
end;

implementation

{ estados }

function estados.clone: estados;
begin
  estados.criaInit(codigo, codUser, estado, UF, nomePaisEstado, codPaisEstado,
    datCad, datUltAlt);
end;

constructor estados.criaInit(pCodigo, pCodUser : integer; pEstado, pUF,
        pNomePaisEstado : string; pCodPaisEstado : integer; pDatCad, pDatUltAlt : string);
begin
  Codigo := pCodigo;
  codUser := pCodUser;
  estado := pEstado;
  UF := pUF;
  nomePaisEstado := pNomePaisEstado;
  codPaisEstado := pCodPaisEstado;
  datCad := pDatCad;
  datUltAlt := pDatUltAlt;
end;

constructor estados.criaObj;
begin
  codigo := 0;
  codUser := 0;
  estado := '';
  UF := '';
  nomePaisEstado := '';
  codPaisEstado := 0;
  datCad := '';
  datUltAlt := '';
end;

destructor estados.destroiObj;
begin

end;

function estados.getCodPaisEstado: integer;
begin

end;

function estados.getEstado: string;
begin
  result := estado;
end;

function estados.getNomePaisEstado: string;
begin
  result := nomePaisEstado;
end;

function estados.getUF: string;
begin
  result := UF;
end;

procedure estados.setCodPaisEstado(pCodPaisEstado: integer);
begin
  codPaisEstado := pCodPaisEstado;
end;

procedure estados.setEstado(pEstado : string);
begin
  estado := pEstado;
end;

procedure estados.setNomePaisEstado(pNomePaisEstado: string);
begin
  nomePaisEstado := pNomePaisEstado;
end;

procedure estados.setUF(pUF: string);
begin
  UF := pUF;
end;

end.
