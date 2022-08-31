unit uFrmCadastroPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastro, Vcl.StdCtrls, uPaises;

type
  TFrmCadastroPaises = class(TFrmCadastro)
    Label5: TLabel;
    edt_Pais: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edt_DDI: TEdit;
    edt_Sigla: TEdit;
  private
    { Private declarations }
    oPais: Paises;
  public
    { Public declarations }
    procedure ConhecaObj(pObj, pCtrl: TObject); override;
    procedure LimpaEdit; override;
    procedure CarregaEdit; override;
    procedure BloqueiaEdit; override;
    procedure DesbloqueiaEdit; override;
    procedure Salvar; override;
  end;

var
  FrmCadastroPaises: TFrmCadastroPaises;

implementation

{$R *.dfm}
{ TFrmCadastroPaises }

procedure TFrmCadastroPaises.BloqueiaEdit;
begin
  inherited;
  self.edt_Pais.Enabled := false;
  self.edt_DDI.Enabled := false;
  self.edt_Sigla.Enabled := false;
  self.txtCod.Enabled := false;
end;

procedure TFrmCadastroPaises.CarregaEdit;
begin
  inherited;
  self.txtCod.Text := oPais.getCodigo.ToString;
  self.edt_Pais.Text := oPais.getPais;
  self.edt_DDI.Text := oPais.getDDI;
  self.edt_Sigla.Text := oPais.getSigla;
end;

procedure TFrmCadastroPaises.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oPais := Paises(pObj);
end;

procedure TFrmCadastroPaises.DesbloqueiaEdit;
begin
  inherited;
  self.edt_Pais.Enabled := true;
  self.edt_DDI.Enabled := true;
  self.edt_Sigla.Enabled := true;
  self.txtCod.Enabled := true;
end;

procedure TFrmCadastroPaises.LimpaEdit;
begin
  inherited;
  self.edt_Pais.Clear;
  self.edt_DDI.Clear;
  self.edt_Sigla.Clear;
  self.txtCod.Clear;
end;

procedure TFrmCadastroPaises.Salvar;
begin
  inherited;

  if Length(txtCod.Text) = 0 then
  begin
    ShowMessage('Campo obrigat�rio n�o preenchido, favor revisar e prencher');
    txtCod.SetFocus;
  end
  else if Length(edt_Pais.Text) = 0 then
  begin
    ShowMessage('Campo obrigat�rio n�o preenchido, favor revisar e prencher');
    edt_Pais.SetFocus;
  end
  else if Length(edt_DDI.Text) = 0 then
  begin
    ShowMessage('Campo obrigat�rio n�o preenchido, favor revisar e prencher');
    edt_DDI.SetFocus;
  end
  else if Length(edt_Sigla.Text) = 0 then
  begin
    ShowMessage('Campo obrigat�rio n�o preenchido, favor revisar e prencher');
    edt_Sigla.SetFocus;
  end
  else
  begin
     oPais.setCodigo(strtoint(txtCod.Text));
     oPais.setPais(edt_Pais.Text);
     oPais.setDDI(edt_DDI.Text);
     oPais.setSigla(edt_Sigla.Text);
   end;
   
end;

end.
