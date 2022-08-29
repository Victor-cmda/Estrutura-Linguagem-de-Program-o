unit uFrmConsultaPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmConsulta, Vcl.ComCtrls,
  Vcl.StdCtrls, uPaises, uFrmCadastroPaises;

type
  TFrmConsultaPaises = class(TFrmConsulta)
    procedure btn_SairClick(Sender: TObject);
  private
    { Private declarations }
    oPais: Paises;
    oCadastroPaises : TFrmCadastroPaises;
  public
    { Public declarations }
    procedure ConhecaObj(pObj, pCtrl: TObject); override;
    procedure Pesquisar; override;
    procedure Incluir; override;
    procedure Alterar; override;
    procedure Excluir; override;
    procedure Sair; override;
    procedure setCadastro(pObj : TObject); override;
  end;

var
  FrmConsultaPaises: TFrmConsultaPaises;

implementation

{$R *.dfm}
{ TFrmConsultaPaises }

procedure TFrmConsultaPaises.Alterar;
begin
  inherited;
  oCadastroPaises.ConhecaObj(oPais, nil);
  oCadastroPaises.ShowModal;
end;

procedure TFrmConsultaPaises.btn_SairClick(Sender: TObject);
begin
  inherited;
  Sair;
end;

procedure TFrmConsultaPaises.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oPais := Paises(pObj);
end;

procedure TFrmConsultaPaises.Excluir;
begin
  inherited;
  oCadastroPaises.ConhecaObj(oPais, nil);
  oCadastroPaises.ShowModal;
end;

procedure TFrmConsultaPaises.Incluir;
begin
  inherited;
  oCadastroPaises.ConhecaObj(oPais, nil);
  oCadastroPaises.ShowModal;
end;

procedure TFrmConsultaPaises.Pesquisar;
begin
  inherited;

end;

procedure TFrmConsultaPaises.Sair;
begin
  inherited;

end;

procedure TFrmConsultaPaises.setCadastro(pObj: TObject);
begin
  inherited;
  oCadastroPaises := TFrmCadastroPaises(pObj);
end;

end.
