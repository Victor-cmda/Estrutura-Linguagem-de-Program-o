inherited FrmCadastroEstados: TFrmCadastroEstados
  Caption = 'Cadastro Estados'
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    object Label5: TLabel [4]
      Left = 79
      Top = 24
      Width = 63
      Height = 13
      Caption = 'Nome Estado'
    end
    object Label6: TLabel [5]
      Left = 241
      Top = 24
      Width = 13
      Height = 13
      Caption = 'UF'
    end
    object Label7: TLabel [6]
      Left = 329
      Top = 24
      Width = 55
      Height = 13
      Caption = 'C'#243'digo Pa'#237's'
    end
    object Label8: TLabel [7]
      Left = 390
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Nome Pa'#237's'
    end
    object edt_Estado: TEdit
      Left = 79
      Top = 43
      Width = 156
      Height = 21
      TabOrder = 6
    end
    object edt_UF: TEdit
      Left = 241
      Top = 43
      Width = 82
      Height = 21
      TabOrder = 7
    end
    object edt_codPais: TEdit
      Left = 329
      Top = 43
      Width = 55
      Height = 21
      TabOrder = 8
    end
    object edt_Pais: TEdit
      Left = 390
      Top = 43
      Width = 181
      Height = 21
      TabOrder = 9
    end
    object btn_Pesquisar: TButton
      Left = 573
      Top = 41
      Width = 61
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 10
      OnClick = btn_PesquisarClick
    end
  end
end
