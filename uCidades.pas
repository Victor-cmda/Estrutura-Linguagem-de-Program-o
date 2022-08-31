unit uCidades;

interface

uses uPai, uEstados, system.DateUtils;

type
  Cidades = class(pai)
  private
  protected
    Cidade: string;
    IBGE: string;
    oEstado: Estados;
  public
    constructor CrieObj;
    constructor CrieInit(pCodigo: integer; pCidade, pIBGE: string;
      pEstado: Estados; pDatCad, pDatUltAlt: TDateTime);
    destructor Destrua_se;
    procedure setCidade(pCidade: string);
    procedure setIBGE(pIBGE: string);
    procedure setOEstado(pEstado: Estados);
    function getCidade: string;
    function getIBGE: string;
    function getOEstado: Estados;
    function clone: Cidades;
  end;

implementation

{ Cidades }

function Cidades.clone: Cidades;
begin

end;

constructor Cidades.CrieInit(pCodigo: integer; pCidade, pIBGE: string;
  pEstado: Estados; pDatCad, pDatUltAlt: TDateTime);
begin
  codigo := pCodigo;
  Cidade := pCidade;
  IBGE := pIBGE;
  oEstado := pEstado;
  DatCad := pDatCad;
  DatUltAlt := pDatUltAlt;
end;

constructor Cidades.CrieObj;
begin
  inherited;
  codigo := 0;
  Cidade := '';
  IBGE := '';
  oEstado := Estados.CrieObj;
end;

destructor Cidades.Destrua_se;
begin
  oEstado.Destrua_se;
end;

function Cidades.getCidade: string;
begin
  result := Cidade;
end;

function Cidades.getIBGE: string;
begin
  result := IBGE;
end;

function Cidades.getOEstado: Estados;
begin
  result := oEstado;
end;

procedure Cidades.setCidade(pCidade: string);
begin
  Cidade := pCidade;
end;

procedure Cidades.setIBGE(pIBGE: string);
begin
  IBGE := pIBGE;
end;

procedure Cidades.setOEstado(pEstado: Estados);
begin
  oEstado := pEstado;
end;

end.
