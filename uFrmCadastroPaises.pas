unit uFrmCadastroPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastro, Vcl.StdCtrls, uPaises;

type
  TFrmCadastroPaises = class(TFrmCadastro)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConhecaObj (pObj,pCtrl: TObject); override;
    procedure LimpaEdit;                        override;
    procedure CarregaEdit;                      override;
    procedure BloqueiaEdit;                     override;
    procedure DesbloqueiaEdit;                  override;
    procedure Salvar;                           override;
  end;

var
  FrmCadastroPaises: TFrmCadastroPaises;

implementation

{$R *.dfm}

{ TFrmCadastroPaises }

procedure TFrmCadastroPaises.BloqueiaEdit;
begin
  inherited;

end;

procedure TFrmCadastroPaises.CarregaEdit;
begin
  inherited;

end;

procedure TFrmCadastroPaises.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure TFrmCadastroPaises.DesbloqueiaEdit;
begin
  inherited;

end;

procedure TFrmCadastroPaises.LimpaEdit;
begin
  inherited;

end;

procedure TFrmCadastroPaises.Salvar;
begin
  inherited;

end;

end.
