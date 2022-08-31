unit uFrmCadastroEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastro, Vcl.StdCtrls,
  uFrmConsultaPaises, uEstados;

type
  TFrmCadastroEstados = class(TFrmCadastro)
    edt_Estado: TEdit;
    edt_UF: TEdit;
    edt_codPais: TEdit;
    edt_Pais: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btn_Pesquisar: TButton;
    procedure btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oFrmConsultaPaises: TFrmConsultaPaises;
    oEstado: Estados;
  public
    { Public declarations }
    procedure ConhecaObj(pObj, pCtrl: TObject); override;
    procedure LimpaEdit; override;
    procedure CarregaEdit; override;
    procedure BloqueiaEdit; override;
    procedure DesbloqueiaEdit; override;
    procedure Salvar; override;
    procedure setConsultaPaises(pObj: TObject);
  end;

var
  FrmCadastroEstados: TFrmCadastroEstados;

implementation

{$R *.dfm}
{ TFrmCadastroEstados }

procedure TFrmCadastroEstados.BloqueiaEdit;
begin
  inherited;

end;

procedure TFrmCadastroEstados.btn_PesquisarClick(Sender: TObject);
var
  aux: string;
begin
  inherited;
  oFrmConsultaPaises.ConhecaObj(oEstado.getOPais, nil);
  aux := oFrmConsultaPaises.btn_Sair.Caption;
  oFrmConsultaPaises.btn_Sair.Caption := 'Selecionar';
  oFrmConsultaPaises.ShowModal;
  oFrmConsultaPaises.btn_Sair.Caption := aux;
end;

procedure TFrmCadastroEstados.CarregaEdit;
begin
  inherited;

end;

procedure TFrmCadastroEstados.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oEstado := Estados(pObj);
end;

procedure TFrmCadastroEstados.DesbloqueiaEdit;
begin
  inherited;

end;

procedure TFrmCadastroEstados.LimpaEdit;
begin
  inherited;

end;

procedure TFrmCadastroEstados.Salvar;
begin
  inherited;

end;

procedure TFrmCadastroEstados.setConsultaPaises(pObj: TObject);
begin
  oFrmConsultaPaises := TFrmConsultaPaises(pObj);
end;

end.
