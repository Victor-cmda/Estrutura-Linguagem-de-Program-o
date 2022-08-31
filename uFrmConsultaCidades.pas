unit uFrmConsultaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmConsulta, Vcl.ComCtrls,
  Vcl.StdCtrls, uFrmCadastroCidades, uCidades;

type
  TFrmConsultaCidades = class(TFrmConsulta)
  private
    { Private declarations }
    oFrmCadCidades: TFrmCadastroCidades;
    aCidade: Cidades;
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
  FrmConsultaCidades: TFrmConsultaCidades;

implementation

{$R *.dfm}
{ TFrmConsultaCidades }

procedure TFrmConsultaCidades.Alterar;
begin
  inherited;
  oFrmCadCidades.ConhecaObj(aCidade, nil);
  oFrmCadCidades.CarregaEdit;
  oFrmCadCidades.ShowModal;
end;

procedure TFrmConsultaCidades.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  aCidade := Cidades(pObj);
end;

procedure TFrmConsultaCidades.Excluir;
begin
  inherited;
  oFrmCadCidades.ConhecaObj(aCidade, nil);
  oFrmCadCidades.CarregaEdit;
  oFrmCadCidades.ShowModal;
end;

procedure TFrmConsultaCidades.Incluir;
begin
  inherited;
  oFrmCadCidades.ConhecaObj(aCidade, nil);
  oFrmCadCidades.LimpaEdit;
  oFrmCadCidades.ShowModal;
end;

procedure TFrmConsultaCidades.Pesquisar;
begin
  inherited;

end;

procedure TFrmConsultaCidades.Sair;
begin
  inherited;

end;

procedure TFrmConsultaCidades.setCadastro(pObj: TObject);
begin
  inherited;
  oFrmCadCidades := TFrmCadastroCidades(pObj);
end;

end.
