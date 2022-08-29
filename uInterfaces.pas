unit uInterfaces;

interface

uses uFrmConsultaPaises, uFrmConsultaEstados, uFrmConsultaCidades,
  uFrmCadastroPaises, uFrmCadastroEstados, uFrmCadastroCidades;

type
  Interfaces = class
  private
  protected
    aConsultaPaises: TFrmConsultaPaises;
    aConsultaEstado: TFrmConsultaEstados;
    aConsultaCidades: TFrmConsultaCidades;
    oCadastroPaises: TFrmCadastroPaises;
    oCadastroEstados: TFrmCadastroEstados;
    oCadastroCidades: TFrmCadastroCidades;
  public
    constructor CrieObj;
    destructor Destrua_se;
    procedure PDPaises(pObj, pCtrl: TObject);
    procedure PDEstados(pObj, pCtrl: TObject);
    procedure PDCidades(pObj, pCtrl: TObject);
  end;

implementation

{ Interfaces }

constructor Interfaces.CrieObj;
begin
  aConsultaPaises := TFrmConsultaPaises.Create(nil);
  aConsultaEstado := TFrmConsultaEstados.Create(nil);
  aConsultaCidades := TFrmConsultaCidades.Create(nil);

  oCadastroPaises := TFrmCadastroPaises.Create(nil);
  oCadastroEstados := TFrmCadastroEstados.Create(nil);
  oCadastroCidades := TFrmCadastroCidades.Create(nil);

  aConsultaPaises.setCadastro(oCadastroPaises);
  aConsultaEstado.setCadastro(oCadastroEstados);
  aConsultaCidades.setCadastro(oCadastroCidades);
end;

destructor Interfaces.Destrua_se;
begin

end;

procedure Interfaces.PDCidades(pObj, pCtrl: TObject);
begin
  aConsultaCidades.ConhecaObj(pObj, pCtrl);
  aConsultaCidades.ShowModal;
end;

procedure Interfaces.PDEstados(pObj, pCtrl: TObject);
begin
  aConsultaEstado.ConhecaObj(pObj, pCtrl);
  aConsultaEstado.ShowModal;
end;

procedure Interfaces.PDPaises(pObj, pCtrl: TObject);
begin
  aConsultaPaises.ConhecaObj(pObj, pCtrl);
  aConsultaPaises.ShowModal;
end;

end.
