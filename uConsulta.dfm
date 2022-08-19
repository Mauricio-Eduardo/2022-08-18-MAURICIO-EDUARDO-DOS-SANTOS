object Consulta: TConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 478
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edit_chave: TEdit
    Left = 33
    Top = 24
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object btn_pesquisar: TButton
    Left = 232
    Top = 22
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 1
    OnClick = btn_pesquisarClick
  end
  object btn_sair: TButton
    Left = 622
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Sai&r'
    TabOrder = 2
    OnClick = btn_sairClick
  end
  object btn_excluir: TButton
    Left = 541
    Top = 432
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 3
    OnClick = btn_excluirClick
  end
  object btn_alterar: TButton
    Left = 460
    Top = 432
    Width = 75
    Height = 25
    Caption = '&Alterar'
    TabOrder = 4
    OnClick = btn_alterarClick
  end
  object btn_incluir: TButton
    Left = 379
    Top = 432
    Width = 75
    Height = 25
    Caption = '&Incluir'
    TabOrder = 5
    OnClick = btn_incluirClick
  end
  object ListView1: TListView
    Left = 24
    Top = 64
    Width = 673
    Height = 345
    Columns = <>
    TabOrder = 6
  end
end
