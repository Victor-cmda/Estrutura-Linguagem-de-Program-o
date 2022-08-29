unit uPai;

interface
uses system.DateUtils;
  type Pai = class
    private
    protected
      Codigo : integer;
      datCad :  TDateTime;
      datUltAlt : TDateTime;
      codUser : integer;
    public
    constructor CrieObj;
    destructor Destrua_se;
    procedure setCodigo(pCodigo : integer);
    procedure setDatCad (pDatCad : TDateTime);
    procedure setDatUltAlt (pDatUltAlt : TDateTime);
    procedure setCodUser(pCodUser: integer);
    function getCodigo : integer;
    function getDatCad : TDateTime;
    function getDatUltAlt : TDateTime;
    function getCodUser : integer;
  end;
implementation

{ Pai }

constructor Pai.CrieObj;
begin
  codigo := 0;
  codUser := 0;
  datCad := Today;
  datUltAlt := Today;
end;

destructor Pai.Destrua_se;
begin

end;

function Pai.getCodigo: integer;
begin
  result := Codigo;
end;

function Pai.getCodUser: integer;
begin
  result := codUser;
end;

function Pai.getDatCad: TDateTime;
begin
  result := datCad;
end;

function Pai.getDatUltAlt: TDateTime;
begin
  result := datUltAlt;
end;

procedure Pai.setCodigo(pCodigo: integer);
begin
  codigo := pCodigo;
end;

procedure Pai.setCodUser(pCodUser: integer);
begin
  codUser := pCodUser;
end;

procedure Pai.setDatCad(pDatCad: TDateTime);
begin
  datCad := pDatCad;
end;

procedure Pai.setDatUltAlt(pDatUltAlt: TDateTime);
begin
  datUltAlt := pDatUltAlt;
end;

end.
