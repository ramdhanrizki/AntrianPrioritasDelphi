object Form1: TForm1
  Left = 365
  Top = 136
  Width = 672
  Height = 429
  Caption = 'Program Antrian Bank'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 152
    Top = 64
    Width = 124
    Height = 25
    Caption = 'COUNTER 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 432
    Top = 64
    Width = 124
    Height = 25
    Caption = 'COUNTER 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 120
    Top = 96
    Width = 177
    Height = 89
    Caption = 'Panel1'
    Color = clGray
    TabOrder = 0
    object meja1: TLabel
      Left = 8
      Top = 8
      Width = 161
      Height = 73
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -53
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 400
    Top = 96
    Width = 177
    Height = 89
    Caption = 'Panel1'
    Color = clGray
    TabOrder = 1
    object meja2: TLabel
      Left = 8
      Top = 8
      Width = 161
      Height = 73
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -53
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 80
    Top = 224
    Width = 529
    Height = 97
    Caption = 'USER CONTROL'
    TabOrder = 2
    object Button1: TButton
      Left = 16
      Top = 24
      Width = 137
      Height = 41
      Caption = 'Tambah Antrian Personal'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 168
      Top = 24
      Width = 121
      Height = 41
      Caption = 'Tambah Antrian Bisnis'
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 304
      Top = 24
      Width = 97
      Height = 41
      Caption = 'Panggil Counter 1'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 412
      Top = 24
      Width = 105
      Height = 41
      Caption = 'Panggil Cointer 2'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
end
