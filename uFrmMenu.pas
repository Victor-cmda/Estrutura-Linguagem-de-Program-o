unit uFrmMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uInterfaces, uPaises,
  uCidades,
  uEstados;

type
  TMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros: TMenuItem;
    Paises: TMenuItem;
    Estados: TMenuItem;
    Cidades: TMenuItem;
    Lancamentos: TMenuItem;
    Utilitarios: TMenuItem;
    Sair: TMenuItem;
    procedure SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaisesClick(Sender: TObject);
    procedure EstadosClick(Sender: TObject);
    procedure CidadesClick(Sender: TObject);
  private
    { Private declarations }
  protected
    aInter: Interfaces;
    oPais: Paises;
    oEstado: Estados;
    aCidade: Cidades;
  public
    { Public declarations }
    procedure ConhecaObj(pPais: Paises; pInter: Interfaces; pEstado: Estados;
      pCidade: Cidades);
  end;

var
  Menu: TMenu;

implementation

{$R *.dfm}

procedure TMenu.CidadesClick(Sender: TObject);
begin
  aInter.PDCidades(aCidade, nil);
end;

procedure TMenu.ConhecaObj(pPais: Paises; pInter: Interfaces; pEstado: Estados;
  pCidade: Cidades);
begin
  aInter := pInter;
  oPais := pPais;
  oEstado := pEstado;
  aCidade := pCidade;
  oEstado.setOPais(oPais);
  aCidade.setOEstado(oEstado);
end;

procedure TMenu.EstadosClick(Sender: TObject);
begin
  aInter.PDEstados(oEstado, nil)
end;

procedure TMenu.FormCreate(Sender: TObject);
begin
  aInter := Interfaces.CrieObj;
end;

procedure TMenu.PaisesClick(Sender: TObject);
begin
  aInter.PDPaises(oPais, nil);
end;

procedure TMenu.SairClick(Sender: TObject);
begin
  close;
end;

end.
