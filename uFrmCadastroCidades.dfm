inherited FrmCadastroCidades: TFrmCadastroCidades
  Caption = 'Cadastro Cidades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    Left = 10
    ExplicitLeft = 10
    object Label5: TLabel [4]
      Left = 79
      Top = 24
      Width = 63
      Height = 13
      Caption = 'Nome Cidade'
    end
    object Label6: TLabel [5]
      Left = 271
      Top = 24
      Width = 23
      Height = 13
      Caption = 'IBGE'
    end
    object Label7: TLabel [6]
      Left = 343
      Top = 24
      Width = 69
      Height = 13
      Caption = 'C'#243'digo Estado'
    end
    object Label8: TLabel [7]
      Left = 415
      Top = 24
      Width = 63
      Height = 13
      Caption = 'Nome Estado'
    end
    object edt_Cidade: TEdit
      Left = 79
      Top = 43
      Width = 186
      Height = 21
      TabOrder = 6
    end
    object edt_IBGE: TEdit
      Left = 271
      Top = 43
      Width = 66
      Height = 21
      TabOrder = 7
    end
    object edt_codEstado: TEdit
      Left = 343
      Top = 43
      Width = 66
      Height = 21
      TabOrder = 8
    end
    object edt_Estado: TEdit
      Left = 415
      Top = 43
      Width = 162
      Height = 21
      TabOrder = 9
    end
    object btn_Pesquisar: TButton
      Left = 577
      Top = 41
      Width = 61
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 10
      OnClick = btn_PesquisarClick
    end
  end
end
