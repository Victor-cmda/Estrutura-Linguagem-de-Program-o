program ProjectPaisesEstadosCidades;

uses
  Vcl.Forms,
  uFrmMenu in 'uFrmMenu.pas' {Menu},
  uFrmPai in 'uFrmPai.pas' {FrmPai},
  uFrmConsulta in 'uFrmConsulta.pas' {FrmConsulta},
  uFrmCadastro in 'uFrmCadastro.pas' {FrmCadastro},
  uFrmConsultaPaises in 'uFrmConsultaPaises.pas' {FrmConsultaPaises},
  uFrmConsultaEstados in 'uFrmConsultaEstados.pas' {FrmConsultaEstados},
  uFrmConsultaCidades in 'uFrmConsultaCidades.pas' {FrmConsultaCidades},
  uFrmCadastroPaises in 'uFrmCadastroPaises.pas' {FrmCadastroPaises},
  uFrmCadastroEstados in 'uFrmCadastroEstados.pas' {FrmCadastroEstados},
  uFrmCadastroCidades in 'uFrmCadastroCidades.pas' {FrmCadastroCidades},
  uPai in 'uPai.pas',
  uPaises in 'uPaises.pas',
  uInterfaces in 'uInterfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenu, Menu);
  Application.CreateForm(TFrmPai, FrmPai);
  Application.CreateForm(TFrmConsulta, FrmConsulta);
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.CreateForm(TFrmConsultaPaises, FrmConsultaPaises);
  Application.CreateForm(TFrmConsultaEstados, FrmConsultaEstados);
  Application.CreateForm(TFrmConsultaCidades, FrmConsultaCidades);
  Application.CreateForm(TFrmCadastroPaises, FrmCadastroPaises);
  Application.CreateForm(TFrmCadastroEstados, FrmCadastroEstados);
  Application.CreateForm(TFrmCadastroCidades, FrmCadastroCidades);
  Application.Run;
end.
