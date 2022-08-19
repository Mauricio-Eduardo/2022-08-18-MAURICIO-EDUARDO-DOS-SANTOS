unit uCidades;

interface
  uses uPai, uEstados;
  type cidades = class(pai)
    private
    protected
      cidade : string;
      cep : string;
      codEstadoCidade : integer;
      nomeEstadoCidade : string;
      codPaisEstado : integer;
      nomePaisEstado : string;
    public
      constructor criaObj;
      constructor criaInit(pCidade, pCEP : string; pCodEstadoCidade : integer;
        pNomeEstadoCidade : string; pCodPaisEstado : integer; pNomePaisEstado : string);
      destructor destroiObj;
      procedure setCidade(pCidade : string);
      procedure setCep(pCEP : string);
      procedure setCodEstadoCidade(pCodEstadoCidade : integer);
      procedure setNOmeEstadoCidae(pNomeEstadoCidade : string);
      procedure setCodPaisEstado(pCodPaisEstado : integer);
      procedure setNomePaisEstado(pNomePaisEstado : string);
      function getCidade : string;
      function getCEP : string;
      function getCodEstadoCidade : integer;
      function getNomeEstadoCidade : string;
      function getCodPaisEstado : integer;
      function getNomePaisEstado : string;
      function clone : cidades;
  end;

implementation

{ cidades }

function cidades.clone: cidades;
begin
  cidades.criaInit(cidade, cep, codEstadoCidade, nomeEstadoCidade, codPaisEstado, nomePaisEstado);
end;

constructor cidades.criaInit(pCidade, pCEP: string; pCodEstadoCidade: integer;
  pNomeEstadoCidade: string; pCodPaisEstado: integer; pNomePaisEstado: string);
begin
  cidade := pCidade;
  cep := pCep;
  codEstadoCidade := pCOdEstadoCidade;
  nomeEstadoCidade := pNomeEstadoCidade;
  codPaisEstado := pCOdPaisEstado;
  nomePaisEstado := pNomePaisEstado;
end;

constructor cidades.criaObj;
begin
  cidade := '';
  cep := '';
  codEstadoCidade := 0;
  nomeEstadoCidade := '';
  codPaisEstado := 0;
  nomePaisEstado := '';
end;

destructor cidades.destroiObj;
begin

end;

function cidades.getCEP: string;
begin
  result := cep;
end;

function cidades.getCidade: string;
begin
  result := cidade;
end;

function cidades.getCodEstadoCidade: integer;
begin
  result := codEstadoCidade;
end;

function cidades.getCodPaisEstado: integer;
begin
  result := codPaisEstado;
end;

function cidades.getNomeEstadoCidade: string;
begin
  result := nomeEstadoCidade;
end;

function cidades.getNomePaisEstado: string;
begin
  result := nomePaisEstado;
end;

procedure cidades.setCep(pCEP: string);
begin
  cep := pCEP;
end;

procedure cidades.setCidade(pCidade: string);
begin
  cidade := pCidade;
end;

procedure cidades.setCodEstadoCidade(pCodEstadoCidade: integer);
begin
  codEstadoCidade := pCodEstadoCidade;
end;

procedure cidades.setCodPaisEstado(pCodPaisEstado: integer);
begin
  codPaisEstado := pCodPaisEstado;
end;

procedure cidades.setNOmeEstadoCidae(pNomeEstadoCidade: string);
begin
  nomeEstadoCidade := pNomeEstadoCidade;
end;

procedure cidades.setNomePaisEstado(pNomePaisEstado: string);
begin
  nomePaisEstado := pNomePaisEstado;
end;

end.
