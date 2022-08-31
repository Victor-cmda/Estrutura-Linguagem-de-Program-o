inherited FrmCadastroPaises: TFrmCadastroPaises
  Caption = 'Cadastro Paises'
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    object Label5: TLabel [4]
      Left = 88
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Nome Pa'#237's'
    end
    object Label6: TLabel [5]
      Left = 252
      Top = 24
      Width = 18
      Height = 13
      Caption = 'DDI'
    end
    object Label7: TLabel [6]
      Left = 342
      Top = 24
      Width = 22
      Height = 13
      Caption = 'Sigla'
    end
    inherited txtCod: TEdit
      NumbersOnly = True
    end
    object edt_Pais: TEdit
      Left = 88
      Top = 43
      Width = 145
      Height = 21
      MaxLength = 55
      TabOrder = 6
    end
    object edt_DDI: TEdit
      Left = 252
      Top = 43
      Width = 61
      Height = 21
      MaxLength = 5
      TabOrder = 7
    end
    object edt_Sigla: TEdit
      Left = 342
      Top = 43
      Width = 61
      Height = 21
      MaxLength = 3
      TabOrder = 8
    end
  end
end
