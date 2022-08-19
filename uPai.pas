unit uPai;

interface
  uses System.DateUtils;
  type pai = class
    private
    protected
      codigo : integer;
      datCad : string;
      datUltAlt : string;
      codUser : integer;
    public
      constructor criaObj;
      destructor destroiObj;
      procedure setCodigo(pCodigo : integer);
      procedure setDatCad(pDat : string);
      procedure setDatUltAlt(pDat : string);
      procedure setCodUser(pCod : integer);
      function getCodigo : integer;
      function getDatCad : string;
      function getDatUltAlt : string;
      function getCodUSer : integer;
  end;

implementation

{ pai }

constructor pai.criaObj;
begin
  codigo := 0;
  datCad := '';
  datUltAlt := '';
  codUser := 0;
end;

destructor pai.destroiObj;
begin

end;

function pai.getCodigo: integer;
begin
  result := codigo;
end;

function pai.getCodUSer: integer;
begin
  result := codUser;
end;

function pai.getDatCad: string;
begin
  result := datCad;
end;

function pai.getDatUltAlt: string;
begin
  result := datUltAlt;
end;

procedure pai.setCodigo(pCodigo: integer);
begin
  codigo := pCodigo;
end;

procedure pai.setCodUser(pCod: integer);
begin
  codUser := pCod;
end;

procedure pai.setDatCad(pDat: string);
begin
  datCad := pDat;
end;

procedure pai.setDatUltAlt(pDat: string);
begin
  datUltAlt := pDat;
end;

end.
