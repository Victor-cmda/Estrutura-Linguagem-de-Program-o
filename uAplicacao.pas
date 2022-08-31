unit uAplicacao;

interface
  uses uFrmMenu, uInterfaces, uPaises, uEstados, uCidades;
  type Aplicacao = class
    private
    protected
      oMenu : TMenu;
      aInter : Interfaces;
      oPais : Paises;
      oEstado : Estados;
      aCidade : Cidades;
    public
      constructor CrieObj;
      destructor Destrua_se;
      procedure Execute_se;
  end;
implementation

{ Aplicacao }

constructor Aplicacao.CrieObj;
begin
  oMenu := TMenu.Create(nil);
  aInter := Interfaces.CrieObj;
  oPais := Paises.CrieObj;
  oEstado := Estados.CrieObj;
  aCidade := Cidades.CrieObj;
end;

destructor Aplicacao.Destrua_se;
begin
  oMenu.FreeInstance;
  aInter.Destrua_se;
  oPais.Destrua_se;
  oEstado.Destrua_se;
  aCidade.Destrua_se;
end;

procedure Aplicacao.Execute_se;
begin
  oMenu.ConhecaObj(oPais, aInter, oEstado, aCidade);
  oMenu.ShowModal;
end;

end.
