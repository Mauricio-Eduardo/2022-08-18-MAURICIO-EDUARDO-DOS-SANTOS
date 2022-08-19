object Cadastro: TCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 372
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 29
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo'
  end
  object lbl_datCad: TLabel
    Left = 241
    Top = 324
    Width = 70
    Height = 13
    Caption = 'Data Cadastro'
  end
  object lbl_datUltAlt: TLabel
    Left = 337
    Top = 324
    Width = 78
    Height = 13
    Caption = #218'ltima Altera'#231#227'o'
  end
  object lbl_usuario: TLabel
    Left = 145
    Top = 324
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object btn_salvar: TButton
    Left = 495
    Top = 328
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 0
    OnClick = btn_salvarClick
  end
  object btn_sair: TButton
    Left = 576
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Sai&r'
    TabOrder = 1
    OnClick = btn_sairClick
  end
  object edt_codigo: TEdit
    Left = 24
    Top = 48
    Width = 73
    Height = 21
    Alignment = taRightJustify
    TabOrder = 2
    Text = '0'
  end
  object edt_datCad: TEdit
    Left = 241
    Top = 343
    Width = 64
    Height = 21
    TabOrder = 3
  end
  object edt_datUltAlt: TEdit
    Left = 337
    Top = 343
    Width = 64
    Height = 21
    TabOrder = 4
  end
  object edt_usuario: TEdit
    Left = 145
    Top = 343
    Width = 64
    Height = 21
    Alignment = taRightJustify
    TabOrder = 5
  end
end
