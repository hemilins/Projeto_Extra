inherited ConsultaForm: TConsultaForm
  Caption = 'ConsultaForm'
  ClientHeight = 511
  ClientWidth = 984
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 996
  ExplicitHeight = 549
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 470
    Width = 984
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = 6052956
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -1
    ExplicitTop = 475
    object btnExcluir: TSpeedButton
      Left = 904
      Top = 0
      Width = 80
      Height = 41
      Align = alRight
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 910
      ExplicitTop = 5
    end
    object btnSalvar: TSpeedButton
      Left = 824
      Top = 0
      Width = 80
      Height = 41
      Align = alRight
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 818
      ExplicitTop = 5
    end
    object btnCancelar: TSpeedButton
      Left = 744
      Top = 0
      Width = 80
      Height = 41
      Align = alRight
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnCancelarClick
      ExplicitLeft = 818
      ExplicitTop = 5
    end
    object btnEditar: TSpeedButton
      Left = 664
      Top = 0
      Width = 80
      Height = 41
      Align = alRight
      Caption = 'Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 818
      ExplicitTop = 5
    end
    object btNovo: TSpeedButton
      Left = 584
      Top = 0
      Width = 80
      Height = 41
      Align = alRight
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 818
      ExplicitTop = 5
    end
  end
  object CardPanelLista: TCardPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 470
    Align = alClient
    ActiveCard = CardLista
    Caption = 'CardPanelLista'
    TabOrder = 1
    ExplicitTop = 41
    ExplicitWidth = 980
    ExplicitHeight = 428
    object CardLista: TCard
      Left = 1
      Top = 1
      Width = 982
      Height = 468
      Caption = 'CardLista'
      CardIndex = 0
      TabOrder = 0
      ExplicitHeight = 427
      object pnlGrid: TPanel
        Left = 0
        Top = 73
        Width = 982
        Height = 395
        Align = alClient
        TabOrder = 0
        ExplicitTop = 0
        ExplicitHeight = 427
        object gridConsulta: TDBGrid
          Left = 1
          Top = 1
          Width = 980
          Height = 393
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object pnlFiltro: TPanel
        Left = 0
        Top = 0
        Width = 982
        Height = 73
        Align = alTop
        Color = 6052956
        ParentBackground = False
        TabOrder = 1
        ExplicitLeft = -1
        ExplicitTop = -5
        object lblFiltro: TLabel
          Left = 15
          Top = 32
          Width = 40
          Height = 15
          Caption = 'lblFiltro'
        end
        object editFiltro: TEdit
          Left = 61
          Top = 29
          Width = 213
          Height = 23
          TabOrder = 0
        end
      end
    end
    object CardCadastro: TCard
      Left = 1
      Top = 1
      Width = 982
      Height = 468
      Caption = 'CardCadastro'
      CardIndex = 1
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = -4
    end
  end
  object DataSource: TDataSource
    Left = 576
    Top = 296
  end
end
