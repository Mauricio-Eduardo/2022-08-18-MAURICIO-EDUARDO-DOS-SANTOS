unit uInter;

interface
  uses uConsultaPaises, uConsultaEstados, uConsultaCidades,
       uCadastroPaises, uCadastroEstados, uCadastroCidades;
  type interfaces = class
    private
    protected
      aConsultaPaises  : TConsultaPaises;
      aConsultaEstados : TConsultaEstados;
      aConsultaCidades : TConsultaCidades;

      oCadastroPaises : TCadastroPaises;
      oCadastroEstados : TCadastroEstados;
      oCadastroCidades : TCadastroCidades;
    public
      constructor criaObj;
      destructor destroiObj;
      procedure PDPaises(pObj, pCtrl : TObject);
      procedure PDEstados(pObj, pCtrl : TObject);
      procedure PDCidades(pObj, pCtrl : TObject);
  end;

implementation

{ interfaces }

constructor interfaces.criaObj;
begin
  aConsultaPaises := TConsultaPaises.create(nil);
  aConsultaEstados := TConsultaEstados.create(nil);
  aConsultaCidades := TConsultaCidades.create(nil);

  oCadastroPaises := TCadastroPaises.create(nil);
  oCadastroEstados := TCadastroEstados.Create(nil);
  oCadastroCidades:= TCadastroCidades.create(nil);

  aConsultaPaises.setCadastro(oCadastroPaises);
  aConsultaEstados.setCadastro(oCadastroEstados);
  aConsultaCidades.setCadastro(oCadastroCidades);
end;

destructor interfaces.destroiObj;
begin
  aConsultaPaises.FreeInstance;
  aConsultaEstados.FreeInstance;
  aConsultaCidades.FreeInstance;
end;

procedure interfaces.PDCidades(pObj, pCtrl : TObject);
begin
  aConsultaCidades.conhecaObj(pObj, pCtrl);
  aConsultaCidades.ShowModal;
end;

procedure interfaces.PDEstados(pObj, pCtrl : TObject);
begin
  aConsultaEstados.conhecaObj(pObj, pCtrl);
  aConsultaEstados.ShowModal;
end;

procedure interfaces.PDPaises(pObj, pCtrl : TObject);
begin
  aConsultaPaises.conhecaObj(pObj, pCtrl);
  aConsultaPaises.ShowModal;
end;

end.
