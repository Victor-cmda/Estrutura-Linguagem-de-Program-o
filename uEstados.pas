unit uEstados;

interface

uses uPai, uPaises, system.DateUtils;

type
  Estados = class(pai)
  private
  protected
    Estado: string;
    UF: string;
    oPais: Paises;
  public
    constructor CrieObj;
    constructor CrieInit(pCodigo: integer; pEstado, pUF: string; pPais: Paises;
      pDatCad, pDatUltAlt: TDateTime);
    destructor Destrua_se;
    procedure setEstado(pEstado: string);
    procedure setUF(pUF: string);
    procedure setOPais(pPais: Paises);
    function getEstado: string;
    function getUF: string;
    function getOPais: Paises;
    function clone: Estados;

  end;

implementation

{ Estados }

function Estados.clone: Estados;
begin

end;

constructor Estados.CrieInit(pCodigo: integer; pEstado, pUF: string;
  pPais: Paises; pDatCad, pDatUltAlt: TDateTime);
begin
  codigo := pCodigo;
  Estado := pEstado;
  UF := pUF;
  oPais := pPais;
  datCad := pDatCad;
  datUltAlt := pDatUltAlt;
end;

constructor Estados.CrieObj;
begin
  inherited;
  codigo := 0;
  Estado := '';
  UF := '';
  oPais := Paises.CrieObj;
end;

destructor Estados.Destrua_se;
begin
  oPais.Destrua_se;
end;

function Estados.getEstado: string;
begin
  result := Estado;
end;

function Estados.getOPais: Paises;
begin
  result := oPais
end;

function Estados.getUF: string;
begin
  result := UF
end;

procedure Estados.setEstado(pEstado: string);
begin
  Estado := pEstado;
end;

procedure Estados.setOPais(pPais: Paises);
begin
  oPais := pPais;
end;

procedure Estados.setUF(pUF: string);
begin
  UF := pUF;
end;

end.
