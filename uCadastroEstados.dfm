inherited CadastroEstados: TCadastroEstados
  Caption = 'Cadastro de Estados'
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_estado: TLabel [1]
    Left = 103
    Top = 29
    Width = 39
    Height = 13
    Caption = 'Estado*'
  end
  object lbl_uf: TLabel [2]
    Left = 259
    Top = 29
    Width = 19
    Height = 13
    Caption = 'UF*'
  end
  object lbl_codigoPais: TLabel [3]
    Left = 323
    Top = 29
    Width = 25
    Height = 13
    Caption = 'Pais*'
  end
  inherited edt_datCad: TEdit
    TabOrder = 7
  end
  inherited edt_datUltAlt: TEdit
    TabOrder = 8
  end
  inherited edt_usuario: TEdit
    TabOrder = 9
  end
  object edt_estado: TEdit
    Left = 103
    Top = 48
    Width = 150
    Height = 21
    TabOrder = 3
  end
  object edt_uf: TEdit
    Left = 259
    Top = 48
    Width = 38
    Height = 21
    TabOrder = 4
  end
  object edt_cod_pais: TEdit
    Left = 323
    Top = 48
    Width = 38
    Height = 21
    TabOrder = 5
  end
  object edt_nomePais: TEdit
    Left = 367
    Top = 48
    Width = 150
    Height = 21
    TabOrder = 6
  end
end
