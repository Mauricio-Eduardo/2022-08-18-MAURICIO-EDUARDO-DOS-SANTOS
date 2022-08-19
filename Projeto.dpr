program Projeto;

uses
  Vcl.Forms,
  uMenu in 'uMenu.pas' {Menu},
  uConsulta in 'uConsulta.pas' {Consulta},
  uConsultaPaises in 'uConsultaPaises.pas' {ConsultaPaises},
  uConsultaCidades in 'uConsultaCidades.pas' {ConsultaCidades},
  uConsultaEstados in 'uConsultaEstados.pas' {ConsultaEstados},
  uInter in 'uInter.pas',
  uCadastro in 'uCadastro.pas' {Cadastro},
  uCadastroPaises in 'uCadastroPaises.pas' {CadastroPaises},
  uCadastroEstados in 'uCadastroEstados.pas' {CadastroEstados},
  uCadastroCidades in 'uCadastroCidades.pas' {CadastroCidades},
  uFrmPai in 'uFrmPai.pas' {FrmPai},
  uPai in 'uPai.pas',
  uPaises in 'uPaises.pas',
  uAplicacao in 'uAplicacao.pas',
  uEstados in 'uEstados.pas',
  uCidades in 'uCidades.pas';

{$R *.res}
var aAplicacao : aplicacao;

begin
  //Application.Initialize;
  //Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenu, Menu);
  Application.CreateForm(TConsulta, Consulta);
  Application.CreateForm(TConsultaPaises, ConsultaPaises);
  Application.CreateForm(TConsultaCidades, ConsultaCidades);
  Application.CreateForm(TConsultaEstados, ConsultaEstados);
  Application.CreateForm(TCadastro, Cadastro);
  Application.CreateForm(TCadastroPaises, CadastroPaises);
  Application.CreateForm(TCadastroEstados, CadastroEstados);
  Application.CreateForm(TCadastroCidades, CadastroCidades);
  Application.CreateForm(TFrmPai, FrmPai);
  //Application.Run;
  aAplicacao := aplicacao.criaObj;
  aAplicacao.execute_se;
  aAplicacao.destroiObj;
end.
