unit uFrmConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPai, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFrmConsulta = class(TFrmPai)
    GroupBoxConsulta: TGroupBox;
    edt_Chave: TEdit;
    btn_Sair: TButton;
    btn_Excluir: TButton;
    btn_Alterar: TButton;
    btn_Incluir: TButton;
    Filtro: TLabel;
    ListView: TListView;
    btn_Filtrar: TButton;
    procedure btn_FiltrarClick(Sender: TObject);
    procedure btn_IncluirClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConhecaObj( pObj, pCtrl : TObject );  override;
    procedure Pesquisar;                            virtual;
    procedure Incluir;                              virtual;
    procedure Alterar;                              virtual;
    procedure Excluir;                              virtual;
    procedure Sair;                                 virtual;
    procedure setCadastro(pObj : TObject);          virtual; abstract;
  end;

var
  FrmConsulta: TFrmConsulta;

implementation

{$R *.dfm}

{ TFrmConsulta }

procedure TFrmConsulta.btn_AlterarClick(Sender: TObject);
begin
  inherited;
  Alterar;
end;

procedure TFrmConsulta.btn_ExcluirClick(Sender: TObject);
begin
  inherited;
  Excluir;
end;

procedure TFrmConsulta.btn_FiltrarClick(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TFrmConsulta.btn_IncluirClick(Sender: TObject);
begin
  inherited;
  Incluir;
end;

procedure TFrmConsulta.btn_SairClick(Sender: TObject);
begin
  inherited;
  Sair;
end;

procedure TFrmConsulta.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure TFrmConsulta.Alterar;
begin

end;

procedure TFrmConsulta.Excluir;
begin

end;

procedure TFrmConsulta.Incluir;
begin

end;

procedure TFrmConsulta.Pesquisar;
begin

end;

procedure TFrmConsulta.Sair;
begin
  close;
end;

end.
