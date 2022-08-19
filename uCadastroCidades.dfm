inherited CadastroCidades: TCadastroCidades
  Caption = 'Cadastro de Cidades'
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_cidade: TLabel [1]
    Left = 103
    Top = 29
    Width = 39
    Height = 13
    Caption = 'Cidade*'
  end
  object tlb_cep: TLabel [2]
    Left = 267
    Top = 29
    Width = 25
    Height = 13
    Caption = 'CEP*'
  end
  object lbl_codigoPais: TLabel [3]
    Left = 24
    Top = 149
    Width = 19
    Height = 13
    Caption = 'Pais'
  end
  object lbl_estado: TLabel [4]
    Left = 24
    Top = 101
    Width = 39
    Height = 13
    Caption = 'Estado*'
  end
  inherited edt_datCad: TEdit
    TabOrder = 9
  end
  inherited edt_datUltAlt: TEdit
    TabOrder = 10
  end
  inherited edt_usuario: TEdit
    TabOrder = 11
  end
  object edt_cidade: TEdit
    Left = 103
    Top = 48
    Width = 150
    Height = 21
    TabOrder = 3
  end
  object edt_cep: TEdit
    Left = 267
    Top = 48
    Width = 70
    Height = 21
    TabOrder = 4
  end
  object edt_codigo_pais: TEdit
    Left = 24
    Top = 168
    Width = 38
    Height = 21
    TabOrder = 5
  end
  object edt_nomePais: TEdit
    Left = 68
    Top = 168
    Width = 150
    Height = 21
    TabOrder = 6
  end
  object edt_codigo_estado: TEdit
    Left = 24
    Top = 120
    Width = 38
    Height = 21
    TabOrder = 7
  end
  object edt_nomeEstado: TEdit
    Left = 68
    Top = 120
    Width = 150
    Height = 21
    TabOrder = 8
  end
end
