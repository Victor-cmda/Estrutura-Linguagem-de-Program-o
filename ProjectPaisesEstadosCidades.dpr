program ProjectPaisesEstadosCidades;

uses
  Vcl.Forms,
  uFrmPai in 'uFrmPai.pas' {FrmPai},
  uFrmConsulta in 'uFrmConsulta.pas' {FrmConsulta},
  uFrmCadastro in 'uFrmCadastro.pas' {FrmCadastro},
  uFrmConsultaPaises in 'uFrmConsultaPaises.pas' {FrmConsultaPaises},
  uFrmConsultaEstados in 'uFrmConsultaEstados.pas' {FrmConsultaEstados},
  uFrmConsultaCidades in 'uFrmConsultaCidades.pas' {FrmConsultaCidades},
  uFrmCadastroPaises in 'uFrmCadastroPaises.pas' {FrmCadastroPaises},
  uFrmCadastroEstados in 'uFrmCadastroEstados.pas' {FrmCadastroEstados},
  uFrmCadastroCidades in 'uFrmCadastroCidades.pas' {FrmCadastroCidades},
  uAplicacao in 'uAplicacao.pas',
  uEstados in 'uEstados.pas',
  uCidades in 'uCidades.pas';

{$R *.res}

var aAplicacao : Aplicacao;

begin
 // Application.Initialize;
 // Application.MainFormOnTaskbar := True;
 // Application.CreateForm(TMenu, Menu);
 // Application.CreateForm(TFrmPai, FrmPai);
  Application.CreateForm(TFrmConsulta, FrmConsulta);
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.CreateForm(TFrmConsultaPaises, FrmConsultaPaises);
  Application.CreateForm(TFrmConsultaEstados, FrmConsultaEstados);
  Application.CreateForm(TFrmConsultaCidades, FrmConsultaCidades);
  Application.CreateForm(TFrmCadastroPaises, FrmCadastroPaises);
  Application.CreateForm(TFrmCadastroEstados, FrmCadastroEstados);
  Application.CreateForm(TFrmCadastroCidades, FrmCadastroCidades);
  // Application.Run;
  aAplicacao := Aplicacao.CrieObj;
  aAplicacao.Execute_se;
  aAplicacao.Destrua_se;
end.
