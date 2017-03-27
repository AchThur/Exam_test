object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'V'#233'rifier'
  ClientHeight = 506
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Mliste: TMemo
    Left = 8
    Top = 8
    Width = 145
    Height = 89
    Lines.Strings = (
      'Mliste')
    TabOrder = 0
  end
  object Msaisie: TMemo
    Left = 104
    Top = 120
    Width = 553
    Height = 97
    Lines.Strings = (
      'Msaisie')
    TabOrder = 1
    WantTabs = True
    OnClick = MsaisieClick
  end
  object Minconnue: TMemo
    Left = 24
    Top = 352
    Width = 185
    Height = 89
    Lines.Strings = (
      'Minconnue')
    ReadOnly = True
    TabOrder = 2
  end
  object Bverification: TButton
    Left = 144
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Verifier'
    TabOrder = 3
    OnClick = BverificationClick
  end
end
