object Menu: TMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 375
  ClientWidth = 751
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
    Left = 32
    Top = 16
    object Cadastro1: TMenuItem
      Caption = '&Cadastro'
      object Cidades1: TMenuItem
        Caption = '&Cidades'
        OnClick = Cidades1Click
      end
      object Estados1: TMenuItem
        Caption = '&Estados'
        OnClick = Estados1Click
      end
      object Paises1: TMenuItem
        Caption = '&Paises'
        OnClick = Paises1Click
      end
    end
    object Lançamentos1: TMenuItem
      Caption = '&Lan'#231'amentos'
    end
    object Utilitários1: TMenuItem
      Caption = '&Utilit'#225'rios'
    end
    object Sair1: TMenuItem
      Caption = 'Sai&r'
      OnClick = Sair1Click
    end
  end
end
