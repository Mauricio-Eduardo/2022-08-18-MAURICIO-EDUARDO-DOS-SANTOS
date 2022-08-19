inherited CadastroPaises: TCadastroPaises
  Caption = 'Cadastro de Pa'#237'ses'
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_pais: TLabel [0]
    Left = 112
    Top = 29
    Width = 25
    Height = 13
    Caption = 'Pa'#237's*'
  end
  object lbl_sigla: TLabel [1]
    Left = 259
    Top = 29
    Width = 28
    Height = 13
    Caption = 'Sigla*'
  end
  object lbl_ddi: TLabel [2]
    Left = 315
    Top = 29
    Width = 24
    Height = 13
    Caption = 'DDI*'
  end
  object edt_sigla: TEdit [7]
    Left = 271
    Top = 48
    Width = 38
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 3
    TabOrder = 7
  end
  object edt_ddi: TEdit [8]
    Left = 315
    Top = 48
    Width = 38
    Height = 21
    MaxLength = 5
    TabOrder = 8
  end
  object edt_pais: TEdit [9]
    Left = 103
    Top = 48
    Width = 150
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 55
    TabOrder = 2
  end
  inherited edt_codigo: TEdit
    TabOrder = 6
  end
end
