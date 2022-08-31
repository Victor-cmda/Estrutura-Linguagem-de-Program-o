unit uFrmCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPai, Vcl.StdCtrls;

type
  TFrmCadastro = class(TFrmPai)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    txtCod: TEdit;
    btn_Sair: TButton;
    btn_Salvar: TButton;
    Label2: TLabel;
    dtCadastro: TEdit;
    Label3: TLabel;
    txtDtUltAlt: TEdit;
    Label4: TLabel;
    txtCodUsuarioUltAlt: TEdit;
    procedure btn_SairClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConhecaObj (pObj,pCtrl: TObject); override;
    procedure LimpaEdit;                        virtual;
    procedure CarregaEdit;                      virtual;
    procedure BloqueiaEdit;                     virtual;
    procedure DesbloqueiaEdit;                  virtual;
    procedure Salvar;                           virtual;
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

{$R *.dfm}

{ TCadastro }

procedure TFrmCadastro.BloqueiaEdit;
begin

end;

procedure TFrmCadastro.btn_SairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrmCadastro.btn_SalvarClick(Sender: TObject);
begin
  inherited;
  Salvar;
end;

procedure TFrmCadastro.CarregaEdit;
begin

end;

procedure TFrmCadastro.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure TFrmCadastro.DesbloqueiaEdit;
begin

end;

procedure TFrmCadastro.LimpaEdit;
begin

end;

procedure TFrmCadastro.Salvar;
begin

end;

end.
