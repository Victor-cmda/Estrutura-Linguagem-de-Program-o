object Menu: TMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 322
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 264
    Top = 96
    object Cadastros: TMenuItem
      Caption = '&Cadastros'
      object Paises: TMenuItem
        Caption = '&Pa'#237'ses'
        OnClick = PaisesClick
      end
      object Estados: TMenuItem
        Caption = '&Estados'
        OnClick = EstadosClick
      end
      object Cidades: TMenuItem
        Caption = '&Cidades'
        OnClick = CidadesClick
      end
    end
    object Lancamentos: TMenuItem
      Caption = '&Lan'#231'amentos'
    end
    object Utilitarios: TMenuItem
      Caption = '&Utilit'#225'rios'
    end
    object Sair: TMenuItem
      Caption = '&Sair'
      OnClick = SairClick
    end
  end
end
