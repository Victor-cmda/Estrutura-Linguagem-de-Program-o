unit uFrmConsultaEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmConsulta, Vcl.ComCtrls,
  Vcl.StdCtrls, uFrmCadastroEstados, uEstados;

type
  TFrmConsultaEstados = class(TFrmConsulta)
  private
    { Private declarations }
    oFrmCadEstados : TFrmCadastroEstados;
    oEstado : Estados;
  public
    { Public declarations }
    procedure ConhecaObj(pObj, pCtrl: TObject); override;
    procedure Pesquisar; override;
    procedure Incluir; override;
    procedure Alterar; override;
    procedure Excluir; override;
    procedure Sair; override;
    procedure setCadastro(pObj: TObject); override;
  end;

var
  FrmConsultaEstados: TFrmConsultaEstados;

implementation

{$R *.dfm}
{ TFrmConsultaEstados }

procedure TFrmConsultaEstados.Alterar;
begin
  inherited;
  oFrmCadEstados.ConhecaObj(oEstado,nil);
  oFrmCadEstados.CarregaEdit;
  oFrmCadEstados.ShowModal;
end;

procedure TFrmConsultaEstados.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oEstado := Estados(pObj);
end;

procedure TFrmConsultaEstados.Excluir;
begin
  inherited;
  oFrmCadEstados.ConhecaObj(oEstado,nil);
  oFrmCadEstados.CarregaEdit;
  oFrmCadEstados.BloqueiaEdit;
  oFrmCadEstados.ShowModal;
  oFrmCadEstados.DesbloqueiaEdit;
end;

procedure TFrmConsultaEstados.Incluir;
begin
  inherited;
  oFrmCadEstados.ConhecaObj(oEstado,nil);
  oFrmCadEstados.LimpaEdit;
  oFrmCadEstados.ShowModal;
end;

procedure TFrmConsultaEstados.Pesquisar;
begin
  inherited;

end;

procedure TFrmConsultaEstados.Sair;
begin
  inherited;

end;

procedure TFrmConsultaEstados.setCadastro(pObj: TObject);
begin
  inherited;
  oFrmCadEstados := TFrmCadastroEstados(pObj);
end;

end.
